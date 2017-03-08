unit tests_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Spin, ExtCtrls,ekstra_u, math;

type
  TfrmTests = class(TForm)
    Label41: TLabel;
    pnlLoad: TPanel;
    Label42: TLabel;
    rgpLoad: TRadioGroup;
    btnRefresh: TButton;
    btnLoad: TButton;
    pnlDelete: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    btnDelete: TButton;
    nmrDelete: TSpinEdit;
    sGridTests: TStringGrid;
    btnSave: TButton;
    btnCheck: TButton;
    btnNew: TButton;
    pnlTestStats: TPanel;
    Label3: TLabel;
    btnRef: TButton;
    Label4: TLabel;
    Label5: TLabel;
    lbl9: TLabel;
    Label7: TLabel;
    lbl10: TLabel;
    Label9: TLabel;
    lbl11: TLabel;
    Label11: TLabel;
    lbl12: TLabel;
    lblTotal: TLabel;
    lbl8: TLabel;
    Label15: TLabel;
    lblHours: TLabel;
    Label8: TLabel;
    lbl9S: TLabel;
    lbl10S: TLabel;
    lbl11S: TLabel;
    lbl12S: TLabel;
    lbl8S: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label16: TLabel;
    shp1: TShape;
    procedure btnRefreshClick(Sender: TObject);
    procedure btnLoadClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCheckClick(Sender: TObject);
    procedure setupGrid();
    function isNumeric(s: string): boolean;
    procedure FormActivate(Sender: TObject);
    procedure sGridTestsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRefClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTests: TfrmTests;
  Tekstra: ekstra;
  check: boolean;

implementation

{$R *.dfm}

function TfrmTests.isNumeric(s: string): boolean;
begin
    if (s='8') OR (s='9') OR (s='10') OR (s='11') OR (s='12')
    then
        isNumeric := true
    else
        isNumeric := false;
end;


procedure TfrmTests.setupGrid();
var
a : integer;
begin
    {for a:=1 to (gridS.RowCount-1) do
    begin
        gridS.Cells[0,a] := intToStr(a);
    end ;}
    sGridTests.Cells[0,0] := 'ID';
    sGridTests.Cells[1,0] := 'Grade';
    sGridTests.Cells[2,0] := 'Subject';
    sGridTests.Cells[3,0] := 'Studentcount';
    sGridTests.Cells[4,0] := 'Test time (minutes)';
    sGridTests.ColWidths[0] := 30;
    sGridTests.ColWidths[1] := 80;
    sGridTests.ColWidths[2] := 120;
    sGridTests.ColWidths[3] := 80;
    sGridTests.ColWidths[4] := 100;
end;


procedure TfrmTests.btnRefreshClick(Sender: TObject);
begin
    rgpLoad.Items.Clear;
    Tekstra.FindAll('*.tst',faAnyFile,rgpLoad.Items);
end;

procedure TfrmTests.btnLoadClick(Sender: TObject);
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
            for a:=1 to sGridTests.RowCount-1 do
            begin
                for b:=0 to sGridTests.ColCount-1 do
                begin
                    sGridTests.Cells[b,a]:='';
                end;
            end;
            sGridTests.RowCount:=2;
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
                    sGridTests.Cells[a,b] := copy(sLyn,0,ipos-1);
                    delete(sLyn,1,ipos);
                end;
                b := b+1;
                sGridTests.RowCount:= b+1;
            end;
            closefile(myLer);
            btnRef.Click;
        end else
            messagedlg('The file you selected does not exists',mtError,[mbOK],0);
    end else
        messagedlg('No item selected',mtError,[mbOK],0);
end;

