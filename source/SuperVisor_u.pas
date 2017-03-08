unit SuperVisor_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Buttons, ExtCtrls, ekstra_u, Spin;

type
  TfrmSupervisor = class(TForm)
    gridS: TStringGrid;
    btnCheck: TButton;
    btnSort: TButton;
    btnSave: TButton;
    pnlLoad: TPanel;
    rgpLoad: TRadioGroup;
    btnRefresh: TButton;
    btnLoad: TButton;
    pnlDelete: TPanel;
    Label2: TLabel;
    btnDelete: TButton;
    nmrDelete: TSpinEdit;
    btnNumber: TButton;
    pnlSuper: TPanel;
    pnlHours: TPanel;
    btnCalcHours: TButton;
    spinTotalHours: TSpinEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    lblPerc: TLabel;
    spin0: TEdit;
    spin1: TEdit;
    spin2: TEdit;
    spin3: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    edtHour0: TEdit;
    edtHour1: TEdit;
    edtHour2: TEdit;
    edtHour3: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    lblHours: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    btnAutoHours: TButton;
    Label21: TLabel;
    rgpPerc: TRadioButton;
    Label24: TLabel;
    rgpHour: TRadioButton;
    edtPhour0: TEdit;
    edtPhour1: TEdit;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    edtPhour2: TEdit;
    edtPhour3: TEdit;
    Label28: TLabel;
    lblPerHours: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    btn2: TButton;
    Shape1: TShape;
    Label29: TLabel;
    shp2: TShape;
    Label35: TLabel;
    Label36: TLabel;
    shp1: TShape;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label42: TLabel;
    Label1: TLabel;
    Label41: TLabel;
    btnMinimize: TButton;
    btnMaximize: TButton;
    btnNew: TButton;
    Memo1: TMemo;
    Label43: TLabel;
    btnGetTotalHours: TButton;
    dlgOpenTest: TOpenDialog;
    procedure setupGrid();
    function isNumeric(s: string): boolean;
    procedure FormActivate(Sender: TObject);
    procedure gridSKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCheckClick(Sender: TObject);
    procedure btnSortClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnLoadClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnNumberClick(Sender: TObject);
    procedure spin0KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAutoHoursClick(Sender: TObject);
    procedure rgpPercClick(Sender: TObject);
    procedure btnCalcHoursClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btnMaximizeClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnGetTotalHoursClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
    frmSupervisor: TfrmSupervisor;
    Tekstra: ekstra;
    check : boolean; //Check is true when the data has been checked
    numberOf: integer;
implementation

{$R *.dfm}

procedure TfrmSupervisor.setupGrid();
var
  a : integer;
begin
  {for a:=1 to (gridS.RowCount-1) do
  begin
      gridS.Cells[0,a] := intToStr(a);
  end ;}
  gridS.Cells[1,0] := 'ID';
  gridS.Cells[1,0] := 'Surname';
  gridS.Cells[2,0] := 'Name';
  gridS.Cells[3,0] := 'Level';
  gridS.Cells[4,0] := 'Hours';
  gridS.ColWidths[0] := 25;
  gridS.ColWidths[1] := 160;
  gridS.ColWidths[2] := 160;
  gridS.ColWidths[3] := 50;
  gridS.ColWidths[4] := 80;
end;

procedure TfrmSupervisor.FormActivate(Sender: TObject);
begin
    setupGrid();
    check:= false;
    numberOf:=0;
    btnRefresh.Click;
end;

