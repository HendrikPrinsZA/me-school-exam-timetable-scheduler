unit cal_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Grids, ekstra_u, math, Spin,Gauges;

type
    calendar = class(Tobject)
    private
        theArray: TMDarray;{(days,Sessions,Venues,Data) Data:={Ven ID, Test ID, Pupils, [Super1,Super2,Super3...],[Super1,Super2,Super3...],[Super1,Super2,Super3...])}
        theTests: array[0..1000,0..5] of string;
        theVenues: array[0..1000,1..3] of string;
        theSup: array[0..1000,0..4] of string;{ID,Surname,Name,Hours_done,Hours to do}
        sickList: array[0..1000,1..50,1..10,1..4] of string; {Superv, Day, Session, SuperSession}

        theDays: array[0..50] of string;

        iDays: integer;
        iSessions: integer;
        iVenues: integer;
        iSuper: Integer;
        iSuperCount:Integer;
        iTestCount:Integer;
        iHourOfSessions:integer;
        iPeriods: Integer;
        Tekstra: ekstra;

        Loaded:Boolean;
    public
        procedure setCalNull();
        procedure setTests(grid: TstringGrid);
        procedure setVenues(grid: TstringGrid);
        procedure setSup(grid: TstringGrid);
        procedure setSelectTests(grid: TStringGrid);
        procedure getSelectTests(grid: TstringGrid);
        procedure getSelectSup(grid: TstringGrid);
        procedure setSelectSup(grid: TStringGrid);
        procedure setValues(_days:integer; _sessions:integer; _venues:integer; _super:integer; _hours: integer);
        procedure getGridVenue(_day:integer; grid: TStringGrid);
        procedure getGridTest(_day:integer; grid: TStringGrid);
        procedure getGridAll(_day:integer; grid: TStringGrid; lbl: TLabel);
        procedure getGridSup(_day:integer; grid: TStringGrid);
        procedure setCalendar(_day:integer; grid:TStringGrid; gridOne:TStringGrid);
        procedure getCalendar(_day:integer; grid:TStringGrid; gridOne:TStringGrid);
        procedure getDays(temp: Tstrings);
        procedure scratchSupervisors(grid:TstringGrid);
        procedure saveSickList(grid:TStringGrid;iIndex:integer);
        procedure loadSickList(grid:TStringGrid;iIndex:integer);
        procedure setupSickList();
        procedure autogenerateAll();
        procedure generateSupers();
        procedure saveFinal(filename:string);
        procedure loadFinal(filename:string);



        procedure displayTests(redX:TRichEdit);
        procedure displaySupervisors(redX:TRichEdit);

        procedure displayMainSupervisors(redX:TRichEdit);

        procedure displayDetailed(redX:TRichEdit;sMain:string;sSub:string;s1:string;s2:string;s3:string;s4:string);
        procedure displayDetailedSup(redX:TRichEdit;sMain:string;sSub:string;s1:string;s2:string;s3:string;s4:string);

        function supersToString(sLyn:string):string;

        function getTestInfo(ID:string):string;
        function getTestGrade(ID:string):integer;
        function getTestSubject(ID:string):string;
        function getTestTime(ID:string):string;

        function getSupName(sID:string):string;

        function checkSup(sLyn:string;sID:string):Boolean;
        function isThereSup(sLyn:string):Boolean;

        procedure setDayValues(bool:boolean);
        procedure setDayValuesOwn();
        procedure getDayValues(rgp:TRadioGroup);

        procedure getGridSupers(sGrid:TStringGrid;day:Integer);

        function setUpSupers(sGrid: TStringGrid; lst:TListBox):Boolean;

        function deleteSupervisor(sLyn:string; nmr:Integer):string;



        //function getRow(id:string);

    end;
implementation

procedure calendar.displayMainSupervisors(redX:TRichEdit);
var
  grade,day,sess,ven,a:integer;
  sList: array[1..50,1..50,1..6] of string;
  count,dagCount,sessCount,c,b:Integer;
  bool:Boolean;
  sTest:string;
begin

  for a:=1 to 50 do
    for b:=1 to 50 do
      for c:=1 to 6 do
        sList[a,b,c]:='';


  count:=0;
  redX.Clear;
  redX.Paragraph.TabCount:=10;
  redX.Paragraph.Tab[0]:=50;
  redX.Paragraph.Tab[1]:=200;
  redX.Paragraph.Tab[2]:=300;
  redX.Paragraph.Tab[3]:=380;
  redX.Paragraph.Tab[4]:=360;
  redX.Paragraph.Tab[5]:=360;
  redX.Paragraph.Tab[6]:=420;
  redX.Paragraph.Tab[7]:=480;
  redX.Paragraph.Tab[8]:=540;
  redX.Paragraph.Tab[9]:=620;
  redX.Paragraph.Tab[10]:=700;

    for day:=1 to iDays do
    begin
      redX.Paragraph.Alignment:=taCenter;
      redX.Lines.Add('-------------------------------------------------------------------------------------------------------------------------------------------');
      redX.Lines.Add('- - - - - - - - - - - - - - - - - - - - - - - - - - - -');
      if Length(theDays[day-1])<1 then
        redX.Lines.Add('Day '+intToStr(day))
      else
      redX.Lines.Add(theDays[day-1]);
      redX.Paragraph.Alignment:=taLeftJustify;
      redX.Lines.Add('');

      //theArray: TMDarray;{(days,Sessions,Venues,Data) Data:={Ven ID, Test ID, Pupils, [Super1,Super2,Super3...],[Super1,Super2,Super3...],[Super1,Super2,Super3...])}
      //TMDarray = array[1..50,1..10,1..50,0..6] of string;

      for sess:=1 to iSessions do
      begin
         redX.Paragraph.Alignment:=taCenter;

         redX.Lines.Add('Session '+intToStr(sess));
         redX.Paragraph.Alignment:=taLeftJustify;
        redX.Lines.Add('');
        sessCount:=0;
        for a:=1 to 50 do
          for b:=1 to 50 do
            for c:=1 to 6 do
              sList[a,b,c]:='';

        for ven:=1 to 50 do
        begin
          if Length(theArray[day,sess,ven,1])>0 then
          begin
            //Has test
            if sessCount=0 then
            begin
            //Voeg eerste toets
              sessCount:=sessCount+1;
              sList[sessCount,1,1]:=theArray[day,sess,ven,1];
              sList[sessCount,1,2]:=theVenues[ven,1];
              sList[sessCount,1,3]:=theArray[day,sess,ven,3];
              sList[sessCount,1,4]:=theArray[day,sess,ven,4];
              sList[sessCount,1,5]:=theArray[day,sess,ven,5];
              sList[sessCount,1,6]:=theArray[day,sess,ven,6];
            end else
            begin
              bool:=False;
              for a:=1 to sessCount do
              begin
                if sList[a,1,1]=theArray[day,sess,ven,1] then
                begin
                  b:=1;
                  while Length(sList[a,b,1])>0 do
                  begin
                    b:=b+1;
                  end;
                  sList[a,b,1]:=theArray[day,sess,ven,1];
                  sList[sessCount,b,2]:=theVenues[ven,1];
                  sList[sessCount,b,3]:=theArray[day,sess,ven,3];
                  sList[sessCount,b,4]:=theArray[day,sess,ven,4];
                  sList[sessCount,b,5]:=theArray[day,sess,ven,5];
                  sList[sessCount,b,6]:=theArray[day,sess,ven,6];
                  bool:=True;
                  //Break;
                end;
              end;
              if bool=False then
              begin
                sessCount:=sessCount+1;
                sList[sessCount,1,1]:=theArray[day,sess,ven,1];
                sList[sessCount,1,2]:=theVenues[ven-1,1];
                sList[sessCount,1,3]:=theArray[day,sess,ven,3];
                sList[sessCount,1,4]:=theArray[day,sess,ven,4];
                sList[sessCount,1,5]:=theArray[day,sess,ven,5];
                sList[sessCount,1,6]:=theArray[day,sess,ven,6];
              end;
            //Soek of dieselfde toets daar is
            end;
          end;
        end;

        if sessCount>0 then
        begin
          for a:=1 to sessCount do
          begin
            redX.Lines.Add('Gr.'+intToStr(getTestGrade(sList[a,1,1]))+'-'+getTestSubject(sList[a,1,1])+'  ('+getTestTime(sList[a,1,1])+'min)');
            b:=1;
            while ((Length(sList[a,b,1])>0) AND (b<51)) do
            begin
              sTest:=#9+sList[a,b,2];

              for c:=3 to 6 do
              begin
                if c=3 then
                begin
                  if Length(sList[a,b,c])>10 then
                  if (isThereSup(sList[a,b,c])) then
                    sTest:=sTest+#9+'Part '+intToStr(c-2)+': '+supersToString(sList[a,b,c])+#10;
                end else
                begin
                  if Length(sList[a,b,c])>10 then
                  if (isThereSup(sList[a,b,c])) then
                    sTest:=sTest+#9+#9+'Part '+intToStr(c-2)+': '+supersToString(sList[a,b,c])+#10;
                end;



              end;

              b:=b+1;
              redX.Lines.Add(sTest);
            end;

          end;
        end;


      end;

    end ;