procedure TfrmTests.btnSaveClick(Sender: TObject);
var
filename,sLyn: string;
myLer: TextFile;
a,b: integer;
begin
    btnCheck.Click;
    if (check=false) then
        messagedlg('Cannot save file because the data is incorrect'+#10+'Correct your mistakes and try again',mtError,[mbOK],0)
    else begin
        filename := inputbox('Save venues' ,'Please enter the filename: ','');
        while (length(filename)<1) do
        begin
            filename := inputbox('Save venues','No input given' + #10 +'Please enter the filename again: ','');
        end;
        filename := filename+'.tst';
        if NOT FileExists(filename) then
        begin
            //The file doesn't exist
            //New file created
            assignFile(myLer,filename);
            rewrite(myler);
            for a:=1 to sGridTests.RowCount-2 do
            begin
                sLyn:='';
                for b:=0 to sGridTests.ColCount-1 do
                begin
                    sLyn := sLyn + sGridTests.Cells[b,a] +',';
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
                for a:=1 to sGridTests.RowCount-2 do
                begin
                    sLyn:='';
                    for b:=0 to sGridTests.ColCount-1 do
                    begin
                        sLyn := sLyn + sGridTests.Cells[b,a] + ',';
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

procedure TfrmTests.btnCheckClick(Sender: TObject);
var
a : integer ;
begin
    check := true;
    for a:=1 to (sGridTests.RowCount-2) do
    begin
        if (isNumeric(sGridTests.Cells[1,a])=false) then
        begin
            messagedlg('Grade should be {8,9,10,11 or 12} at row ' +intToStr(a),mtError,[mbOK],0);
            check:= false;
        end;
        if (length(sGridTests.Cells[2,a])<1) then
        begin
            messagedlg('No subject entered at row ' +intToStr(a),mtError,[mbOK],0);
            check:= false;
        end;
        if not (Tekstra.isNumber(sGridTests.Cells[3,a])) then
        begin
            messagedlg('Test number should be integer at row ' +intToStr(a),mtError,[mbOK],0);
            check:= false;
        end;
        if not (Tekstra.isNumber(sGridTests.Cells[4,a])) then
        begin
            messagedlg('Time should be integer at row ' +intToStr(a),mtError,[mbOK],0);
            check:= false;
        end;
    end;
    if (sGridTests.RowCount < 3) then
    begin
        messagedlg('No data to check in table',mtError,[mbOK],0);
        check:= false;
    end;
end;

procedure TfrmTests.FormActivate(Sender: TObject);
begin
    setupGrid();
    btnRefresh.Click;
end;

procedure TfrmTests.sGridTestsKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
a: integer;
numberOf: integer;
begin
    numberOf:=0;
    if (length(sGridTests.Cells[1,sGridTests.RowCount-1])>0) AND
     (length(sGridTests.Cells[2,sGridTests.RowCount-1])>0) AND
    (length(sGridTests.Cells[3,sGridTests.RowCount-1])>0) AND
    (length(sGridTests.Cells[4,sGridTests.RowCount-1])>0)
    then begin
        for a:=1 to sGridTests.RowCount-1 do
            begin
                if Tekstra.isNumber(sGridTests.Cells[0,a])=true then
                    if strToInt(sGridTests.Cells[0,a])>=numberOf then
                        numberOf:=strToInt(sGridTests.Cells[0,a]);
             end;
        numberOf:= numberOf+1;
        sGridTests.Cells[0,sGridTests.RowCount-1]:=intToStr(numberOf);
        sGridTests.RowCount := sGridTests.RowCount + 1;
        setupGrid();
    end;
end;

procedure TfrmTests.btnDeleteClick(Sender: TObject);
var
a,b: integer;
found: boolean;
begin
    found := false;
    for a:=1 to sGridTests.RowCount-2 do
    begin
        if Tekstra.isNumber(sGridTests.Cells[0,a]) then
        if strToInt(sGridTests.Cells[0,a])=nmrDelete.Value then
        begin
            for b:=a to sGridTests.RowCount-2 do
            begin
                sGridTests.Cells[0,b]:=sGridTests.Cells[0,b+1];
                sGridTests.Cells[1,b]:=sGridTests.Cells[1,b+1];
                sGridTests.Cells[2,b]:=sGridTests.Cells[2,b+1];
                sGridTests.Cells[3,b]:=sGridTests.Cells[3,b+1];
                sGridTests.Cells[4,b]:=sGridTests.Cells[4,b+1];
            end;
            found:=true;
        end;
    end;
    if found=true then
    begin
        sGridTests.Cells[0,sGridTests.RowCount-2]:='';
        sGridTests.Cells[1,sGridTests.RowCount-2]:='';
        sGridTests.Cells[2,sGridTests.RowCount-2]:='';
        sGridTests.Cells[3,sGridTests.RowCount-2]:='';
        sGridTests.Cells[4,sGridTests.RowCount-2]:='';
        sGridTests.RowCount:=sGridTests.RowCount-1;
    end else begin
        messagedlg('The ID you entered does not exists',mtError,[mbOK],0);
    end;
end;

procedure TfrmTests.btnRefClick(Sender: TObject);
var
i8,i9,i10,i11,i12,a,b,total: integer;
s8,s9,s10,s11,s12: integer;
s: string;
begin
    btnCheck.Click;
    i8:=0;
    i9:=0;
    i10:=0;
    i11:=0;
    i12:=0;
    s8:=0;
    s9:=0;
    s10:=0;
    s11:=0;
    s12:=0;

    if check=false then
        messagedlg('Cannot get stats because there''s incorrect data in the table',mtError,[mbOK],0)
    else begin
        for a:=1 to sGridTests.RowCount-2 do
        begin
            s:=sGridTests.Cells[1,a];
            if s='8' then
            begin
                i8:=i8+strToInt(sGridTests.Cells[4,a]);
                s8:=s8+1;
            end
            else if s='9' then
            begin
                i9:=i9+strToInt(sGridTests.Cells[4,a]);
                s9:=s9+1;
            end
            else if s='10' then
            begin
                i10:=i10+strToInt(sGridTests.Cells[4,a]);
                s10:=s10+1;
            end
            else if s='11' then
            begin
                i11:=i11+strToInt(sGridTests.Cells[4,a]);
                s11:=s11+1;
            end
            else if s='12' then
            begin
                i12:=i12+strToInt(sGridTests.Cells[4,a]);
                s12:=s12+1;
            end;
        end;

    lbl8.Caption:=intToStr(i8);
    lbl9.Caption:=intToStr(i9);
    lbl10.Caption:=intToStr(i10);
    lbl11.Caption:=intToStr(i11);
    lbl12.Caption:=intToStr(i12);

    lbl8S.Caption:=intToStr(s8);
    lbl9S.Caption:=intToStr(s9);
    lbl10S.Caption:=intToStr(s10);
    lbl11S.Caption:=intToStr(s11);
    lbl12S.Caption:=intToStr(s12);

    total:=i8+i9+i10+i11+i12;
    lblTotal.Caption:=intToStr(total);
    lblHours.Caption:=FloatToStr(RoundTo(total/60,-2));
    end;
end;

end.