procedure TfrmSupervisor.gridSKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
a: integer;
begin
    numberOf:=0;
    if (length(gridS.Cells[1,gridS.RowCount-1])>0) AND (length(gridS.Cells[2,gridS.RowCount-1])>0) AND (length(gridS.Cells[3,gridS.RowCount-1])>0)
    then begin
        for a:=1 to gridS.RowCount-1 do
            begin
                if Tekstra.isNumber(gridS.Cells[0,a])=true then
                    if strToInt(gridS.Cells[0,a])>=numberOf then
                        numberOf:=strToInt(gridS.Cells[0,a]);
             end;
        numberOf:= numberOf+1;
        gridS.Cells[0,gridS.RowCount-1]:=intToStr(numberOf);
        gridS.RowCount := gridS.RowCount + 1;
        setupGrid();
    end;
end;

procedure TfrmSupervisor.btnCheckClick(Sender: TObject);
var
a : integer ;
begin
    check := true;
    for a:=1 to (gridS.RowCount-2) do
    begin
        if (length(gridS.Cells[1,a])=0) then
        begin
            messagedlg('No Surname at row ' +intToStr(a),mtError,[mbOK],0);
            check:= false;
        end;
        if (length(gridS.Cells[2,a])=0) then
        begin
            messagedlg('No name at row ' +intToStr(a),mtError,[mbOK],0);
            check:= false;
        end;
        if (isNumeric(gridS.Cells[3,a])=false) then
        begin
            messagedlg('Level should be between 0 and 3 at row ' + intToStr(a),mtError,[mbOK],0);
            check:= false;
        end;
        if not ((Tekstra.isNumber(gridS.Cells[4,a])) OR (length(gridS.Cells[4,a])=0)) then
        begin
            messagedlg('Hour should be numeric or empty at row ' + intToStr(a),mtError,[mbOK],0);
            check:= false;
        end;
    end;
    if (gridS.RowCount < 3) then
    begin
        messagedlg('No data to check in table',mtError,[mbOK],0);
        check:= false;
    end;
end;

function TfrmSupervisor.isNumeric(s: string): boolean;
begin
    if (s='1') OR (s='2') OR (s='3') OR (s='0')
    then
        isNumeric := true
    else
        isNumeric := false;
end;

procedure TfrmSupervisor.btnSortClick(Sender: TObject);
var
a,b:    integer;
begin
    for  a:=1 to GridS.RowCount-2 do
    begin
        for b:= a+1 to GridS.RowCount-2 do
        begin
            if gridS.Cells[1,b]<gridS.Cells[1,a] then
            begin
                    grids.Cols[0].Exchange(a,b);
                    grids.Cols[1].Exchange(a,b);
                    grids.Cols[2].Exchange(a,b);
                    grids.Cols[3].Exchange(a,b);
            end;
        end;
    end;
end;

