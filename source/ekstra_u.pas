unit ekstra_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, ComCtrls,customdialog_u;

type
    TMDarray = array[1..50,1..10,1..50,0..6] of string;

    getalleLys = array[1..50,1..2] of Integer;




type
  ekstra = class
  private
    { Private declarations }

  public
    nmr1,nmr2,nmr3:Integer;
    function isNumber(sNumber: string):boolean;
    procedure FindAll(const Path: String;Attr: Integer;List: TStrings);
    procedure getSupervisors(sLine:string; s1:Integer; s2:Integer; s3:integer);

    function getSuperInput(iSel:integer;sGrid: TStringGrid):string;
    function setupQuick(sGrid: TStringGrid; lst:TListBox):Boolean;

    function get1():Integer;
    function get2():integer;
    function get3:Integer;
    function setSupervisors(selected: Integer; s1:Integer; s2:Integer; s3:integer; sGridSelect:TstringGrid; sGridAll:TstringGrid):string;

    function addSupervisors(sLyn:string; nmr:Integer; id:Integer):string;

    function setupList(sList:string;b1:TButton;b2:TButton;b3:TButton;b4:TButton;
b5:TButton;b6:TButton;b7:TButton;b8:TButton;b9:TButton;b10:TButton;sGrid: TStringGrid):Boolean;

    function CheckSups(grid:TStringGrid;id:Integer;col:Integer):boolean;
    
    function CheckSupsLeftRight(grid:TStringGrid;id:Integer;col:Integer):boolean;

    function getNumber(sLyn:string):Integer;

    //procedure autogenerate(grid:TStringGrid;lst:TListBox;);

  end;

implementation
///////

function ekstra.CheckSupsLeftRight(grid:TStringGrid;id:Integer;col:Integer):boolean;
var
  a,b:Integer;
  bool:Boolean;
  iNmrs:array[1..10] of Integer;
  sLyn:string;
  StringList: TStringList;
