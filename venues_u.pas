unit venues_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Spin, ExtCtrls, ekstra_u, Buttons;

type
  TfrmVenues = class(TForm)
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
    sGridVenue: TStringGrid;
    btnSave: TButton;
    btnCheck: TButton;
    btnNew: TButton;
    Label41: TLabel;
    btnWhat: TBitBtn;
    procedure setupGrid();
    procedure FormActivate(Sender: TObject);
    procedure sGridVenueKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnLoadClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCheckClick(Sender: TObject);
    function isNumeric(s: string): boolean;
    procedure btnDeleteClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnWhatClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVenues: TfrmVenues;
  Tekstra: ekstra;
  check: boolean;

implementation

{$R *.dfm}

function TfrmVenues.isNumeric(s: string): boolean;
begin
    if (s='1') OR (s='2') OR (s='') OR (s='0')
    then
        isNumeric := true
    else
        isNumeric := false;
end;

procedure Tfrmvenues.setupGrid();
var
  a : integer;
begin
  sGridvenue.Cells[1,0] := 'ID';
  sGridvenue.Cells[1,0] := 'Venue name';
  sGridvenue.Cells[2,0] := 'Capacity';
  sGridvenue.Cells[3,0] := 'Level';
  sGridvenue.ColWidths[0] := 25;
  sGridvenue.ColWidths[1] := 160;
  sGridvenue.ColWidths[2] := 80;
  sGridvenue.ColWidths[3] := 50;
end;

procedure TfrmVenues.FormActivate(Sender: TObject);
begin
    setupGrid();
    btnRefresh.Click;
end;

procedure TfrmVenues.sGridVenueKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
a: integer;
numberOf: integer;
begin
    numberOf:=0;
    if (length(sGridvenue.Cells[1,sGridvenue.RowCount-1])>0) AND
     (length(sGridvenue.Cells[2,sGridvenue.RowCount-1])>0)
    then begin
        for a:=1 to sGridvenue.RowCount-1 do
            begin
                if Tekstra.isNumber(sGridvenue.Cells[0,a])=true then
                    if strToInt(sGridvenue.Cells[0,a])>=numberOf then
                        numberOf:=strToInt(sGridvenue.Cells[0,a]);
             end;
        numberOf:= numberOf+1;
        sGridvenue.Cells[0,sGridvenue.RowCount-1]:=intToStr(numberOf);
        sGridvenue.RowCount := sGridvenue.RowCount + 1;
        setupGrid();
    end;
end;

procedure TfrmVenues.btnRefreshClick(Sender: TObject);
begin
    rgpLoad.Items.Clear;
    Tekstra.FindAll('*.ven',faAnyFile,rgpLoad.Items);
end;

procedure TfrmVenues.btnLoadClick(Sender: TObject);
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
            for a:=1 to sGridvenue.RowCount-1 do
            begin
                for b:=0 to sGridvenue.ColCount-1 do
                begin
                    sGridvenue.Cells[b,a]:='';
                end;
            end;
            sGridvenue.RowCount:=2;
            b:=1;
            filename:= rgpLoad.Items.Strings[rgpLoad.itemindex];
            assignFile(myLer, filename);
            reset(myLer);
            while not EOF(myLer) do
            begin
                readln(myler,sLyn);
                for a:=0 to 3 do
                begin
                    ipos := pos(',',sLyn);
                    sGridvenue.Cells[a,b] := copy(sLyn,0,ipos-1);
                    delete(sLyn,1,ipos);
                end;
                b := b+1;
                sGridvenue.RowCount:= b+1;
            end;
            closefile(myLer);
        end else
            messagedlg('The file you selected does not exists',mtError,[mbOK],0);
    end else
        messagedlg('No item selected',mtError,[mbOK],0);
end;

