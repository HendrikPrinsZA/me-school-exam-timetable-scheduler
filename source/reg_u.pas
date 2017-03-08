unit reg_u;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,ExtCtrls, StdCtrls, ComCtrls,ekstra_u, OleCtnrs, Menus;

type
  Reg = class

  private
    { Private declarations }

    function GetTheDiskSize():LongInt;
    function GetTimeZone():Integer;
    function getBuildNr():Integer;
    function getInfoSize():Integer;
    function loadFromFile():string;


  public
    //procedure activateNow();
    procedure aktiveer(pnl:TPanel;lbl:TLabel;mm1:TMainMenu);
    function isValid(g1:Integer;g2:Integer;g3:Integer;g4:Integer):Boolean;
    procedure writeToFile(sLyn:string);
    
  end;
var
  tEkstra:ekstra;

implementation

function reg.loadFromFile():string;
var
myLer: TextFile;
filename:string;
sLyn:string;
begin
  filename:='registration.txt';
  if NOT FileExists(filename) then
  begin
    result:='0-0-0-0-';
  end else
  begin
    AssignFile(myLer,filename);
    Reset(Myler);
    Readln(myLer,sLyn);
    CloseFile(myLer);
    result:=sLyn;
  end;
end;

procedure reg.writeToFile(sLyn:string);
var
myLer: TextFile;
filename:string;
begin
  filename:='registration.txt';
  if NOT FileExists(filename) then
        begin
            //The file doesn't exist
            //New file created
            assignFile(myLer,filename);
            rewrite(myler);
            Writeln(MyLer,sLyn);
            closefile(myler);
        end
        else begin
            //The file exists
                //File overwrited
                assignFile(myLer,filename);
                rewrite(myler);
                Writeln(MyLer,sLyn);
                closefile(myler);
        end;
end;

function reg.isValid(g1:Integer;g2:Integer;g3:Integer;g4:Integer):Boolean;
var
number1,number2,number3,number4:LongInt;
answer1,answer2,answer3,answer4:LongInt;
sRegNum:string;
begin
  number1:=GetTheDiskSize();
  number2:=GetTimeZone();
  number3:=getBuildNr();
  number4:=getInfoSize();

  sRegNum:=intToStr(number1);
  if Length(sRegNum)>4 then
    sRegNum:=Copy(sRegNum,1,4)
  else
    sRegNum:=Copy(sRegNum,1,Length(sRegNum));
  number1:=StrToInt(sRegNum);

  sRegNum:=intToStr(number2);
  if Length(sRegNum)>4 then
    sRegNum:=Copy(sRegNum,1,4)
  else
    sRegNum:=Copy(sRegNum,1,Length(sRegNum));
  number2:=StrToInt(sRegNum);

  sRegNum:=intToStr(number3);
  if Length(sRegNum)>4 then
    sRegNum:=Copy(sRegNum,1,4)
  else
    sRegNum:=Copy(sRegNum,1,Length(sRegNum));
  number3:=StrToInt(sRegNum);

  sRegNum:=intToStr(number4);
  if Length(sRegNum)>4 then
    sRegNum:=Copy(sRegNum,1,4)
  else
    sRegNum:=Copy(sRegNum,1,Length(sRegNum));
  number4:=StrToInt(sRegNum);

  number1:=number1+15;
  number2:=number2+78;
  number3:=number3+12;
  number4:=number4+3;

  {number1:=number1-15;
  number2:=number2-78;
  number3:=number3-12;
  number4:=number4-3;}

  answer1:=9999-number1;
  answer2:=9999-number2;
  answer3:=9999-number3;
  answer4:=9999-number4;

  {ShowMessage(IntToStr(answer1));
  ShowMessage(IntToStr(answer2));
  ShowMessage(IntToStr(answer3));
  ShowMessage(IntToStr(answer4));}

  if ((answer1=g1) and (answer2=g2) and (answer3=g3) AND (answer4=g4)) then
    result:=True
  else result:=false;
  
end;


function reg.getInfoSize():Integer;
var
  Info: TOSVersionInfoA;