end;

function calendar.getSupName(sID:string):string;
var
sup:Integer;
begin
  for sup:=1 to iSuperCount do
  begin
    if theSup[sup,0]=sID then
    begin
      result:=sID+') '+theSup[sup,1]+', '+theSup[sup,2];
      Break;
    end;
  end;
  //result:='';
end;


function calendar.supersToString(sLyn:string):string;
var
  a:Integer;
  StringList: TStringList;
  sNew:string;
  val:Boolean;
begin
  val:=True;
  StringList := TStringList.Create();
  StringList.Text := StringReplace(sLyn, ',', #13#10, [rfReplaceAll]);
  sNew:='';
  for a:=0 to 9 do
  begin
    if Tekstra.isNumber(StringList[a]) then
    begin
      sNew:=sNew+getSupName(StringList[a])+'; ';
    end;
  end;
  result:=sNew;
  //result:=sLyn;
end;


function calendar.deleteSupervisor(sLyn:string; nmr:Integer):string;
var
  a:Integer;
  example: string;
  iNmrs:array[1..10] of Integer;
  StringList: TStringList;
  sNew:string;
  val:Boolean;
begin
  val:=True;
  StringList := TStringList.Create();
  StringList.Text := StringReplace(sLyn, ',', #13#10, [rfReplaceAll]);
  for a:=0 to 9 do
  begin
    if Tekstra.isNumber(StringList[a]) then
      iNmrs[a+1]:=StrToInt(StringList[a])
    else iNmrs[a+1]:=0;
  end;
  iNmrs[nmr]:=0;

  for a:=1 to 10 do
  begin
    if (iNmrs[a]=0) then
      sNew:=sNew+','
    else
      sNew:=sNew+intToStr(iNmrs[a])+',';
  end;
  if val=True then
    result := sNew
  else
    Result := sLyn;
end;



function calendar.setUpSupers(sGrid: TStringGrid; lst:TListBox):Boolean;
var
  a,b,iLength,c: Integer;
  sLyn: string;
begin

  iLength := 40;
  lst.Clear;
  if sGrid.Cells[1,0]='Surname' then
  begin
  ///Superv...
    lst.TabWidth:=100;
    for a:=1 to sGrid.RowCount-2 do
    begin
      sLyn := trim(sGrid.Cells[0,a])+') '+trim(sGrid.cells[1,a])+ ' '+trim(sGrid.cells[2,a]);
      sLyn := sLyn +#9+ '['+sGrid.cells[3,a]+'/'+sGrid.cells[4,a]+']';
      lst.Items.Add(sLyn);
    end;
  end;

end;

procedure calendar.getGridSupers(sGrid:TStringGrid;day:Integer);
var
  sess,sessie,ven,sup,iTest,part:Integer;
  sLyn:string;
  hasTest:Boolean;
begin
      for sess:=0 to sGrid.RowCount do
      begin
        for sessie:=0 to sGrid.ColCount do
        begin
          sGrid.Cells[sessie,sess]:='';
          end
      end;
     iTest:=1;
     part:=1;
     sGrid.ColCount:=(iSessions*iPeriods)+4;
     sGrid.ColWidths[0]:=20;
     sGrid.ColWidths[1]:=300;
     sGrid.ColWidths[2]:=20;
     sGrid.ColWidths[3]:=100;
     for ven:=4 to sGrid.ColCount-1 do
     begin
      sGrid.ColWidths[ven]:=100;
     end;

    for sess:=1 to iSessions do
    begin
      hasTest:=False;
      for ven:=1 to iVenues do
      begin
        if (Length(theArray[day,sess,ven,1])>0) then
        begin
          iTest:=iTest+1;
          sGrid.Cells[0,iTest]:=theArray[day,sess,ven,1];
          sGrid.Cells[1,iTest]:=getTestInfo(theArray[day,sess,ven,1]);

          sGrid.Cells[2,iTest]:=IntToStr(ven);
          sGrid.Cells[3,iTest]:=theVenues[ven,1];

          sGrid.Cells[((sess-1)*(iPeriods))+4,0]:='Session '+intToStr(sess);
          for sup:=0 to iPeriods-1 do
          begin
            sGrid.Cells[(((sess-1)*(iPeriods))+4)+sup,1]:='Part '+intToStr(sup+1);
            if (Length(theArray[day,sess,ven,1])>0) then
            begin
              sGrid.Cells[(((sess-1)*(iPeriods))+4)+sup,iTest]:=theArray[day,sess,ven,3+sup];
            end else sGrid.Cells[(((sess-1)*(iPeriods))+4)+sup,iTest]:='X';
          end;
          hasTest:=True;
        end;
      end;
    end;
    sGrid.RowCount:=iTest+1;
    if sGrid.ColCount>4 then
    sGrid.FixedCols:=4;
    if sGrid.RowCount>2 then
    sGrid.FixedRows:=2;

    sGrid.Cells[0,0]:='ID';
    sGrid.Cells[1,0]:='Test Info';
    sGrid.Cells[2,0]:='ID';
    sGrid.Cells[3,0]:='Venue';
end;

procedure calendar.displayDetailedSup(redX:TRichEdit;sMain:string;sSub:string;s1:string;s2:string;s3:string;s4:string);
var
  grade,day,sess,ven,a,b,iTel:integer;
  sList: array[1..50,1..6] of string;
  sSessie:array[1..10] of string;
  count,dagCount,sessCount:Integer;
  bool:Boolean;
  sLyn,sSup,sAnt:string;
  iPos:Integer;
begin

  sSessie[1]:=s1;
  sSessie[2]:=s2;
  sSessie[3]:=s3;
  sSessie[4]:=s4;

  sSessie[5]:='5';
  sSessie[6]:='6';
  sSessie[7]:='7';
  sSessie[8]:='8';
  sSessie[9]:='9';
  sSessie[10]:='10';

  count:=0;
  redX.Clear;
  redX.Paragraph.TabCount:=10;
  redX.Paragraph.Tab[0]:=50;
  redX.Paragraph.Tab[1]:=120;
  redX.Paragraph.Tab[2]:=300;
  redX.Paragraph.Tab[3]:=380;
  redX.Paragraph.Tab[4]:=440;
  redX.Paragraph.Tab[5]:=500;
  redX.Paragraph.Tab[6]:=580;
  redX.Paragraph.Tab[7]:=660;
  redX.Paragraph.Tab[8]:=740;
  redX.Paragraph.Tab[9]:=880;
  redX.Paragraph.Tab[10]:=1000;

  for grade:=8 to 12 do
  begin
    sessCount:=0;
    redX.Paragraph.Alignment:=taCenter;
    redX.Lines.Add('-------------------------------------------------------------------------------------------------------------------------------------------');
    redX.Lines.Add('- - - - - - - - - - - - - - - - - - - - - - - - - - - -');
    redX.Lines.Add(sMain);
    redX.Lines.Add('Grade '+intToStr(grade));
    redX.Paragraph.Alignment:=taLeftJustify;
    if iSessions=1 then
    begin
      redX.Lines.Add('Session 1: '+s1);
    end else if iSessions=2 then
    begin
      redX.Lines.Add('Session 1: '+s1);
      redX.Lines.Add('Session 2: '+s2);
    end else if iSessions=3 then
    begin
      redX.Lines.Add('Session 1: '+s1);
      redX.Lines.Add('Session 2: '+s2);
      redX.Lines.Add('Session 3: '+s3);
    end else if iSessions=4 then
    begin
      redX.Lines.Add('Session 1: '+s1);
      redX.Lines.Add('Session 2: '+s2);
      redX.Lines.Add('Session 3: '+s3);
      redX.Lines.Add('Session 4: '+s4);
    end;
    redX.Lines.Add('');
    redX.Lines.Add(sSub);

    redX.Lines.Add('-Date-'+#9+'-Session-'+#9+'-Test-'+#9+'-Test Time-'+#9+'-Venue/Supervisors-');

    for day:=1 to iDays do
    begin
      dagCount:=0;
      for sess:=1 to iSessions do
      begin
        for ven:=1 to iVenues do
        begin
          if (Length(theArray[day,sess,ven,1])>0) then
          begin
            //There is a test
            if (getTestGrade(theArray[day,sess,ven,1])=grade) then //The test is of the grade
            begin
              bool:=False;
              dagCount:=dagCount+1;
              sessCount:=sessCount+1;
              if (count=0) then
              begin
                for a:=1 to 50 do
                begin
                  sList[a,1]:='';
                  sList[a,2]:='';
                end;
                count:=count+1;
                sList[count,1]:=theArray[day,sess,ven,1];
                sList[count,2]:=theVenues[ven,1];

                sList[count,3]:=theArray[day,sess,ven,3];
                sList[count,4]:=theArray[day,sess,ven,4];
                sList[count,5]:=theArray[day,sess,ven,5];
                sList[count,6]:=theArray[day,sess,ven,6];
              end else
              begin
                for a:=1 to count do begin
                  if (sList[a,1]=theArray[day,sess,ven,1]) then
                  begin
                    bool:=True;
                    Break;
                  end;
                end;
                if bool=True then
                begin
                  sList[a,2]:=sList[a,2]+', '+theVenues[ven,1];

                  sList[count,3]:=sList[count,3]+';'+theArray[day,sess,ven,3];
                  sList[count,4]:=sList[count,4]+';'+theArray[day,sess,ven,4];
                  sList[count,5]:=sList[count,5]+';'+theArray[day,sess,ven,5];
                  sList[count,6]:=sList[count,6]+';'+theArray[day,sess,ven,6];
                end else
                begin
                  count:=count+1;
                  sList[count,1]:=theArray[day,sess,ven,1];
                  sList[count,2]:=theVenues[ven,1];

                  sList[count,3]:=theArray[day,sess,ven,3];
                  sList[count,4]:=theArray[day,sess,ven,4];
                  sList[count,5]:=theArray[day,sess,ven,5];
                  sList[count,6]:=theArray[day,sess,ven,6];
                end;
              end;
            end;
          end;
        end;
        if count>0 then
        begin
          redX.Lines.Add(theDays[day-1]+#9+intToStr(sess));
          for a:=1 to count do
          begin
            redX.Lines.Add(#9+#9+getTestSubject(sList[a,1])+#9+getTestTime(sList[a,1])+'min'+#9+sList[a,2]);
            for b:=3 to (iPeriods+3) do
            begin
              iTel:=0;
              sAnt:='';
              sLyn:=sList[a,b]+';';
              iPos:=Pos(';',sLyn);
              while (iPos>11) do
              begin
                iTel:=iTel+1;
                sSup:=Copy(sLyn,0,iPos-1);
                Delete(sLyn,1,iPos);

                //ShowMessage(sSup);
                iPos:=Pos(';',sLyn);
                if Length(sSup)>0 then
                begin
                  if (isThereSup(sSup)=True) then
                  begin
                    sAnt:=sAnt+supersToString(sSup);
                  end;
                end;
              end;
              if iTel>0 then
                redX.Lines.Add(#9+#9+#9+'Part '+intToStr(b-2)+#9+ sAnt);
            end;
            redX.Lines.Add('');

          end;
            
        end else
        begin

        end;
        count:=0;
      end;
      if DagCount>0 then
        begin
          redX.Lines.Add('...............................................................................................................................................................................................................................................................');
        end else
    end;


    if sessCount=0 then
    begin
      redX.Lines.Add('<NO TEST>'#9+'-'+#9+'-'+#9+'-'+#9+'-');
    end ;

  end;

end;


procedure calendar.displayDetailed(redX:TRichEdit;sMain:string;sSub:string;s1:string;s2:string;s3:string;s4:string);
var
  //////////////////HIER
  grade,day,sess,ven,a:integer;
  sList: array[1..50,1..2] of string;
  sSessie:array[1..10] of string;
  count,dagCount,sessCount:Integer;
  bool:Boolean;
begin

  sSessie[1]:=s1;
  sSessie[2]:=s2;
  sSessie[3]:=s3;
  sSessie[4]:=s4;

  sSessie[5]:='5';
  sSessie[6]:='6';
  sSessie[7]:='7';
  sSessie[8]:='8';
  sSessie[9]:='9';
  sSessie[10]:='10';

  count:=0;
  redX.Clear;
  redX.Paragraph.TabCount:=10;
  redX.Paragraph.Tab[0]:=50;
  redX.Paragraph.Tab[1]:=120;
  redX.Paragraph.Tab[2]:=300;
  redX.Paragraph.Tab[3]:=380;
  redX.Paragraph.Tab[4]:=360;
  redX.Paragraph.Tab[5]:=360;
  redX.Paragraph.Tab[6]:=420;
  redX.Paragraph.Tab[7]:=480;
  redX.Paragraph.Tab[8]:=540;
  redX.Paragraph.Tab[9]:=620;
  redX.Paragraph.Tab[10]:=700;

  for grade:=8 to 12 do
  begin
    sessCount:=0;
    redX.Paragraph.Alignment:=taCenter;
    redX.Lines.Add('-------------------------------------------------------------------------------------------------------------------------------------------');
    redX.Lines.Add('- - - - - - - - - - - - - - - - - - - - - - - - - - - -');
    redX.Lines.Add(sMain);
    redX.Lines.Add('Grade '+intToStr(grade));
    redX.Paragraph.Alignment:=taLeftJustify;
    if iSessions=1 then
    begin
      redX.Lines.Add('Session 1: '+s1);
    end else if iSessions=2 then
    begin
      redX.Lines.Add('Session 1: '+s1);
      redX.Lines.Add('Session 2: '+s2);
    end else if iSessions=3 then
    begin
      redX.Lines.Add('Session 1: '+s1);
      redX.Lines.Add('Session 2: '+s2);
      redX.Lines.Add('Session 3: '+s3);
    end else if iSessions=4 then
    begin
      redX.Lines.Add('Session 1: '+s1);
      redX.Lines.Add('Session 2: '+s2);
      redX.Lines.Add('Session 3: '+s3);
      redX.Lines.Add('Session 4: '+s4);
    end;
    redX.Lines.Add('');
    redX.Lines.Add(sSub);

    redX.Lines.Add('-Date-'+#9+'-Session-'+#9+'-Test-'+#9+'-Test Time-'+#9+'-Venue-');

    for day:=1 to iDays do
    begin
      dagCount:=0;
      for sess:=1 to iSessions do
      begin
        for ven:=1 to iVenues do
        begin
          if (Length(theArray[day,sess,ven,1])>0) then
          begin
            //There is a test
            if (getTestGrade(theArray[day,sess,ven,1])=grade) then //The test is of the grade
            begin
              bool:=False;
              dagCount:=dagCount+1;
              sessCount:=sessCount+1;
              if (count=0) then
              begin
                for a:=1 to 50 do
                begin
                  sList[a,1]:='';
                  sList[a,2]:='';
                end;
                count:=count+1;
                sList[count,1]:=theArray[day,sess,ven,1];
                sList[count,2]:=theVenues[ven,1];
              end else
              begin
                for a:=1 to count do begin
                  if (sList[a,1]=theArray[day,sess,ven,1]) then
                  begin
                    bool:=True;
                    Break;
                  end;
                end;
                if bool=True then
                begin
                  sList[a,2]:=sList[a,2]+', '+theVenues[ven,1];
                end else
                begin
                  count:=count+1;
                  sList[count,1]:=theArray[day,sess,ven,1];
                  sList[count,2]:=theVenues[ven,1];
                end;
              end;
            end;
          end;
        end;
        if count>0 then
        begin
          redX.Lines.Add(theDays[day-1]+#9+intToStr(sess));
          for a:=1 to count do
            redX.Lines.Add(#9+#9+getTestSubject(sList[a,1])+#9+getTestTime(sList[a,1])+'min'+#9+sList[a,2]);
        end else
        begin

        end;
        count:=0;
      end;
      if DagCount>0 then
        begin
          redX.Lines.Add('...............................................................................................................................................................................................................................................................');
        end else
    end;
    if sessCount=0 then
    begin
      redX.Lines.Add('<NO TEST>'#9+'-'+#9+'-'+#9+'-'+#9+'-');
    end ;
  end;
end;

procedure calendar.getDayValues(rgp:TRadioGroup);
var
  day:Integer;
begin
  for day:=0 to rgp.Items.Count-1 do
  begin
    rgp.Items.Strings[day]:=theDays[day];
  end;
end;

procedure calendar.setDayValuesOwn();
var
  day:Integer;
  sLyn:string;
begin
  for day:=0 to iDays-1 do
    begin
      sLyn:='';
      while (Length(sLyn)<1) do
      begin
        sLyn:=InputBox('Setting up display of days','Enter the alias of day number '+intToStr(day+1),'');
      end;
      theDays[day]:=sLyn;
    end;
end;

procedure calendar.setDayValues(bool:boolean);
var
day:Integer;
sLyn:string;
begin

  if (bool=False) then
  begin
  for day:=0 to iDays-1 do
  begin
    theDays[day]:='Day '+intToStr(day);
  end;
  
  if (messagedlg('Setting up display of days'+#10+'Do you want to create an alias fo each day?'+ #10+
  'If not the days will be displayed as numbers',mtConfirmation,[mbYes,mbNo],0)=6) then
  begin
    for day:=0 to iDays-1 do
    begin
      sLyn:='';
      while (Length(sLyn)<1) do
      begin
        sLyn:=InputBox('Setting up display of days','Enter the alias of day number '+intToStr(day+1),'');
      end;
      theDays[day]:=sLyn;
    end;
  end;
  end;
end;

function calendar.isThereSup(sLyn:string):Boolean;
var
  a:Integer;
  StringList: TStringList;
  bool:Boolean;
begin
  bool:=False;
  StringList := TStringList.Create();
  StringList.Text := StringReplace(sLyn, ',', #13#10, [rfReplaceAll]);
  for a:=0 to 9 do
  begin
    if Tekstra.isNumber(StringList[a]) then
    begin
      bool:=True;
      Break;
    end;
  end;
  result:=bool;
end;

function calendar.checkSup(sLyn:string;sID:string):Boolean;
var
  a:Integer;
  StringList: TStringList;
begin
  StringList := TStringList.Create();
  StringList.Text := StringReplace(sLyn, ',', #13#10, [rfReplaceAll]);
  for a:=0 to 9 do
  begin
    if StringList[a]=sID then
    begin
      result:=true;
      Break;
    end;
  end;
end;




procedure calendar.displaySupervisors(redX:TRichEdit);
var
  a,sup,day,sess,b,ven,supCount:Integer;
  supInfo,sLyn:string;
begin
  redX.Clear;
  redX.TabStop:=True;
  redX.Paragraph.TabCount:=10;
  redX.Paragraph.Tab[0]:=10;
  redX.Paragraph.Tab[1]:=30;
  redX.Paragraph.Tab[2]:=100;
  redX.Paragraph.Tab[3]:=150;
  redX.Paragraph.Tab[4]:=300;
  redX.Paragraph.Tab[5]:=250;
  redX.Paragraph.Tab[6]:=300;
  redX.Paragraph.Tab[7]:=350;
  for sup:=1 to iSuperCount-1 do
  begin
    supCount:=0;
    //theSup: array[0..1000,0..4] of string;{ID,Surname,Name,Hours_done,Hours to do}
    redX.Lines.Add('____________________________________________________________________________');
    supInfo:='==='+theSup[sup,0]+') '+#9+theSup[sup,1]+', '+theSup[sup,2]+'==='+#9+#9+' ['+theSup[sup,3]+'/'+theSup[sup,4]+']';
    redX.Lines.Add(supInfo);
    sLyn:=#9+#9+'-Day-'+#9+'-Session-'+#9+'-Venue-'+#9+'-Test Info-';
    redX.Lines.Add(sLyn);
    for day:=1 to iDays do
    begin
      for sess:=1 to iSessions do
      begin
        for ven:=1 to iVenues do
        begin
          for b:=3 to 6 do
          begin
            if checkSup(theArray[day,sess,ven,b],theSup[sup,0]) then
            begin
              sLyn:=#9+#9;

              if Length(theDays[day-1])<1 then
                sLyn:=sLyn+intToStr(day)
              else
                sLyn:=sLyn+theDays[day-1];


              sLyn:=sLyn+#9+intToStr(sess)+'-'+intToStr(b-2)+#9+theVenues[ven,1]+#9+getTestInfo(theArray[day,sess,ven,1]);
              redX.Lines.Add(sLyn);
              supCount:=supCount+1;
            end;
          end;
        end;
      end;
    end;
    if supCount=0 then
    begin
     // redX.Paragraph.Alignment:=taCenter;
      redX.Lines.Add(#9+#9+'<Never placed>'+#9+'-'+#9+'-'+#9+'-');
      //redX.Paragraph.alignment:=taLeftJustify;
    end;
  end;
end;

function calendar.getTestSubject(ID:string):string;
var
  a:Integer;
  sLyn:string;
begin
  sLyn:='';
  for a:=0 to iTestCount do
  begin
    if (theTests[a,0] = ID) then
    begin
      Result:=theTests[a,2];
      Break;
    end;
  end;
end;

function calendar.getTestGrade(ID:string):integer;
var
  a:Integer;
  sLyn:string;
begin
  sLyn:='';
  for a:=0 to iTestCount do
  begin
    if (theTests[a,0] = ID) then
    begin
      sLyn:=theTests[a,1];
      if Tekstra.isNumber(sLyn) then
        Result:=strToInt(sLyn)
      else
        Result:=0;
      Break;
    end;
  end;
end;

function calendar.getTestTime(ID:string):string;
var
  a:Integer;
  sLyn:string;
begin
  sLyn:='';
  for a:=0 to iTestCount do
  begin
    if (theTests[a,0] = ID) then
    begin
      Result:=theTests[a,4];
      Break;
    end;
  end;
end;


function calendar.getTestInfo(ID:string):string;
var
  a:Integer;
  sLyn:string;
begin
  sLyn:='';
  for a:=0 to iTestCount do
  begin
    if (theTests[a,0] = ID) then
    begin
      sLyn:='Grade: '+theTests[a,1]+', '+theTests[a,2]+' - ('+theTests[a,4]+'min)';
      Result:=sLyn;
      Break;
    end;
  end;
end;


procedure calendar.displayTests(redX:TRichEdit);
var
  day,sess,ven:Integer;
  sLyn:string;
  hasTest:Boolean;
begin
  redX.Clear;
  redX.TabStop:=True;
  redX.Paragraph.TabCount:=10;
  redX.Paragraph.Tab[0]:=20;
  redX.Paragraph.Tab[1]:=70;
  redX.Paragraph.Tab[2]:=300;
  redX.Paragraph.Tab[3]:=500;
  for day:=1 to iDays do
  begin
    redX.Lines.Add('===Day: '+intToStr(day)+'===');
    for sess:=1 to iSessions do
    begin
      redX.Lines.Add(#9+'- -Session: '+intToStr(sess)+'- -');
      redX.Lines.Add(#9+#9+'-Test-'+#9+'-Venue-'+#9+'-Student Count-');
      hasTest:=False;
      for ven:=1 to iVenues do
      begin
        if (Length(theArray[day,sess,ven,1])>0) then
        begin
          redX.Lines.Add(#9+#9+getTestInfo(theArray[day,sess,ven,1])+#9+theVenues[ven,1]+#9+theArray[day,sess,ven,2]);
          hasTest:=True;
        end;
      end;
      if hasTest=False then
        redX.Lines.Add(#9+#9+'<None>'+#9+'-'+#9+'-');

    end;
  end;
end;


procedure calendar.loadFinal(filename:string);
var
Myler: TextFile;
sLyn,test,venue,supervisor: string;
iPos:Integer;
iVenue,iCol,iRow,iDay,a,b,c:Integer;
begin
  //MessageDlg(dlgLoad.FileName,mtInformation,[mbOK],0);
  If FileExists(FileName)=False then
    MessageDlg('File not found',mtError,[mbOK],0)
  else begin
    AssignFile(Myler,FileName);
    Reset(Myler);
    Readln(Myler,sLyn);
    Readln(Myler,sLyn);
    Loaded:=True;

    for iDay:=1 to 50 do
    begin
      Readln(Myler,sLyn);
      for a:=1 to 10 do
      begin
          for b:=1 to 50 do
          begin
            for c:=0 to 6 do
              begin
                //sLyn:= sLyn+theArray[iDay,a,b,c]+'#';
                iPos:=Pos('#',sLyn);
                test:=Copy(sLyn,0,iPos-1);
                Delete(sLyn,1,iPos);
                theArray[iDay,a,b,c]:=test;
              end;
          end;
      end;
    end;
     {theTests: array[0..1000,0..5] of string;
              theVenues: array[0..1000,1..3] of string;
              theSup: array[0..1000,0..4] of string;{ID,Surname,Name,Hours_done,Hours to do
              //sickList: array[0..1000,1..50,1..10,1..4] of string; }
            for a:=0 to 1000 do
            begin
              Readln(Myler,sLyn);
              for b:=0 to 5 do
              begin
                iPos:=Pos('#',sLyn);
                test:=Copy(sLyn,0,iPos-1);
                Delete(sLyn,1,iPos);
                theTests[a,b]:=test;
              end;
            end;
            for a:=0 to 1000 do
            begin
              Readln(Myler,sLyn);
              for b:=1 to 3 do
              begin
                iPos:=Pos('#',sLyn);
                test:=Copy(sLyn,0,iPos-1);
                Delete(sLyn,1,iPos);
                theVenues[a,b]:=test;
              end;
            end;
            for a:=0 to 1000 do
            begin
              Readln(Myler,sLyn);
              for b:=0 to 4 do
              begin
                iPos:=Pos('#',sLyn);
                test:=Copy(sLyn,0,iPos-1);
                Delete(sLyn,1,iPos);
                theSup[a,b]:=test;
              end;
            end;
            for a:=0 to 1000 do
            begin
              Readln(Myler,sLyn);
              for b:=1 to 50 do
              begin
                for c:=1 to 10 do
                begin
                  for iDay:=1 to 4 do
                  begin
                    //sickList: array[0..1000,1..50,1..10,1..4] of string;
                    iPos:=Pos('#',sLyn);
                    test:=Copy(sLyn,0,iPos-1);
                    Delete(sLyn,1,iPos);
                    sickList[a,b,c,iDay]:=test;
                  end;
                end;
              end;
            end;

            for a:=0 to 50 do
            begin
              Readln(Myler,sLyn);
              theDays[a]:=sLyn;
            end;
    CloseFile(Myler);
    MessageDlg('File loaded',mtInformation,[mbOK],0);
  end;
end;


procedure calendar.saveFinal(filename:string);
var
sLyn: string;
myLer: TextFile;
a,b,c,_Days,_Sessions,_Hours: integer;
iDay,iRow,iCol:Integer;
begin
        _Days:=iDays;
        _Sessions:=iSessions;
        _Hours:=iHourOfSessions;
        if NOT FileExists(filename) then
          begin
            MessageDlg('Unexpected error',mtError,[mbOK],0);
          end else begin
             //The file exists
                //File appended
                assignFile(myLer,filename);
                append(myler);

          //Save main Grid TMDarray = array[1..50,1..10,1..50,0..6] of string; {(days,Sessions,Venues,Data) }
            for iDay:=1 to 50 do
            begin
              sLyn:='';
              for a:=1 to 10 do
              begin
                for b:=1 to 50 do
                begin
                  for c:=0 to 6 do
                  begin
                    sLyn:= sLyn+theArray[iDay,a,b,c]+'#';
                  end;
                end;
              end;
              Writeln(Myler,sLyn);
            end;
             {theTests: array[0..1000,0..5] of string;
              theVenues: array[0..1000,1..3] of string;
              theSup: array[0..1000,0..4] of string;{ID,Surname,Name,Hours_done,Hours to do
              //sickList: array[0..1000,1..50,1..10,1..4] of string; }
            for a:=0 to 1000 do
            begin
              sLyn:='';
              for b:=0 to 5 do
              begin
                sLyn:=sLyn+theTests[a,b]+'#';
              end;
              Writeln(Myler,sLyn);
            end;

            for a:=0 to 1000 do
            begin
              sLyn:='';
              for b:=1 to 3 do
              begin
                sLyn:=sLyn+theVenues[a,b]+'#';
              end;
              Writeln(Myler,sLyn);
            end;

            for a:=0 to 1000 do
            begin
              sLyn:='';
              for b:=0 to 4 do
              begin
                sLyn:=sLyn+theSup[a,b]+'#';
              end;
              Writeln(Myler,sLyn);
            end;

            for a:=0 to 1000 do
            begin
              sLyn:='';
              for b:=1 to 50 do
              begin
                for c:=1 to 10 do
                begin
                  for iDay:=1 to 4 do
                  begin
                    //sickList: array[0..1000,1..50,1..10,1..4] of string;
                    sLyn:=sLyn+sickList[a,b,c,iDay]+'#';
                  end;
                end;
              end;
              Writeln(Myler,sLyn);
            end;

            for a:=0 to 50 do
            begin
              sLyn:=theDays[a];
              Writeln(Myler,sLyn);
            end;
            closefile(myler);
          end;
end;


procedure calendar.generateSupers();
begin
///
end;





procedure calendar.autogenerateAll();
var
iTestTell,iSupTell,iRandTest,iDag,iSessie,iLokaal,WhileCheck1,WhileCheck2,WhileCheck3:Integer;
placed: Boolean;
rRand:Double;
testPupils,iPlaced:Integer;
begin

  iDag:=1;
  iSessie:=1;
  iLokaal:=1;
  WhileCheck1:=1;
  WhileCheck2:=1;

  //ShowMessage(IntToStr(iSuperCount));
  //ShowMessage(IntToStr(iSessions));
  for iTestTell:=0 to iTestCount do
  begin
    placed:=False;
    iRandTest:=RandomRange(1,iTestCount+1);
    WhileCheck3:=1;
    while ((WhileCheck3<10000000) AND (StrToInt(theTests[iRandTest,3])<=0)) do
    begin
      WhileCheck3:=WhileCheck3+1;
      iRandTest:=RandomRange(1,iTestCount+1);
    end;


    WhileCheck1:=1;
    testPupils:=StrToInt(theTests[iRandTest,3]);
    while ((placed=False) AND (WhileCheck1<10000000)) do
    begin
      WhileCheck1:=WhileCheck1+1;
      WhileCheck2:=1;
      while((testPupils>0) AND (WhileCheck2<10000000)) do
      begin
        WhileCheck2:=WhileCheck2+1;
        if ((Tekstra.isNumber(theArray[iDag,iSessie,iLokaal,2])) AND (StrToInt(theArray[iDag,iSessie,iLokaal,2])=0) AND (theArray[iDag,iSessie,iLokaal,1]=''))  then
        begin
          theArray[iDag,iSessie,iLokaal,1]:=IntToStr(iRandTest);
          if Tekstra.isNumber(theVenues[iLokaal,2]) then
          begin
            testPupils:=testPupils-strToInt(theVenues[iLokaal,2]);
            iLokaal:=iLokaal+1;
          end;
        end;
        if (iLokaal>iVenues) then
        begin
          iLokaal:=1;
          iSessie:=iSessie+1;
        end;
        if (iSessie>iSessions) then
        begin
          iSessie:=1;
          iDag:=iDag+1;
        end;
      end;
      if (iLokaal>iVenues) then
      begin
          iLokaal:=1;
          iSessie:=iSessie+1;
      end;
      if (iSessie>iSessions) then
      begin
          iSessie:=1;
          iDag:=iDag+1;
      end;
      theTests[iRandTest,3]:='0';
      if testPupils<=0 then
         placed:=True;
    end;
  end;
end;

procedure calendar.setupSickList();
var
a,day,sess,sup:Integer;
begin
  for a:=0 to 1000 do
    for day:=1 to 50 do
      for sess:=1 to 10 do
        for sup:=1 to 4 do
          sickList[a,day,sess,sup]:='';
end;


procedure calendar.saveSickList(grid:TStringGrid;iIndex:integer);
var
day,sess,sup:Integer;
begin
  //sickList: array[0..1000,1..50,1..10,1..4] of string; {Superv, Day, Session, SuperSession}
  for day:=1 to iDays do
  begin
    for sess:=1 to iSessions do
    begin
      for sup:=1 to iSuper do
      begin
        sickList[iIndex,day,sess,sup]:=grid.Cells[(((sess)*iSuper)-(iSuper))+sup,day+1];
      end;
    end;
  end;
end;

procedure calendar.loadSickList(grid:TStringGrid;iIndex:integer);
var
day,sess,sup:Integer;
begin
  //sickList: array[0..1000,1..50,1..10,1..4] of string; {Superv, Day, Session, SuperSession}
  for day:=2 to grid.RowCount do
  begin
    for sess:=1 to grid.ColCount do
    begin
      grid.Cells[sess,day]:='';
    end;
  end;

  for day:=1 to iDays do
  begin
    for sess:=1 to iSessions do
    begin
      for sup:=1 to iSuper do
      begin
        grid.Cells[(((sess)*iSuper)-(iSuper))+sup,day+1]:=sickList[iIndex,day,sess,sup];
      end;
    end;
  end;
end;


procedure calendar.scratchSupervisors(grid:TstringGrid);
begin
/////////
end;


procedure calendar.setSup(grid: TstringGrid);
var
a,b,c : integer;
begin
    a:=grid.RowCount+1;
    iSuperCount:=a-2;
    for b:=0 to a do
    begin
        //for c:=0 to 4 do
        begin
            theSup[b,0]:=grid.Cells[0,b];
            theSup[b,1]:=grid.Cells[1,b];
            theSup[b,2]:=grid.Cells[2,b];
            theSup[b,3]:='0';
            theSup[b,4]:=grid.Cells[4,b];
        end;
    end;
    theSup[0,3]:='Hours done';
    theSup[0,4]:='Hours to do';
    theSup[0,0]:='ID';
end;

procedure calendar.setSelectTests(grid: TstringGrid);
var
a,b,c : integer;
begin
    if (Length(grid.Cells[1,1])>0) then
    begin
      a:=grid.RowCount;
      for b:=0 to a do
      begin
          for c:=0 to 5 do
          begin
              theTests[b,c]:=grid.Cells[c,b];
          end;
      end;
    end;
end;

procedure calendar.setSelectSup(grid: TStringGrid);
var
  a,b,c : integer;
begin
  if (Length(grid.Cells[1,1])>0) then
    begin
      a:=grid.RowCount;
      for b:=0 to a do
      begin
          for c:=0 to 4 do
          begin
              theSup[b,c]:=grid.Cells[c,b];
          end;
      end;
    end;
end;

procedure calendar.getSelectTests(grid: TstringGrid);
var
a,b,c : integer;
begin
    a:=1000;
    for b:=0 to a do
    begin
        for c:=0 to 5 do
        begin
            grid.Cells[c,b]:=theTests[b,c];
        end;
    end;
end;

procedure calendar.getSelectSup(grid: TstringGrid);
var
a,b,c : integer;
begin
    a:=1000;
    for b:=0 to a do
    begin
        for c:=0 to 4 do
        begin
            grid.Cells[c,b]:=theSup[b,c];
        end;
    end;
end;

procedure calendar.setTests(grid: TstringGrid);
var
a,b,c : integer;
begin
    a:=grid.RowCount+1;
    iTestCount:=a-3;
    for b:=0 to a do
    begin
        for c:=0 to 5 do
        begin
            theTests[b,c]:=grid.Cells[c,b];
        end;
    end;
end;

procedure calendar.setVenues(grid: TstringGrid);
var
a,b,c : integer;
begin
    a:=grid.RowCount+1;
    for b:=0 to a do
    begin
        for c:=1 to 3 do
        begin
            theVenues[b,c]:=grid.Cells[c,b];
        end;
    end;
end;


procedure calendar.getGridAll(_day:integer; grid: TStringGrid; lbl: TLabel);
var
a,b,c,col,plus : integer;
begin
    for a:=0 to grid.RowCount do
      for b:=0 to grid.ColCount do
        grid.Cells[b,a]:='';
    plus:=iSuper;
    lbl.Caption:=IntToStr(plus);
    col:=0;
    grid.RowCount:=iVenues+2;
    grid.ColCount:=(iSessions+1)*3+(plus*iSessions)-2;
    grid.Cells[0,0]:='Day '+intToStr(_day);
    for b:=2 to iVenues+2 do
       grid.Cells[0,b]:=theVenues[b-1,1];
    for a:=1 to iSessions do
    begin
        grid.Cells[a+col,0]:='Session '+intToStr(a);
        
        grid.Cells[a+col,1]:='Test';
        grid.ColWidths[a+col]:=60;
        for c:=0 to plus-1 do
        begin
          grid.Cells[a+col+1+c,1]:='Supervisors '+intToStr(c+1);////////////////////////Supervisors
          grid.ColWidths[a+col+1+c]:=75;
        end;
        grid.Cells[a+col+1+plus,1]:='Pupils';
        grid.ColWidths[a+col+1+plus]:=40;
        grid.Cells[a+col+2+plus,1]:='Seats';
        grid.ColWidths[a+col+2+plus]:=40;
        for b:=2 to iVenues+1 do
        begin
            grid.Cells[a+col+2+plus,b]:=theVenues[b-1,2];
            grid.Cells[a+col+1+plus,b]:='0';
        end;
        col:=col+2+plus;
    end;
    if grid.RowCount>1 then grid.FixedRows:=2;
    if grid.ColCount>1 then grid.FixedCols:=1;
    grid.ColWidths[0]:=100;
end;

procedure calendar.getCalendar(_day:integer; grid:TStringGrid; gridOne:TStringGrid);
var
a,b,c,iPos,iTel:integer;
sSuper,sLyn:string;
begin
   // for a:=1 to iDays do
   // begin //Goes through the days
   iTel:=0;
   a:=_day;
   for b:=1 to iSessions do
   begin //Goes through sessions
      for c:=1 to iVenues do
      begin //Goes through venues
        //grid; //Venue ID
        gridOne.Cells[0,c+1]:=theArray[a,b,c,0];
        //Test ID
        grid.Cells[1+((b-1)*(3+iPeriods)),c+1]:=theArray[a,b,c,1];
        //#Pupils
        grid.Cells[2+((b-1)*(3+iPeriods))+iPeriods,c+1]:=theArray[a,b,c,2];
        //Supervisors
        if iPeriods=1 then
          grid.Cells[2+((b-1)*(3+iPeriods)),c+1]:=theArray[a,b,c,3]
        else if iPeriods=2 then
        begin
           grid.Cells[2+((b-1)*(3+iPeriods)),c+1]:=theArray[a,b,c,3];
           grid.Cells[2+((b-1)*(3+iPeriods))+1,c+1]:=theArray[a,b,c,4];
        end else if iPeriods=3 then
        begin
           grid.Cells[2+((b-1)*(3+iPeriods)),c+1]:=theArray[a,b,c,3];
           grid.Cells[2+((b-1)*(3+iPeriods))+1,c+1]:=theArray[a,b,c,4];
           grid.Cells[2+((b-1)*(3+iPeriods))+2,c+1]:=theArray[a,b,c,5];
        end else if iPeriods=4 then
        begin
           grid.Cells[2+((b-1)*(3+iPeriods)),c+1]:=theArray[a,b,c,3];
           grid.Cells[2+((b-1)*(3+iPeriods))+1,c+1]:=theArray[a,b,c,4];
           grid.Cells[2+((b-1)*(3+iPeriods))+2,c+1]:=theArray[a,b,c,5];
           grid.Cells[2+((b-1)*(3+iPeriods))+3,c+1]:=theArray[a,b,c,6];
        end;
        end;
      end;
end;

procedure calendar.setCalendar(_day:integer; grid:TStringGrid; gridOne:TStringGrid);
var
a,b,c,iPos,iTel:integer;
sSuper,sLyn:string;
begin
   // for a:=1 to iDays do
   // begin //Goes through the days
   iTel:=0;
   a:=_day;
   for b:=1 to iSessions do
   begin //Goes through sessions
   for c:=1 to iVenues do
      begin //Goes through venues
        //grid; //Venue ID
        theArray[a,b,c,0]:=gridOne.Cells[0,c+1];
        //Test ID
        theArray[a,b,c,1]:=grid.Cells[1+((b-1)*(3+iPeriods)),c+1];
        //#Pupils
        theArray[a,b,c,2]:=grid.Cells[2+((b-1)*(3+iPeriods))+iPeriods,c+1];
        //Supervisors
        if iPeriods=1 then
          theArray[a,b,c,3]:=grid.Cells[2+((b-1)*(3+iPeriods)),c+1]
        else if iPeriods=2 then
        begin
           theArray[a,b,c,3]:=grid.Cells[2+((b-1)*(3+iPeriods)),c+1];
           theArray[a,b,c,4]:=grid.Cells[2+((b-1)*(3+iPeriods))+1,c+1];
        end else if iPeriods=3 then
        begin
           theArray[a,b,c,3]:=grid.Cells[2+((b-1)*(3+iPeriods)),c+1];
           theArray[a,b,c,4]:=grid.Cells[2+((b-1)*(3+iPeriods))+1,c+1];
           theArray[a,b,c,5]:=grid.Cells[2+((b-1)*(3+iPeriods))+2,c+1];
        end else if iPeriods=4 then
        begin
           theArray[a,b,c,3]:=grid.Cells[2+((b-1)*(3+iPeriods)),c+1];
           theArray[a,b,c,4]:=grid.Cells[2+((b-1)*(3+iPeriods))+1,c+1];
           theArray[a,b,c,5]:=grid.Cells[2+((b-1)*(3+iPeriods))+2,c+1];
           theArray[a,b,c,6]:=grid.Cells[2+((b-1)*(3+iPeriods))+3,c+1];
        end;
      end;
   end;
end;

procedure calendar.getDays(temp: Tstrings);
var
a : integer;
begin
    temp.Clear;
    for a:=1 to iDays do
    begin
        temp.Append(intToStr(a));
    end;
end;

//Gets the gridview for venues of a spicific day
procedure calendar.getGridVenue(_day:integer; grid: TStringGrid);
var
a,b : integer;
begin
    grid.RowCount:=iVenues+1;
    grid.ColCount:=iSessions+1;
    grid.Cells[0,0]:='Day '+intToStr(_day);
    for b:=1 to iVenues do
       grid.Cells[0,b]:='Venue '+intToStr(b);
    for a:=1 to iSessions do
    begin
        grid.Cells[a,0]:='Session '+intToStr(a);
        for b:=1 to iVenues do
        begin
            grid.Cells[a,b]:=theArray[_day,b,a,1];
        end;
    end;
    if grid.RowCount>1 then grid.FixedRows:=1;
    if grid.ColCount>1 then grid.FixedCols:=1;
end;

//Gets the gridview for tests of a spicific day
procedure calendar.getGridTest(_day:integer; grid: TStringGrid);
var
a,b : integer;
begin
    grid.RowCount:=iVenues+1;
    grid.ColCount:=iSessions+1;
    grid.Cells[0,0]:='Day '+intToStr(_day);
    for b:=1 to iVenues do
       grid.Cells[0,b]:='Venue '+intToStr(b);
    for a:=1 to iSessions do
    begin
        grid.Cells[a,0]:='Session '+intToStr(a);
        for b:=1 to iVenues do
        begin
            grid.Cells[a,b]:=theArray[_day,b,a,2];
        end;
    end;
    if grid.RowCount>1 then grid.FixedRows:=1;
    if grid.ColCount>1 then grid.FixedCols:=1;
end;

//Gets the gridview for supervisors of a spicific day
procedure calendar.getGridSup(_day:integer; grid: TStringGrid);
var
a,b:integer;
begin
    grid.RowCount:=iVenues+1;
    grid.ColCount:=iSessions+1;
    grid.Cells[0,0]:='Day '+intToStr(_day);
    for b:=1 to iVenues do
       grid.Cells[0,b]:='Venue '+intToStr(b);
    for a:=1 to iSessions do
    begin
        grid.Cells[a,0]:='Session '+intToStr(a);
        for b:=1 to iVenues do
        begin
            grid.Cells[a,b]:=theArray[_day,b,a,3];
        end;
    end;
    if grid.RowCount>1 then grid.FixedRows:=1;
    if grid.ColCount>1 then grid.FixedCols:=1;
end;


//Set the number of days, sessions, venues
procedure calendar.setValues(_days:integer; _sessions:integer; _venues:integer; _super:integer; _hours: integer);
var
dOne:Double;
begin
    iDays:=_days;
    iSessions:=_sessions;
    iVenues:=_venues;
    iHourOfSessions:=_hours;

    dOne:=((_hours*60)/_super);
    iSuper:=Round((_hours*60)/_super);
    if dOne>iSuper then
      iSuper:=iSuper+1;
    iPeriods:=iSuper;
end;


procedure calendar.setCalNull();
var
a,b,c: integer;
begin
    Loaded:=False;
    for a:=1 to 50 do
    begin //Goes through the days
        for b:=1 to 10 do
        begin //Goes through sessions
            for c:=1 to 50 do
            begin //Goes through venues
                theArray[a,b,c,0]:=''; //Venue ID
                theArray[a,b,c,1]:=''; //Test ID
                theArray[a,b,c,2]:='0'; //Number of students
                theArray[a,b,c,3]:=',,,,,,,,,,'; //Supervisors A
                theArray[a,b,c,4]:=',,,,,,,,,,'; //Supervisors B
                theArray[a,b,c,5]:=',,,,,,,,,,'; //Supervisors C
                theArray[a,b,c,6]:=',,,,,,,,,,'; //Supervisors D
            end;
        end;
    end;
end;

end.