procedure TfrmVenues.btnSaveClick(Sender: TObject);
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
        filename := filename+'.ven';
        if NOT FileExists(filename) then
        begin
            //The file doesn't exist
            //New file created
            assignFile(myLer,filename);
            rewrite(myler);
            for a:=1 to sGridvenue.RowCount-2 do
            begin
                sLyn:='';
                for b:=0 to sGridvenue.ColCount-1 do
                begin
                    sLyn := sLyn + sGridvenue.Cells[b,a] +',';
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
                for a:=1 to sGridvenue.RowCount-2 do
                begin
                    sLyn:='';
                    for b:=0 to sGridvenue.ColCount-1 do
                    begin
                        sLyn := sLyn + sGridvenue.Cells[b,a] + ',';
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

procedure TfrmVenues.btnCheckClick(Sender: TObject);
var
a : integer ;
begin
    check := true;
    for a:=1 to (sGridvenue.RowCount-2) do
    begin
        if (length(sGridvenue.Cells[1,a])=0) then
        begin
            messagedlg('No venue name at row ' +intToStr(a),mtError,[mbOK],0);
            check:= false;
        end;
        if not (Tekstra.isNumber(sGridvenue.Cells[2,a])) then
        begin
            messagedlg('Capacity should be integer at row ' +intToStr(a),mtError,[mbOK],0);
            check:= false;
        end;
        if not (isNumeric(sGridvenue.Cells[3,a])) then
        begin
            messagedlg('Level can only be {0, 1, 2 or empty} at row ' +intToStr(a),mtError,[mbOK],0);
            check:= false;
        end;
    end;

    if (sGridvenue.RowCount < 3) then
    begin
        messagedlg('No data to check in table',mtError,[mbOK],0);
        check:= false;
    end;
end;

procedure TfrmVenues.btnDeleteClick(Sender: TObject);
var
a,b: integer;
found: boolean;
begin
    found := false;
    for a:=1 to sGridvenue.RowCount-2 do
    begin
        if Tekstra.isNumber(sGridvenue.Cells[0,a]) then
        if strToInt(sGridvenue.Cells[0,a])=nmrDelete.Value then
        begin
            for b:=a to sGridvenue.RowCount-2 do
            begin
                sGridvenue.Cells[0,b]:=sGridvenue.Cells[0,b+1];
                sGridvenue.Cells[1,b]:=sGridvenue.Cells[1,b+1];
                sGridvenue.Cells[2,b]:=sGridvenue.Cells[2,b+1];
                sGridvenue.Cells[3,b]:=sGridvenue.Cells[3,b+1];
            end;
            found:=true;
        end;
    end;
    if found=true then
    begin
        sGridvenue.Cells[0,sGridvenue.RowCount-2]:='';
        sGridvenue.Cells[1,sGridvenue.RowCount-2]:='';
        sGridvenue.Cells[2,sGridvenue.RowCount-2]:='';
        sGridvenue.Cells[3,sGridvenue.RowCount-2]:='';
        sGridvenue.RowCount:=sGridvenue.RowCount-1;
    end else begin
        messagedlg('The ID you entered does not exists',mtError,[mbOK],0);
    end;
end;

procedure TfrmVenues.btnNewClick(Sender: TObject);
var
a,b:integer;
begin
    for a:=1 to sGridvenue.RowCount-1 do
    begin
        for b:=0 to sGridvenue.ColCount-1 do
            begin
                sGridvenue.Cells[b,a]:='';
            end;
        end;
    sGridvenue.RowCount:=2;
    setupGrid();
end;

procedure TfrmVenues.btnWhatClick(Sender: TObject);
begin
    messagedlg('        About the venue''s level'+#10+
    ''+#10+
    'The level indicates the extra time that has'+#10+
    'to be added to a venue at test time.'+#10+
    '(The time it takes to get the pupils in the'+#10+
    '       venue and hand out the tests)'+#10+
    ''+#10+
    'You can keep the cell empty or assign it to'+#10+
    '                   level 0,1 or 2.'+#10+
    ''+#10+
    'Each level''s extra time will be assigned '+#10+
    '     when you set up the final table.',mtInformation,[mbOK],0);
end;

end.