begin
  bool:=True;
  StringList := TStringList.Create();
  for a:=2 to grid.RowCount-1 do
  begin
    if (Length(grid.Cells[grid.Col-1,1])>10) then
    begin
      sLyn:=Grid.Cells[col-1,a];
      StringList.Text := StringReplace(sLyn, ',', #13#10, [rfReplaceAll]);
      for b:=0 to 9 do
      begin
        if isNumber(StringList[b]) then
          iNmrs[b+1]:=StrToInt(StringList[b])
        else iNmrs[b+1]:=0;
      end;
      for b:=1 to 10 do
      begin
        if iNmrs[b]=id then
        begin
          //MessageDlg('Warning'+#10+'This supervisor is in a adjacent venue',mtWarning,[mbOK],0);
          result := false;
          bool:=false;
          Break;
        end;
      end;
    end;
    if (Length(grid.Cells[grid.Col+1,1])>10) then
    begin
      sLyn:=Grid.Cells[col+1,a];
      StringList.Text := StringReplace(sLyn, ',', #13#10, [rfReplaceAll]);
      for b:=0 to 9 do
      begin
        if isNumber(StringList[b]) then
          iNmrs[b+1]:=StrToInt(StringList[b])
        else iNmrs[b+1]:=0;
      end;
      for b:=1 to 10 do
      begin
        if iNmrs[b]=id then
        begin
          //MessageDlg('Warning'+#10+'This supervisor is in a adjacent venue',mtWarning,[mbOK],0);
          result := false;
          bool:=false;
          Break;
        end;
      end;
    end;
  end;
  result:= bool;
end;


function ekstra.getNumber(sLyn:string):Integer;
var
  iPos:Integer;
begin
  iPos:=Pos(' ',sLyn);
  Delete(sLyn,1,iPos);
  if isNumber(sLyn) then
    Result:=StrToInt(sLyn)
  else
    Result:=0;
end;

function ekstra.CheckSups(grid:TStringGrid;id:Integer;col:Integer):boolean;
var
  a,b:Integer;
  bool:Boolean;
  iNmrs:array[1..10] of Integer;
  sLyn:string;
  StringList: TStringList;
begin
  bool:=True;
  StringList := TStringList.Create();
  for a:=2 to grid.RowCount-1 do
  begin
    sLyn:=Grid.Cells[col,a];
    StringList.Text := StringReplace(sLyn, ',', #13#10, [rfReplaceAll]);

    for b:=0 to 9 do
    begin
    if isNumber(StringList[b]) then
      iNmrs[b+1]:=StrToInt(StringList[b])
    else iNmrs[b+1]:=0;
    end;

    for b:=1 to 10 do
    begin
      if iNmrs[b]=id then
      begin
        //MessageDlg('This supervisor is already placed in another venue at this time',mtError,[mbOK],0);
        result := false;
        bool:=false;
        Break;
      end;
    end;
  end;
  result:= bool;
end;


function ekstra.addSupervisors(sLyn:string; nmr:Integer; id:Integer):string;
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
    if isNumber(StringList[a]) then
      iNmrs[a+1]:=StrToInt(StringList[a])
    else iNmrs[a+1]:=0;
  end;

  if iNmrs[nmr]=0 then
  begin
    for a:=1 to 10 do
    begin
      if iNmrs[a]=id then
      begin
        MessageDlg('This supervisor is already in the slot',mtError,[mbOK],0);
        result := sLyn;
        val:=False;
        Break;
      end;
    end;
  end
  else begin
    for a:=1 to 10 do
    begin
      if iNmrs[a]=id then
      begin
        MessageDlg('This supervisor is already in the slot',mtError,[mbOK],0);
        result := sLyn;
        val:=False;
        Break;
      end;
    end;
  end;
    iNmrs[nmr] := id;
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



function ekstra.setupQuick(sGrid: TStringGrid; lst:TListBox):Boolean;
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
  end else
  begin
  //Tests...
    iLength := 15;
    lst.TabWidth:=60;
    for a:=1 to sGrid.RowCount-2 do
    begin
      if sGrid.cells[3,a]='0' then
      begin
        lst.Items.Add('-');
      end else
      begin
        sLyn :=trim(sGrid.Cells[0,a])+') Grade: '+trim(sGrid.cells[1,a]);
        sLyn := sLyn+#9+copy(trim(sGrid.cells[2,a]),0,11);
        sLyn:=sLyn+#9+'    ('+sGrid.cells[3,a]+')';
        lst.Items.Add(sLyn);
      end;
    end;




  end;
end;


function ekstra.getSuperInput(iSel:integer; sGrid: TStringGrid):string;
var a:integer;
begin
  for a:=1 to sGrid.RowCount-1 do
  begin
    if (isNumber(sGrid.Cells[0,a]) AND (iSel = StrToInt(sGrid.Cells[0,a]))) then
    begin
      Result := IntToStr(iSel) + ') ' + sGrid.Cells[1,a] + ', '+ sGrid.Cells[2,a] +
      ' [' + sGrid.Cells[3,a]+ '/' + sGrid.Cells[4,a] + ']';
    end;
  end;

end;



function ekstra.setupList(sList:string;b1:TButton;b2:TButton;b3:TButton;b4:TButton;
b5:TButton;b6:TButton;b7:TButton;b8:TButton;b9:TButton;b10:TButton;sGrid: TStringGrid):Boolean;
var
  a:Integer;
  example: string;
  iNmrs:array[0..9] of Integer;
  StringList: TStringList;
begin
  StringList := TStringList.Create();
  StringList.Text := StringReplace(sList, ',', #13#10, [rfReplaceAll]);
  for a:=0 to 9 do
  begin
    if (Length(StringList[a])=0) then
    begin
      StringList[a] := '-';
      iNmrs[a] := 0;
    end
    else
      if isNumber(StringList[a]) then
        iNmrs[a] := StrToInt(StringList[a]);

    b1.Caption:='+';
    b2.Caption:='+';
    b3.Caption:='+';
    b4.Caption:='+';
    b5.Caption:='+';
    b6.Caption:='+';
    b7.Caption:='+';
    b8.Caption:='+';
    b9.Caption:='+';
    b10.Caption:='+';

    if isNumber(StringList[0]) then
    begin
      b1.Caption := getSuperInput(strToInt(StringList[0]),sGrid);
    end;
    if isNumber(StringList[1]) then
    begin
      b2.Caption := getSuperInput(strToInt(StringList[1]),sGrid);
    end;
    if isNumber(StringList[2]) then
    begin
      b3.Caption := getSuperInput(strToInt(StringList[2]),sGrid);
    end;
    if isNumber(StringList[3]) then
    begin
      b4.Caption := getSuperInput(strToInt(StringList[3]),sGrid);
    end;
    if isNumber(StringList[4]) then
    begin
      b5.Caption := getSuperInput(strToInt(StringList[4]),sGrid);
    end;
    if isNumber(StringList[5]) then
    begin
      b6.Caption := getSuperInput(strToInt(StringList[5]),sGrid);
    end;
    if isNumber(StringList[6]) then
    begin
      b7.Caption := getSuperInput(strToInt(StringList[6]),sGrid);
    end;
    if isNumber(StringList[7]) then
    begin
      b8.Caption := getSuperInput(strToInt(StringList[7]),sGrid);
    end;
    if isNumber(StringList[8]) then
    begin
      b9.Caption := getSuperInput(strToInt(StringList[8]),sGrid);
    end;
    if isNumber(StringList[9]) then
    begin
      b10.Caption := getSuperInput(strToInt(StringList[9]),sGrid);
    end;


    //ShowMessage(StringList[a]);
  end;


  StringList.Destroy;
end;

function ekstra.get1():integer;
begin
  result:=nmr1;
end;
function ekstra.get2():integer;
begin
  result:=nmr2;
end;
function ekstra.get3():integer;
begin
  result:=nmr3;
end;


function ekstra.setSupervisors(selected: Integer; s1:Integer; s2:Integer; s3:integer; sGridSelect:TstringGrid; sGridAll:TstringGrid):string;
var
  a:Integer;
begin
  if (s1=0) and (s2=0) and (s3=0) then
  begin
    //Adds the first supervisor
    Result:=IntToStr(selected)+',,,,,,,,,,';

  end else if (s2=0) and (s3=0) then
  begin
    //Add second super or replace first
    case MessageDlgCustom('Please select an option',mtConfirmation,[mbYes,mbNo],
      ['Replace &first supervisor',
      '&Add another supervisor'],
      nil)  //nil = no custom font
    of
    mrYes:
      begin
        //Replaces the first supervisor
        Result:=IntToStr(selected)+',,,,,,,,,,';
      end;
    mrNo:
      begin
        //Adds another supervisor
        Result:=IntToStr(s1)+','+intToStr(selected)+',,,,,,,,,';
      end;
    end;
  end else if (s3=0) then
  begin
  //Add third super or replace first/second
    case MessageDlgCustom('Please select an option',mtConfirmation,[mbYes,mbNo,mbOk],
      ['Replace &first supervisor',
      'Replace &second supervisor',
      '&Add another supervisor'],
      nil)  //nil = no custom font
    of
    mrYes:
      begin
        //Replaces the first supervisor
        Result:=IntToStr(selected)+','+intToStr(s2)+',,,,,,,,,';
      end;
    mrNo:
      begin
        //Replaces the second supervisor
        Result:=intToStr(s1)+','+IntToStr(selected)+',,,,,,,,,';
      end;
    mrOk:
      begin
        //Adds a third super
        Result:=IntToStr(s1)+','+intToStr(s2)+','+IntToStr(selected)+',,,,,,,,';
      end;
    end;
  end else begin
    //Replace 1st, 2nd or 3rd super
    case MessageDlgCustom('Please select an option',mtConfirmation,[mbYes,mbNo,mbOk],
      ['Replace &first supervisor',
      'Replace &second supervisor',
      'Replace &third supervisor'],
      nil)  //nil = no custom font
    of
    mrYes:
      begin
        //Replaces the first supervisor
        Result:=IntToStr(selected)+','+intToStr(s2)+','+intToStr(s3)+',,,,,,,,';
      end;
    mrNo:
      begin
        //Replaces the second supervisor
        Result:=intToStr(s1)+','+IntToStr(selected)+','+intToStr(s3)+',,,,,,,,';
      end;
    mrOk:
      begin
        //Replaces the third supervisor
        Result:=intToStr(s1)+','+intToStr(s2)+','+IntToStr(selected)+',,,,,,,,';
      end;
    end;
  end;
end;


procedure ekstra.getSupervisors(sLine:string; s1:Integer; s2:Integer; s3:integer);
var
  iPos:Integer;
  sLyn:string;
begin
  sLyn:=sLine;
  iPos:=Pos(',',sLyn);
  if iPos=1 then
  begin
    s1:=0;
    s2:=0;
    s3:=0;
  end else
  begin
    s1:=StrToInt(Copy(sLyn,0,iPos-1));
    Delete(sLyn,1,iPos);
    iPos:=Pos(',',sLyn);
    if iPos=1 then
    begin
      s2:=0;
      s3:=0;
    end else
    begin
      s2:=StrToInt(Copy(sLyn,0,iPos-1));
      Delete(sLyn,1,iPos);
      iPos:=Pos(',',sLyn);
      if iPos=1 then
      begin
        s3:=0;
      end else
      begin
        s3:=StrToInt(Copy(sLyn,0,iPos-1));
        Delete(sLyn,1,iPos);
      end;
    end;
  end;
  nmr1:=s1;
  nmr2:=s2;
  nmr3:=s3;
end;


function ekstra.isNumber(sNumber: string):boolean;
var
  icheck: integer;
  rNumber: double;
begin
    val(sNumber,rNumber,icheck);
    if icheck = 0 then isNumber:=true
    else isNumber:=false;
end;


procedure ekstra.FindAll(const Path: String;Attr: Integer;List: TStrings) ;
var
   Res: TSearchRec;
   EOFound: Boolean;
begin
   EOFound:= False;
   if FindFirst(Path, Attr, Res) < 0 then
     exit
   else
     while not EOFound do begin
       List.Add(Res.Name) ;
       EOFound:= FindNext(Res) <> 0;
     end;
   FindClose(Res) ;
end;
/////////////

{procedure ekstra.SaveRedx(RedX:TRichEdit;sFileName:string);
var
MyLer:TextFile;
a:integer;
sLyn:string;
begin
  sFileName:=sFileName+'.txt';
  AssignFile(MyLer,sFileName);
  Rewrite(Myler);
  for a:=0 to redX.Lines.Count do begin
    sLyn:=RedX.Lines.Strings[a];
    Writeln(myler,sLyn);
  end;
  CloseFile(Myler);
end; }

{procedure ekstra.SetupColumns(dbGrid: TDBgrid; columns: array of string;edtCaseNumber:TEdit; ADO: TADOQuery;RedX:TRichEdit);
var
a:integer;
sColumns,sTable,sColumn,sCase,sConnection,sWhere,sFrom:string;
begin
  sConnection:='';
  if length(edtCaseNumber.Text)>0 then
  begin
  sConnection:='SELECT ';
  sCase:=edtCaseNumber.Text;
  while isnumeric(sColumns)=false do
  sColumns:=inputbox('Column count','How many columns do you want to use?','');
  for a:=0 to strtoint(sColumns)-1 do
  begin
    dbgrid.Columns.Add;
    sTable:=inputbox(intToStr(a+1)+'/'+intToStr(strtoint(sColumns))+
    '   TABLE','Insert the table''s name','');
    sColumn:=inputbox((intToStr(a+1))+'/'+intToStr(strtoint(sColumns))+
    '   COLUMN','Insert the column''s name','');
    dbgrid.Columns.Items[a].FieldName:=sTable+'.'+sColumn;
    dbgrid.Columns.Items[a].Width:=100;
    columns[a]:=sTable+'.'+sColumn;
    if strtoint(sColumns)=1 then begin
    //AS DAAR NET EEN KOLOM IS
        sConnection:=sConnection+sTable+'.'+sColumn;
        sConnection:=sConnection+' FROM '+sTable+' WHERE '+sColumn+
        '="'+sCase+'"';
       // dbGrid.Columns.Delete(0);
      end
    //LAASTE KOLOM
    else if a=strtoint(sColumns)-1 then
    begin
      sConnection:=sConnection+','+sTable+'.'+sColumn;
      sFrom:=sFrom+','+sTable;
      sWhere:=sWhere+'='+sTable+'.casenumber';
      sWhere:=sWhere+' AND '+sTable+'.casenumber="'+sCase+'"';
      sConnection:=sConnection+' FROM '+sFrom+' WHERE '+sWhere;
    end
    //EERSTE KOLOM
    else if a=0 then
    begin
      sConnection:=sConnection+sTable+'.'+sColumn;
      sFrom:=sTable;
      sWhere:=sTable+'.casenumber';
    end
    //MIDDEL KOLOMME
    else begin
      sConnection:=sConnection+','+sTable+'.'+sColumn;
      sFrom:=sFrom+','+sTable;
      sWhere:=sWhere+'='+sTable+'.casenumber';
    end;
  end;
  redX.Lines.Add(sConnection);
  end else messagedlg('Please enter the casenumber',mtInformation,[mbOK],0);

end;  }

//Setup the Form to the screenSize.
{procedure ekstra.FixScreenResulution(Form1: TForm);
   var
   screenWidth,screenHeight: integer;
   begin
      screenHeight := GetSystemMetrics(SM_CYSCREEN);
      ScreenWidth := GetSystemMetrics(SM_CXSCREEN);
      Form1.Height:= screenHeight;
      Form1.Width:= screenWidth;
      Form1.Top:=0;
      Form1.Left:=0;
   end;
}
//////////////////END///////////////////////////////END//////////////////////////

end.