procedure TfrmSupervisor.btnSaveClick(Sender: TObject);
var
filename,sLyn: string;
myLer: TextFile;
a,b: integer;
begin
    btnCheck.Click;
    if (check=false) then
        messagedlg('Cannot save file because the data is incorrect'+#10+'Correct your mistakes and try again',mtError,[mbOK],0)
    else begin
        filename := inputbox('Save supervisors' ,'Please enter the filename: ','');
        while (length(filename)<1) do
        begin
            filename := inputbox('Save supervisors','No input given' + #10 +'Please enter the filename again: ','');
        end;
        filename := filename+'.sup';
        if NOT FileExists(filename) then
        begin
            //The file doesn't exist
            //New file created
            assignFile(myLer,filename);
            rewrite(myler);
            for a:=1 to gridS.RowCount-2 do
            begin
                sLyn:='';
                for b:=0 to gridS.ColCount-1 do
                begin
                    sLyn := sLyn + gridS.Cells[b,a] +',';
                end;
                writeln(myLer,sLyn);
            end;
            closefile(myler);
        end
        else begin
            //The file exists
            if (messagedlg('The file already exists'+#10+'Do you want to overwrite?',mtConfirmation,[mbYes,mbNo],0)=6) then
            begin
                //File overwrited
                assignFile(myLer,filename);
                rewrite(myler);
                for a:=1 to gridS.RowCount-2 do
                begin
                    sLyn:='';
                    for b:=0 to gridS.ColCount-1 do
                    begin
                        sLyn := sLyn + gridS.Cells[b,a] + ',';
                    end;
                    writeln(myLer,sLyn);
                end;
                closefile(myler);
            end
            else
                messagedlg('File not saved',mtInformation,[mbOK],0);
        end;
end;
end;
procedure TfrmSupervisor.btnRefreshClick(Sender: TObject);
begin
    rgpLoad.Items.Clear;
    Tekstra.FindAll('*.sup',faAnyFile,rgpLoad.Items);
end;

procedure TfrmSupervisor.btnLoadClick(Sender: TObject);
var
sLyn,filename: string;
myLer: TextFile;
a,b,ipos: integer;
begin
    if (rgpLoad.itemindex>-1) then
    begin
        if FileExists(rgpLoad.Items.Strings[rgpLoad.itemindex]) then
        begin
            //Clears the grid
            for a:=1 to gridS.RowCount-1 do
            begin
                for b:=0 to gridS.ColCount-1 do
                begin
                    gridS.Cells[b,a]:='';
                end;
            end;
            gridS.RowCount:=2;
            b:=1;
            filename:= rgpLoad.Items.Strings[rgpLoad.itemindex];
            assignFile(myLer, filename);
            reset(myLer);
            while not EOF(myLer) do
            begin
                readln(myler,sLyn);
                for a:=0 to 4 do
                begin
                    ipos := pos(',',sLyn);
                    gridS.Cells[a,b] := copy(sLyn,0,ipos-1);
                    delete(sLyn,1,ipos);
                end;
                b := b+1;
                gridS.RowCount:= b+1;
            end;
            closefile(myLer);
        end else
            messagedlg('The file you selected does not exists',mtError,[mbOK],0);
    end else
        messagedlg('No item selected',mtError,[mbOK],0);
end;

procedure TfrmSupervisor.btnDeleteClick(Sender: TObject);
var
a,b: integer;
found: boolean;
begin
    found := false;
    for a:=1 to gridS.RowCount-2 do
    begin
        if Tekstra.isNumber(gridS.Cells[0,a]) then
        if strToInt(gridS.Cells[0,a])=nmrDelete.Value then
        begin
            for b:=a to gridS.RowCount-2 do
            begin
                gridS.Cells[0,b]:=gridS.Cells[0,b+1];
                gridS.Cells[1,b]:=gridS.Cells[1,b+1];
                gridS.Cells[2,b]:=gridS.Cells[2,b+1];
                gridS.Cells[3,b]:=gridS.Cells[3,b+1];
                gridS.Cells[4,b]:=gridS.Cells[4,b+1];
            end;
            found:=true;
        end;
    end;
    if found=true then
    begin
        gridS.Cells[0,gridS.RowCount-2]:='';
        gridS.Cells[1,gridS.RowCount-2]:='';
        gridS.Cells[2,gridS.RowCount-2]:='';
        gridS.Cells[3,gridS.RowCount-2]:='';
        gridS.Cells[4,gridS.RowCount-2]:='';
        gridS.RowCount:=gridS.RowCount-1;
    end else begin
        messagedlg('The ID you entered does not exists',mtError,[mbOK],0);
    end;
end;

procedure TfrmSupervisor.btnNumberClick(Sender: TObject);
var
a: integer;
begin
    for a:=1 to gridS.RowCount-2 do
    begin
        gridS.Cells[0,a]:=intToStr(a);
    end;
end;

procedure TfrmSupervisor.spin0KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
a:integer;
begin
    if Tekstra.isNumber(spin0.Text) AND Tekstra.isNumber(spin1.text) AND Tekstra.isNumber(spin2.text)
    AND Tekstra.isNumber(spin3.text) then
    begin
        a:=strToInt(spin0.text)+strToInt(spin1.text)+strToInt(spin2.text)+strToInt(spin3.text);
        lblperc.Caption:=intToStr(a);
        if a=100 then
        begin
            lblperc.Font.Color:=clBlack;
        end else
        lblperc.Font.Color:=clRed;
    end
    else begin
        lblperc.Font.Color:=clRed;
        lblperc.Caption:='Invalid input';
    end;
    
end;

procedure TfrmSupervisor.btnAutoHoursClick(Sender: TObject);
var
dbl0,dbl1,dbl2,dbl3, dblAve, dblTotal,d0,d1,d2,d3 : double;
intNmr,int0,int1,int2,int3,a: integer;
begin
    if lblperc.Font.Color=clRed then
    begin
        messagedlg('The data is not valid',mtError,[mbOK],0);
    end else
    begin
        int0:=0;
        int1:=0;
        int2:=0;
        int3:=0;
        d0:=0;
        d1:=0;
        d2:=0;
        d3:=0;
        for a:=1 to gridS.RowCount-2 do
        begin
            if gridS.Cells[3,a]='0' then
                int0 := int0+1
            else if gridS.Cells[3,a]='1' then
                int1 := int1+1
            else if gridS.Cells[3,a]='2' then
                int2 := int2+1
            else if gridS.Cells[3,a]='3' then
                int3 := int3+1
        end;
        intNmr:= gridS.RowCount-2;
        dbl0:= strToFloat(spin0.Text)/100;
        dbl1:= strToFloat(spin1.Text)/100;
        dbl2:= strToFloat(spin2.Text)/100;
        dbl3:= strToFloat(spin3.Text)/100;
        dblAve:= spinTotalHours.Value/intNmr;
        dbl0:= dbl0*dblAve*int0;
        dbl1:= dbl1*dblAve*int1;
        dbl2:= dbl2*dblAve*int2;
        dbl3:= dbl3*dblAve*int3;
        dblTotal:= dbl0+dbl1+dbl2+dbl3;
        dblTotal:=dblTotal/spinTotalHours.Value;
        dbl0:= dbl0/dblTotal;
        dbl1:= dbl1/dblTotal;
        dbl2:= dbl2/dblTotal;
        dbl3:= dbl3/dblTotal;
        for a:=1 to gridS.RowCount-2 do
        begin
            if gridS.Cells[3,a]='0' then
            begin
                gridS.Cells[4,a]:=floatToStr(Round(dbl0/int0));
                d0:=d0+Round(dbl0/int0);
            end
            else if gridS.Cells[3,a]='1' then
            begin
                gridS.Cells[4,a]:=floatToStr(Round(dbl1/int1));
                d1:=d1+Round(dbl1/int1);
            end
            else if gridS.Cells[3,a]='2' then
            begin
                gridS.Cells[4,a]:=floatToStr(Round(dbl2/int2));
                d2:=d2+Round(dbl2/int2);
            end
            else if gridS.Cells[3,a]='3' then
            begin
                gridS.Cells[4,a]:=floatToStr(Round(dbl3/int3));
                d3:=d3+Round(dbl3/int3);
            end
        end;
        edtHour0.text:=floatToStr(d0);
        edtHour1.text:=floatToStr(d1);
        edtHour2.text:=floatToStr(d2);
        edtHour3.text:=floatToStr(d3);
        lblHours.Caption:=floatToStr(Round(d0+d1+d2+d3));
    end;

end;

procedure TfrmSupervisor.rgpPercClick(Sender: TObject);
begin
    if rgpPerc.checked=true then
    begin
        edtPhour0.Enabled:=false;
        edtPhour1.Enabled:=false;
        edtPhour2.Enabled:=false;
        edtPhour3.Enabled:=false;
        spin0.Enabled:=true;
        spin1.Enabled:=true;
        spin2.Enabled:=true;
        spin3.Enabled:=true;
        shp1.Pen.Style:=psSolid;
        shp2.Pen.Style:=psClear;
    end
    else begin
        edtPhour0.Enabled:=true;
        edtPhour1.Enabled:=true;
        edtPhour2.Enabled:=true;
        edtPhour3.Enabled:=true;
        spin0.Enabled:=false;
        spin1.Enabled:=false;
        spin2.Enabled:=false;
        spin3.Enabled:=false;
        shp1.Pen.Style:=psClear;
        shp2.Pen.Style:=psSolid;
    end;
end;

procedure TfrmSupervisor.btnCalcHoursClick(Sender: TObject);
begin

    btnCheck.Click;
    if check = true then
    begin
        if rgpperc.Checked = true then
            btnAutoHours.Click
        else begin
            btn2.Click;
        end;
    end;


end;

procedure TfrmSupervisor.btn2Click(Sender: TObject);
var
d0,d1,d2,d3,total: double;
i0,i1,i2,i3,a: integer;
begin
    i0:=0;
    i1:=0;
    i2:=0;
    i3:=0;
    btncheck.Click;
    if check=true then
    begin
        if Tekstra.isNumber(edtPhour0.text) and Tekstra.isNumber(edtPhour1.text) and
        Tekstra.isNumber(edtPhour2.text) and Tekstra.isNumber(edtPhour3.text) then
        begin
            d0:=strToFloat(edtPhour0.text);
            d1:=strToFloat(edtPhour1.text);
            d2:=strToFloat(edtPhour2.text);
            d3:=strToFloat(edtPhour3.text);
            for a:=1 to gridS.RowCount-2 do
            begin
                if gridS.Cells[3,a]='0' then i0:= i0+1
                else if gridS.Cells[3,a]='1' then i1:= i1+1
                else if gridS.Cells[3,a]='2' then i2:= i2+1
                else if gridS.Cells[3,a]='3' then i3:= i3+1;
            end;
            total:=(i0*d0)+(i1*d1)+(i2*d2)+(i3*d3);
            edtHour0.Text:=floatToStr(Round(i0*d0));
            edtHour1.Text:=floatToStr(Round(i1*d1));
            edtHour2.Text:=floatToStr(Round(i2*d2));
            edtHour3.Text:=floatToStr(Round(i3*d3));
            lblHours.Caption:=floatToStr(Round(total));
            lblPerHours.Caption:= floatToStr(Round(total));
            if (total-10<spinTotalHours.Value) and (total+10>spinTotalHours.Value) then
                lblPerHours.Font.Color:=clBlack
            else lblPerHours.Font.Color:=clRed;
            for a:=1 to gridS.RowCount-2 do
            begin
                if gridS.Cells[3,a]='0' then gridS.Cells[4,a]:=edtPHour0.Text
                else if gridS.Cells[3,a]='1' then gridS.Cells[4,a]:=edtPHour1.Text
                else if gridS.Cells[3,a]='2' then gridS.Cells[4,a]:=edtPHour2.Text
                else if gridS.Cells[3,a]='3' then gridS.Cells[4,a]:=edtPHour3.Text;
            end;
        end else
        begin
            messagedlg('The data is not valid',mtError,[mbOK],0);
        end;
    end;
end;

procedure TfrmSupervisor.btnMaximizeClick(Sender: TObject);
begin
    if pnlHours.Visible = true then
        pnlHours.Visible:=false
    else pnlHours.Visible:=true
end;

procedure TfrmSupervisor.btnNewClick(Sender: TObject);
var
a,b:integer;
begin
    for a:=1 to gridS.RowCount-1 do
    begin
        for b:=0 to gridS.ColCount-1 do
            begin
                gridS.Cells[b,a]:='';
            end;
        end;
    gridS.RowCount:=2;
    setupGrid();
end;
    

procedure TfrmSupervisor.btnGetTotalHoursClick(Sender: TObject);
var
  myler: TextFile;
  sLyn: string;
  iTel, iTestCount,iTestHourAverage,iTestAverageSeats: Integer;
  iVenCount,iVenAverage,iFinalHours,iDeel:integer;
begin
  //Getting tests
  iTel:=0;
  iTestCount:=0;
  iTestHourAverage:=0;
  iTestAverageSeats:=0;
  iVenCount:=0;
  iVenAverage:=0;
  dlgOpenTest.Title:='Select a TEST file to open';
  dlgOpenTest.FilterIndex:=1;
  dlgOpenTest.Execute;
  AssignFile(myler,dlgOpenTest.FileName);
  Reset(myler);
  while not Eof(myler) do
  begin
    Readln(MyLer,sLyn);
    iTel:=Pos(',',sLyn);
    Delete(sLyn,1,iTel);
    iTel:=Pos(',',sLyn);
    Delete(sLyn,1,iTel);
    iTel:=Pos(',',sLyn);
    Delete(sLyn,1,iTel);
    //Test studentCount
    iTel:=Pos(',',sLyn);
    if Tekstra.isNumber(Copy(sLyn,0,iTel-1)) then
        iTestAverageSeats:=iTestAverageSeats+strToInt(Copy(sLyn,0,iTel-1));
    Delete(sLyn,1,iTel);
    //Test Time
    iTel:=Pos(',',sLyn);
    if Tekstra.isNumber(Copy(sLyn,0,iTel-1)) then
    begin
        iTestHourAverage:=iTestHourAverage+strToInt(Copy(sLyn,0,iTel-1));
        iTestCount:=iTestCount+1;
    end;
  end;
  CloseFile(myler);
  //Getting Venues
  dlgOpenTest.Title:='Select a VENUE file to open';
  dlgOpenTest.FilterIndex:=2;
  dlgOpenTest.Execute;
  AssignFile(myler,dlgOpenTest.FileName);
  Reset(myler);
  while not Eof(myler) do
  begin
    Readln(MyLer,sLyn);
    iTel:=Pos(',',sLyn);
    Delete(sLyn,1,iTel);
    iTel:=Pos(',',sLyn);
    Delete(sLyn,1,iTel);
    //Venue seats
    iTel:=Pos(',',sLyn);
    if Tekstra.isNumber(Copy(sLyn,0,iTel-1)) then
    begin
        iVenAverage:=iVenAverage+strToInt(Copy(sLyn,0,iTel-1));
        iVenCount:=iVenCount+1;
    end;
  end;
  CloseFile(myler);

  iTestAverageSeats:=Round(iTestAverageSeats/iTestCount);
  iTestHourAverage:=Round(iTestHourAverage/iTestCount);

  iVenAverage:=Round(iVenAverage/iVenCount);

  if (iTestAverageSeats/iVenAverage)>Round(iTestAverageSeats/iVenAverage) then
    iFinalHours:=Round(iTestAverageSeats/iVenAverage)+1
  else iFinalHours:=Round(iTestAverageSeats/iVenAverage);

  if (iTestHourAverage/60)>Round(iTestHourAverage/60) then
    iTestHourAverage:=Round(iTestHourAverage/60)+1
  else iTestHourAverage:=Round(iTestHourAverage/60);

  iFinalHours:=iFinalHours*iTestHourAverage*(iTestHourAverage*iTestCount);


  MessageDlg('Estimated total hours'+#10+
  //'-----------------------'+#10+
  'Test average seats = '+intToStr(iTestAverageSeats)+#10+
  'Test average hour = '+intToStr(iTestHourAverage)+#10+
  'Venue average seats = '+intToStr(iVenAverage)+#10+
  'Final total hours = '+intToStr(iFinalHours)+#10+
  ''+#10+
  ''+#10+
  'Total Test hours = '+intToStr(iTestHourAverage*iTestCount)+#10,mtInformation,[mbOK],0);


  spinTotalHours.Value:=iFinalHours;






end;

end.//;

//end.