begin
  Info.dwOSVersionInfoSize:=sizeof(Info);
  GetVersionEx(Info);
  result:=Info.dwOSVersionInfoSize;
end;


function reg.getBuildNr():Integer;
var
  Info: TOSVersionInfoA;
begin
  Info.dwOSVersionInfoSize:=sizeof(Info);
  GetVersionEx(Info);
  result:=Info.dwBuildNumber;
end;


function reg.GetTimeZone():Integer;
var
  ZoneInfo: TTimeZoneInformation;
begin
  GetTimeZoneInformation(ZoneInfo);
  result:=ZoneInfo.Bias;
end;


function reg.GetTheDiskSize():LongInt;
var
  Total: LongInt;
  Disk: Integer;
begin
  Disk:=0;
  Total:=DiskSize(Disk) div 1024;
  result:=Total;
end;

procedure reg.aktiveer(pnl:TPanel;lbl:TLabel;mm1:TMainMenu);
var
number1,number2,number3,number4:LongInt;
answer1,answer2,answer3,answer4:LongInt;
sRegNum,sMe,sTemp:string;
iPos:Integer;
g1,g2,g3,g4:Integer;
Myler:TextFile;
begin

  if NOT FileExists('Registration.txt') then
  begin
    AssignFile(Myler,'Registration.txt');
    Rewrite(Myler);
    Writeln(MyLer,'0-0-0-0-');
    CloseFile(Myler);
  end;


  mm1.Items[0].Enabled:=False;
  sMe:=loadFromFile();
  iPos:=Pos('-',sMe);
  sTemp:=Copy(sMe,1,iPos-1);
  if tEkstra.isNumber(sTemp) then
  begin
    g1:=strToInt(sTemp);
    Delete(sMe,1,iPos);
    iPos:=Pos('-',sMe);
    sTemp:=Copy(sMe,1,iPos-1);
    if tEkstra.isNumber(sTemp) then
    begin
      g2:=StrToInt(sTemp);
      Delete(sMe,1,iPos);
      iPos:=Pos('-',sMe);
      sTemp:=Copy(sMe,1,iPos-1);
      if tEkstra.isNumber(sTemp) then
      begin
        g3:=StrToInt(sTemp);
        Delete(sMe,1,iPos);
        iPos:=Pos('-',sMe);
        sTemp:=Copy(sMe,1,iPos-1);
        if tEkstra.isNumber(sTemp) then
        begin
          g4:=StrToInt(sTemp);
          if isValid(g1,g2,g3,g4) then
          begin
            pnl.visible:=False;
            mm1.Items[0].Enabled:=True;
          end else
          begin
            number1:=GetTheDiskSize();
            number2:=GetTimeZone();
            number3:=getBuildNr();
            number4:=getInfoSize();
            sRegNum:=intToStr(number1);
            if Length(sRegNum)>4 then
              sRegNum:=Copy(sRegNum,1,4)
            else
              sRegNum:=Copy(sRegNum,1,Length(sRegNum));
            number1:=StrToInt(sRegNum);
            sRegNum:=intToStr(number2);
            if Length(sRegNum)>4 then
              sRegNum:=Copy(sRegNum,1,4)
            else
              sRegNum:=Copy(sRegNum,1,Length(sRegNum));
            number2:=StrToInt(sRegNum);
            sRegNum:=intToStr(number3);
            if Length(sRegNum)>4 then
              sRegNum:=Copy(sRegNum,1,4)
            else
              sRegNum:=Copy(sRegNum,1,Length(sRegNum));
            number3:=StrToInt(sRegNum);
            sRegNum:=intToStr(number4);
            if Length(sRegNum)>4 then
              sRegNum:=Copy(sRegNum,1,4)
            else
              sRegNum:=Copy(sRegNum,1,Length(sRegNum));
            number4:=StrToInt(sRegNum);
            number1:=number1+15;
            number2:=number2+78;
            number3:=number3+12;
            number4:=number4+3;
            sRegNum:=intToStr(number1)+'-'+intToStr(number2)+'-'+intToStr(number3)+'-'+intToStr(number4);
            lbl.caption:=sRegNum;
          end;
        end;
      end;
    end;
  end;
end;







end.
