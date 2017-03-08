unit final_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Grids, ekstra_u, math, Spin, cal_u,
  Gauges, Menus, FileCtrl, Outline, DirOutln, AxCtrls, OleCtrls, VCF1,
  CustomizeDlg, Buttons;

type
  TfrmFinal = class(TForm)
    page: TPageControl;
    tabTests: TTabSheet;
    tabVenues: TTabSheet;
    tabSupervisors: TTabSheet;
    gridS: TStringGrid;
    sGridVenue: TStringGrid;
    sGridTests: TStringGrid;
    pnlSelectFiles: TPanel;
    rgpLoadTests: TRadioGroup;
    rgpLoadVenues: TRadioGroup;
    rgpLoadSupervisors: TRadioGroup;
    Label3: TLabel;
    btnLoad: TButton;
    Button2: TButton;
    Button4: TButton;
    Button5: TButton;
    btnLoadAll: TButton;
    lblexpand: TLabel;
    tmrexpand: TTimer;
    tmrShrink: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Label12: TLabel;
    tabStats: TTabSheet;
    shp1: TShape;
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
    Label13: TLabel;
    Shape1: TShape;
    Label14: TLabel;
    Label17: TLabel;
    lblH1: TLabel;
    Label19: TLabel;
    lblH2: TLabel;
    Label21: TLabel;
    lblH3: TLabel;
    lblStotal: TLabel;
    lblH0: TLabel;
    Label27: TLabel;
    lblStotalH: TLabel;
    Label29: TLabel;
    lblC1: TLabel;
    lblC2: TLabel;
    lblC3: TLabel;
    lblC0: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Shape2: TShape;
    Label18: TLabel;
    Label20: TLabel;
    lblSeats: TLabel;
    lblVenues: TLabel;
    Label44: TLabel;
    btnRef: TButton;
    pnlReview: TPanel;
    Label22: TLabel;
    lblReview: TLabel;
    tmr2S: TTimer;
    tmr2E: TTimer;
    pnlDays: TPanel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    edtDays: TSpinEdit;
    edtSessions: TSpinEdit;
    edtHours: TSpinEdit;
    Label32: TLabel;
    btnLoadSettings: TButton;
    Label33: TLabel;
    lblHPC: TLabel;
    Label30: TLabel;
    lblTestnmrs: TLabel;
    btnRecom: TButton;
    lblTotalTests: TLabel;
    pnlCal: TPanel;
    Label31: TLabel;
    rgpDays: TRadioGroup;
    prog: TGauge;
    Label34: TLabel;
    sGridDays: TStringGrid;
    lblA9: TLabel;
    lblA10: TLabel;
    lblA11: TLabel;
    lblA12: TLabel;
    lblA8: TLabel;
    Label43: TLabel;
    lblATotal: TLabel;
    pnlChoose: TPageControl;
    tabTest: TTabSheet;
    tabVenue: TTabSheet;
    tabSuper: TTabSheet;
    tabAll: TTabSheet;
    sGridVenues: TStringGrid;
    sGridSupervisors: TStringGrid;
    sGridAll: TStringGrid;
    Label38: TLabel;
    Label41: TLabel;
    Label40: TLabel;
    Label42: TLabel;
    pnlManual: TPanel;
    Label45: TLabel;
    Label46: TLabel;
    tmrClose: TTimer;
    tmrOpen: TTimer;
    popTests: TPopupMenu;
    Addtest1: TMenuItem;
    Removetest1: TMenuItem;
    popAll: TPopupMenu;
    Add1: TMenuItem;
    AddSupervisor1: TMenuItem;
    rdbTest: TRadioButton;
    rdbSupervisors: TRadioButton;
    sGridSelect: TStringGrid;
    btnMaximizeEdit: TButton;
    Panel1: TPanel;
    lblSession: TLabel;
    Label48: TLabel;
    Label55: TLabel;
    lblDay: TLabel;
    lblVenue: TLabel;
    Label58: TLabel;
    Label49: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    btnRefresh: TButton;
    mm1: TMainMenu;
    File1: TMenuItem;
    Edit1: TMenuItem;
    View1: TMenuItem;
    MaximizeEditing1: TMenuItem;
    Savefinalstep1: TMenuItem;
    Loadfinalstep1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    dlgLoad: TOpenDialog;
    lbl3: TLabel;
    lbl4: TLabel;
    edtSuper: TSpinEdit;
    cmbInline: TComboBox;
    lblPeriods: TLabel;
    btnOpenView: TButton;
    tmrFlash: TTimer;
    shpOne: TShape;
    shpTwo: TShape;
    shpThree: TShape;
    Excelspreadsheets1: TMenuItem;
    pnlChooseInput: TPanel;
    bt1: TButton;
    bt2: TButton;
    bt3: TButton;
    bt4: TButton;
    bt5: TButton;
    bt6: TButton;
    bt7: TButton;
    bt8: TButton;
    bt9: TButton;
    bt10: TButton;
    lbl5: TLabel;
    btnAdd: TBitBtn;
    btnRemove: TBitBtn;
    pnlEasyInput: TPanel;
    lstInsert: TListBox;
    seChoose: TSpinEdit;
    lblID: TLabel;
    shp2: TShape;
    shp6: TShape;
    shp3: TShape;
    shp4: TShape;
    shp5: TShape;
    shp7: TShape;
    shp8: TShape;
    shp9: TShape;
    shp10: TShape;
    shp11: TShape;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    lbl19: TLabel;
    lbl20: TLabel;
    btClose: TButton;
    bt11: TButton;
    lblTop: TLabel;
    lbl21: TLabel;
    lblFormat: TLabel;
    cbbSupers: TComboBox;
    btGenerate: TButton;
    lbl22: TLabel;
    pnl2: TPanel;
    pnl3: TPanel;
    pnl4: TPanel;
    pnl6: TPanel;
    shp12: TShape;
    lblSessie: TLabel;
    chk1: TCheckBox;
    pnlView: TPanel;
    bt12: TButton;
    redTests: TRichEdit;
    ools1: TMenuItem;
    Schedule1: TMenuItem;
    Create1: TMenuItem;
    View2: TMenuItem;
    N2: TMenuItem;
    CreateView1: TMenuItem;
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    ts3: TTabSheet;
    redSupervisors: TRichEdit;
    redRoster: TRichEdit;
    Resolution1: TMenuItem;
    N1600X9001: TMenuItem;
    N1280X10241: TMenuItem;
    N1280X8001: TMenuItem;
    Setupdaynames1: TMenuItem;
    pnlSet: TPanel;
    btDo: TButton;
    edtMain: TEdit;
    edtSub: TEdit;
    lbl23: TLabel;
    lbl24: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    lbl25: TLabel;
    lbl26: TLabel;
    lbl27: TLabel;
    lbl28: TLabel;
    lbl29: TLabel;
    btDelete: TButton;
    ts4: TTabSheet;
    redSup: TRichEdit;
    edt5: TEdit;
    lbl30: TLabel;
    lbl31: TLabel;
    edt6: TEdit;
    btSup: TButton;
    lbl32: TLabel;
    lbl33: TLabel;
    lbl34: TLabel;
    lbl35: TLabel;
    lbl36: TLabel;
    edt7: TEdit;
    edt8: TEdit;
    edt9: TEdit;
    edt10: TEdit;
    shp13: TShape;
    shp14: TShape;
    lbl37: TLabel;
    bt13: TButton;
    stat: TStatusBar;
    pnl1: TPanel;
    ts5: TTabSheet;
    redMain: TRichEdit;
    btn2: TBitBtn;
    procedure Button5Click(Sender: TObject);
    procedure btnLoadClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnLoadAllClick(Sender: TObject);
    procedure setupGrid();
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnRefClick(Sender: TObject);
    function check(): boolean;
    function isNumericT(s:string): boolean;
    function isNumericS(s:string): boolean;
    function isNumeric(s:string): boolean;
    procedure tmrexpandTimer(Sender: TObject);
    procedure pnlSelectFilesClick(Sender: TObject);
    procedure tmrShrinkTimer(Sender: TObject);
    procedure getValues();
    procedure tmr2STimer(Sender: TObject);
    procedure tmr2ETimer(Sender: TObject);
    procedure pnlReviewClick(Sender: TObject);
    procedure edtDaysChange(Sender: TObject);
    procedure btnRecomClick(Sender: TObject);
    procedure btnLoadSettingsClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rgpDaysClick(Sender: TObject);
    procedure pnlManualClick(Sender: TObject);
    procedure tmrCloseTimer(Sender: TObject);
    procedure tmrOpenTimer(Sender: TObject);
    procedure Addtest1Click(Sender: TObject);
    procedure rdbTestClick(Sender: TObject);
    procedure Add1Click(Sender: TObject);
    procedure sGridSelectDblClick(Sender: TObject);
    procedure AddSupervisor1Click(Sender: TObject);
    procedure btnMaximizeEditClick(Sender: TObject);
    procedure sGridAllClick(Sender: TObject);
    procedure MaximizeEditing1Click(Sender: TObject);
    procedure Savefinalstep1Click(Sender: TObject);
    procedure Loadfinalstep1Click(Sender: TObject);
    procedure sGridAllSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure edtSuperExit(Sender: TObject);
    procedure cmbInlineExit(Sender: TObject);
    procedure cmbInlineSelect(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnOpenViewClick(Sender: TObject);
    procedure tmrFlashTimer(Sender: TObject);
    procedure shpOneMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Excelspreadsheets1Click(Sender: TObject);
    procedure sGridAllMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure bt1Click(Sender: TObject);
    procedure bt2Click(Sender: TObject);
    procedure bt3Click(Sender: TObject);
    procedure bt4Click(Sender: TObject);
    procedure bt5Click(Sender: TObject);
    procedure bt6Click(Sender: TObject);
    procedure bt7Click(Sender: TObject);
    procedure bt8Click(Sender: TObject);
    procedure bt9Click(Sender: TObject);
    procedure bt10Click(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure bt11Click(Sender: TObject);
    procedure cbbSupersSelect(Sender: TObject);
    procedure sGridSupervisorsSelectCell(Sender: TObject; ACol,
      ARow: Integer; var CanSelect: Boolean);
    procedure btGenerateClick(Sender: TObject);
    procedure cbbSupersClick(Sender: TObject);
    procedure lstInsertDblClick(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure sGridSupervisorsMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure bt12Click(Sender: TObject);
    procedure View2Click(Sender: TObject);
    procedure Create1Click(Sender: TObject);

    procedure setupScreen(i:integer);
    procedure sGridAllMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N1600X9001Click(Sender: TObject);
    procedure N1280X10241Click(Sender: TObject);
    procedure N1280X8001Click(Sender: TObject);
    procedure Setupdaynames1Click(Sender: TObject);
    procedure btDoClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure sGridVenuesSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure sGridVenuesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnRemoveClick(Sender: TObject);
    procedure CreateView1Click(Sender: TObject);
    procedure btSupClick(Sender: TObject);
    procedure bt13Click(Sender: TObject);
    procedure sGridVenuesMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
    procedure CMDialogKey(var msg: TCMDialogKey); message CM_DIALOGKEY;
  public
    { Public declarations }
  end;

var
  frmFinal: TfrmFinal;
  Tekstra: ekstra;
  bOne,bTwo,bThree,bFour,bSize: boolean;
  iVenues: array[0..1000,0..2] of integer;
  iTests: array[0..1000,0..3] of integer;
  iSuper: array[0..1000,0..2] of integer;
  //iCalendar: TMDarray;
  MyCalendar: calendar;
  SelectRow,SelectCol:integer;
  iStation:Integer;
  BoolmouseUp:Boolean;
  boolLoaded:Boolean;
  BoolMouseUp2:Boolean;

implementation

uses Rooster_u;

{$R *.dfm}

procedure TfrmFinal.setupScreen(i:integer);
var
  iWidth,iHeight:Integer;
begin
  iWidth:=Screen.Width;
  iHeight:=Screen.Height;
  frmFinal.Align:=alClient;

  if (((Screen.Height=1024) and (screen.Width=1280)) OR (i=2)) then
  begin
    //pnlCal
    pnlCal.Top:=0;
    pnlCal.Left:=0;
    pnlCal.Height:=801;
    pnlCal.Width:=1264;
    //pnlEasyInput
    pnlEasyInput.top:=0;
    pnlEasyInput.Left:=8;
    pnlEasyInput.Height:=361;
    pnlEasyInput.Width:=1265;
    //PnlView
    pnlView.top:=0;
    pnlView.Left:=0;
    pnlView.Height:=737;
    pnlView.Width:=1257;
    //PnlCal Inside
    btGenerate.Left:=856;
    btGenerate.Top:=368;
    btnOpenView.Left:=1168;
    btnOpenView.Top:=328;
    cmbInline.Top:=368;
    cmbInline.Left:=656;
    cmbInline.Height:=21 ;
    cmbInline.Width:=145;
    Label31.Left:=916;
    Label31.Top:=56;
    Label42.Left:=236;
    Label42.Top:=336;
    pnlChoose.Left:= 16;
    pnlChoose.Top:= 360;
    pnlChoose.Height:= 601;
    pnlChoose.Width:= 1185;
    pnlChooseInput.Left:= 480;
    pnlChooseInput.Top:=448 ;
    pnlChooseInput.Height:= 257;
    pnlChooseInput.Width:=465 ;
    pnlDays.Left:=16 ;
    pnlDays.Top:=64 ;
    pnlDays.Height:= 257;
    pnlDays.Width:=617 ;
    pnlManual.Left:=1208 ;
    pnlManual.Top:= 360;
    pnlManual.Height:=601 ;
    pnlManual.Width:=57 ;
    pnlReview.Left:=648 ;
    pnlReview.Top:= 8;
    pnlReview.Height:=41 ;
    pnlReview.Width:= 617;
    pnlSelectFiles.Left:=16 ;
    pnlSelectFiles.Top:= 8;
    pnlSelectFiles.Height:= 41;
    pnlSelectFiles.Width:= 617;
    rgpDays.Left:=648 ;
    rgpDays.Top:= 80;
    rgpDays.Height:=241 ;
    rgpDays.Width:= 617;
    shpThree.Left:= 650;
    shpThree.Top:= 60;
    //PnlDays Inside
    btnLoadSettings.Left:= 352;
    btnLoadSettings.Top:= 216;
    btnRecom.Left:= 144;
    btnRecom.Top:= 216;
    edtDays.Left:= 224;
    edtDays.Top:=40 ;
    edtHours.Left:= 392;
    edtHours.Top:= 72;
    edtSessions.Left:=224 ;
    edtSessions.Top:=72 ;
    edtSuper.Left:=312 ;
    edtSuper.Top:= 144;
    Label24.Left:= 260;
    Label24.Top:= 8;
    Label25.Left:= 88;
    Label25.Top:=40 ;
    Label26.Left:= 88;
    Label26.Top:= 72;
    Label28.Left:= 352;
    Label28.Top:= 72;
    Label30.Left:=200 ;
    Label30.Top:= 104;
    Label32.Left:=520 ;
    Label32.Top:= 72;
    Label33.Left:=200 ;
    Label33.Top:= 120;
    Label34.Left:= 256;
    Label34.Top:=176 ;
    lbl3.Left:=168;
    lbl3.Top:= 144;
    lbl4.Left:= 392;
    lbl4.Top:=144 ;
    lblHPC.Left:= 384;
    lblHPC.Top:= 120;
    lblTestnmrs.Left:=384 ;
    lblTestnmrs.Top:= 104;
    prog.Left:= 208;
    prog.Top:= 192;
    shpTwo.Left:=8 ;
    shpTwo.Top:=8 ;
    //Inside PnlManual
    Panel1.Left:=16 ;
    Panel1.Top:= 48;
    Panel1.Height:=57 ;
    Panel1.Width:= 377;
    rdbSupervisors.Left:=224 ;
    rdbSupervisors.Top:=112 ;
    rdbTest.Left:=56 ;
    rdbTest.Top:=112 ;
    sGridSelect.Left:=16 ;
    sGridSelect.Top:= 136;
    sGridSelect.Height:=449 ;
    sGridSelect.Width:= 377;
    //PnlEasyInput Inside
    btClose.Left:=1232;
    btClose.Top:=16;
    lbl21.Left:=832;
    lbl21.Top:=40;
    lblFormat.Left:=872;
    lblFormat.Top:=40;
    lblTop.Left:=16;
    lblTop.Top:=24;
    lstInsert.Left:=24;
    lstInsert.Top:=64;
    lstInsert.Height:=273;
    lstInsert.Width:=1209;
    pnl2.Left:=264;
    pnl2.Top:=56;
    pnl2.Height:=289;
    pnl2.Width:=1;
    pnl3.Left:=504;
    pnl3.Top:=56;
    pnl3.Height:=289;
    pnl3.Width:=1;
    pnl4.Left:=744;
    pnl4.Top:=56;
    pnl4.Height:=289;
    pnl4.Width:=1;
    pnl6.Left:=984;
    pnl6.Top:=56;
    pnl6.Height:=289;
    pnl6.Width:=1;
    shp12.Left:=16;
    shp12.Top:=56;
    shp12.Height:=289;
    shp12.Width:=1225;

    pgc1.Height:=770;
    pgc1.Align:=alBottom;
    //DO pnlView!!!
  end else if (((Screen.Height=800) and (screen.Width=1280)) OR (i=3)) then
  begin
//pnlCal
    pnlCal.Top:=0;
    pnlCal.Left:=0;
    pnlCal.Height:=801;
    pnlCal.Width:=1264;

    //pnlEasyInput
    pnlEasyInput.top:=0;
    pnlEasyInput.Left:=8;
    pnlEasyInput.Height:=361;
    pnlEasyInput.Width:=1265;

    //PnlView
    pnlView.top:=0;
    pnlView.Left:=0;
    pnlView.Height:=737;
    pnlView.Width:=1257;

    //PnlCal Inside
    btGenerate.Left:=856;
    btGenerate.Top:=368;

    btnOpenView.Left:=1168;
    btnOpenView.Top:=328;

    cmbInline.Top:=368;
    cmbInline.Left:=656;
    cmbInline.Height:=21 ;
    cmbInline.Width:=145;

    Label31.Left:=924;
    Label31.Top:=80;

    Label42.Left:=236;
    Label42.Top:=336;

    pnlChoose.Left:=0;
    pnlChoose.Top:=216;
    pnlChoose.Height:=537;
    pnlChoose.Width:= 1185;

    pnlChooseInput.Left:= 480;
    pnlChooseInput.Top:=448 ;
    pnlChooseInput.Height:= 257;
    pnlChooseInput.Width:=465 ;

    pnlDays.Left:=0;
    pnlDays.Top:=48;
    pnlDays.Height:= 161;
    pnlDays.Width:=617 ;

    pnlManual.Left:=1224;
    pnlManual.Top:=208;
    pnlManual.Height:=545;
    pnlManual.Width:=57 ;

    pnlReview.Left:=664 ;
    pnlReview.Top:= 0;
    pnlReview.Height:=41 ;
    pnlReview.Width:= 617;

    pnlSelectFiles.Left:=0 ;
    pnlSelectFiles.Top:= 0;
    pnlSelectFiles.Height:= 41;
    pnlSelectFiles.Width:= 617;

    rgpDays.Left:=664;
    rgpDays.Top:=40;
    rgpDays.Height:=169;
    rgpDays.Width:=617;

    shpThree.Left:=626;
    shpThree.Top:=52;

    //PnlDays Inside
    btnLoadSettings.Left:= 344;
    btnLoadSettings.Top:= 128;

    btnRecom.Left:= 136;
    btnRecom.Top:= 128;

    edtDays.Left:= 280;
    edtDays.Top:=8;

    edtHours.Left:= 448;
    edtHours.Top:= 40;

    edtSessions.Left:=280;
    edtSessions.Top:=40;

    edtSuper.Left:=184;
    edtSuper.Top:=96;

    Label24.Left:= 36;
    Label24.Top:= 8;

    Label25.Left:= 144;
    Label25.Top:=8;

    Label26.Left:=144;
    Label26.Top:=40;

    Label28.Left:=408;
    Label28.Top:=40;

    Label30.Left:=200;
    Label30.Top:=64;

    Label32.Left:=576;
    Label32.Top:=40;

    Label33.Left:=200;
    Label33.Top:=80;

    Label34.Left:=432;
    Label34.Top:=88;

    lbl3.Left:=40;
    lbl3.Top:=96;

    lbl4.Left:=264;
    lbl4.Top:=96;

    lblHPC.Left:= 384;
    lblHPC.Top:= 80;

    lblTestnmrs.Left:=384;
    lblTestnmrs.Top:=64;

    prog.Left:= 384;
    prog.Top:= 104;

    shpTwo.Left:=8;
    shpTwo.Top:=8;

    //Inside PnlManual
    Panel1.Left:=16 ;
    Panel1.Top:= 48;
    Panel1.Height:=57 ;
    Panel1.Width:= 377;

    rdbSupervisors.Left:=224 ;
    rdbSupervisors.Top:=112 ;

    rdbTest.Left:=56 ;
    rdbTest.Top:=112 ;

    sGridSelect.Left:=16 ;
    sGridSelect.Top:= 136;
    sGridSelect.Height:=393;
    sGridSelect.Width:= 377;

    //PnlEasyInput Inside
    btClose.Left:=1232;
    btClose.Top:=16;

    lbl21.Left:=832;
    lbl21.Top:=40;

    lblFormat.Left:=872;
    lblFormat.Top:=40;

    lblTop.Left:=16;
    lblTop.Top:=24;

    lstInsert.Left:=24;
    lstInsert.Top:=64;
    lstInsert.Height:=273;
    lstInsert.Width:=1209;

    pnl2.Left:=264;
    pnl2.Top:=56;
    pnl2.Height:=289;
    pnl2.Width:=1;

    pnl3.Left:=504;
    pnl3.Top:=56;
    pnl3.Height:=289;
    pnl3.Width:=1;

    pnl4.Left:=744;
    pnl4.Top:=56;
    pnl4.Height:=289;
    pnl4.Width:=1;

    pnl6.Left:=984;
    pnl6.Top:=56;
    pnl6.Height:=289;
    pnl6.Width:=1;

    shp12.Left:=16;
    shp12.Top:=56;
    shp12.Height:=289;
    shp12.Width:=1225;

    pgc1.Height:=600;
    redSup.Height:=pgc1.Height-pnl1.Height-20;
    redRoster.Height:=pgc1.Height-pnlSet.Height-20;
    //pgc1.Align:=alBottom;
    //shp14.SendToBack;




  end else if (((Screen.Height=900) and (screen.Width=1600)) OR (i=1)) then
  begin
//pnlCal
    pnlCal.Top:=0;
    pnlCal.Left:=0;
    pnlCal.Height:=801;
    pnlCal.Width:=1264;

    //pnlEasyInput
    pnlEasyInput.top:=0;
    pnlEasyInput.Left:=176;
    pnlEasyInput.Height:=361;
    pnlEasyInput.Width:=1265;

    //PnlView
    pnlView.top:=0;
    pnlView.Left:=0;
    pnlView.Height:=737;
    pnlView.Width:=1257;

    //PnlCal Inside
    btGenerate.Left:=856;
    btGenerate.Top:=368;

    btnOpenView.Left:=1168;
    btnOpenView.Top:=328;

    cmbInline.Top:=368;
    cmbInline.Left:=656;
    cmbInline.Height:=21 ;
    cmbInline.Width:=145;

    Label31.Left:=924;
    Label31.Top:=80;

    Label42.Left:=236;
    Label42.Top:=336;

    pnlChoose.Left:=8;
    pnlChoose.Top:=304;
    pnlChoose.Height:=545;
    pnlChoose.Width:= 1521;

    pnlChooseInput.Left:= 480;
    pnlChooseInput.Top:=448 ;
    pnlChooseInput.Height:= 257;
    pnlChooseInput.Width:=465 ;

    pnlDays.Left:=24;
    pnlDays.Top:=48;
    pnlDays.Height:= 249;
    pnlDays.Width:=769;

    pnlManual.Left:=1536;
    pnlManual.Top:=304;
    pnlManual.Height:=545;
    pnlManual.Width:=57 ;

    pnlReview.Left:=920;
    pnlReview.Top:= 0;
    pnlReview.Height:=41 ;
    pnlReview.Width:= 617;

    pnlSelectFiles.Left:=56;
    pnlSelectFiles.Top:= 0;
    pnlSelectFiles.Height:= 41;
    pnlSelectFiles.Width:= 617;

    rgpDays.Left:=824;
    rgpDays.Top:=40;
    rgpDays.Height:=257;
    rgpDays.Width:=769;

    shpThree.Left:=802;
    shpThree.Top:=44;

    //PnlDays Inside
    btnLoadSettings.Left:= 392;
    btnLoadSettings.Top:= 208;

    btnRecom.Left:= 184;
    btnRecom.Top:= 208;

    edtDays.Left:= 152;
    edtDays.Top:=40;

    edtHours.Left:=320;
    edtHours.Top:= 80;

    edtSessions.Left:=152;
    edtSessions.Top:=80;

    edtSuper.Left:=152;
    edtSuper.Top:=136;

    Label24.Left:= 292;
    Label24.Top:= 8;

    Label25.Left:= 16;
    Label25.Top:=40;

    Label26.Left:=16;
    Label26.Top:=80;

    Label28.Left:=280;
    Label28.Top:=80;

    Label30.Left:=512;
    Label30.Top:=48;

    Label32.Left:=448;
    Label32.Top:=80;

    Label33.Left:=512;
    Label33.Top:=80;

    Label34.Left:=560;
    Label34.Top:=112;

    lbl3.Left:=8;
    lbl3.Top:=136;

    lbl4.Left:=232;
    lbl4.Top:=136;

    lblHPC.Left:= 696;
    lblHPC.Top:= 80;

    lblTestnmrs.Left:=696;
    lblTestnmrs.Top:=48;

    prog.Left:=512;
    prog.Top:=128;

    shpTwo.Left:=8;
    shpTwo.Top:=8;

    //Inside PnlManual
    Panel1.Left:=16 ;
    Panel1.Top:= 48;
    Panel1.Height:=57 ;
    Panel1.Width:= 377;

    rdbSupervisors.Left:=224 ;
    rdbSupervisors.Top:=112 ;

    rdbTest.Left:=56 ;
    rdbTest.Top:=112 ;

    sGridSelect.Left:=16 ;
    sGridSelect.Top:= 136;
    sGridSelect.Height:=393;
    sGridSelect.Width:= 377;

    //PnlEasyInput Inside
    btClose.Left:=1232;
    btClose.Top:=16;

    lbl21.Left:=832;
    lbl21.Top:=40;

    lblFormat.Left:=872;
    lblFormat.Top:=40;

    lblTop.Left:=16;
    lblTop.Top:=24;

    lstInsert.Left:=24;
    lstInsert.Top:=64;
    lstInsert.Height:=273;
    lstInsert.Width:=1209;

    pnl2.Left:=264;
    pnl2.Top:=56;
    pnl2.Height:=289;
    pnl2.Width:=1;

    pnl3.Left:=504;
    pnl3.Top:=56;
    pnl3.Height:=289;
    pnl3.Width:=1;

    pnl4.Left:=744;
    pnl4.Top:=56;
    pnl4.Height:=289;
    pnl4.Width:=1;

    pnl6.Left:=984;
    pnl6.Top:=56;
    pnl6.Height:=289;
    pnl6.Width:=1;

    shp12.Left:=16;
    shp12.Top:=56;
    shp12.Height:=289;
    shp12.Width:=1225;

    pgc1.Height:=770;
    pgc1.Align:=alBottom;

    end else
    begin
      MessageDlg('Screen resolution not recognized'+#10+'Select a resolution that fits you'+
      #10+'Main menu->Edit->Resolution',mtWarning,[mbOK],0);
    end;

    pnlView.Align:=alClient;






end;

procedure TfrmFinal.getValues();
var
a,b,iSeats: integer;
i0,i1,i2,i3,c0,c1,c2,c3:integer;
begin
    //Get iVenues's values
    iSeats:=0;
    for a:=1 to sGridVenue.RowCount-2 do
    begin
        iVenues[a-1,0]:=strToInt(sGridVenue.Cells[0,a]);
        iVenues[a-1,1]:=strToInt(sGridVenue.Cells[2,a]);
        if sGridVenue.Cells[3,a]='' then
        begin
          iVenues[a-1,2]:=0;
          sGridVenue.Cells[3,a]:='0';
        end else iVenues[a-1,2]:=strToInt(sGridVenue.Cells[3,a]);
       //messagedlg(sGridVenue.Cells[0,a]+' '+sGridVenue.Cells[2,a]+' '+sGridVenue.Cells[3,a],mtInformation,[mbOK],0);
    end;

    //Get iTests's values
    for a:=1 to sGridTests.RowCount-2 do
    begin
       iTests[a-1,0]:=strToInt(sGridTests.Cells[0,a]);
       iTests[a-1,1]:=strToInt(sGridTests.Cells[1,a]);
       iTests[a-1,2]:=strToInt(sGridTests.Cells[3,a]);
       iTests[a-1,3]:=strToInt(sGridTests.Cells[4,a]);
       //messagedlg(sGridVenue.Cells[0,a]+' '+sGridVenue.Cells[2,a]+' '+sGridVenue.Cells[3,a],mtInformation,[mbOK],0);
    end;

    //Get iSuper's values
    for a:=1 to gridS.RowCount-2 do
    begin
       iSuper[a-1,0]:=strToInt(gridS.Cells[0,a]);
       iSuper[a-1,1]:=strToInt(gridS.Cells[3,a]);
       if gridS.Cells[4,a]='' then
        begin
          iSuper[a-1,2]:=0;
          gridS.Cells[4,a]:='0';
        end else iSuper[a-1,2]:=strToInt(gridS.Cells[4,a]);
    end;

    i0:=0;
    i1:=0;
    i2:=0;
    i3:=0;
    c0:=0;
    c1:=0;
    c2:=0;
    c3:=0;
    for a:=0 to gridS.RowCount-3 do
    begin
        b:=iSuper[a,1];
        if b=0 then
        begin
            i0:=i0+iSuper[a,2];
            c0:=c0+1;
        end else if b=1 then
        begin
            i1:=i1+iSuper[a,2];
            c1:=c1+1;
        end else if b=2 then
        begin
            i2:=i2+iSuper[a,2];
            c2:=c2+1;
        end else if b=3 then
        begin
            i3:=i3+iSuper[a,2];
            c3:=c3+1;
        end;
    end;
    lblC0.Caption:=intToStr(c0);
    lblH0.Caption:=intToStr(i0*60);
    lblC1.Caption:=intToStr(c1);
    lblH1.Caption:=intToStr(i1*60);
    lblC2.Caption:=intToStr(c2);
    lblH2.Caption:=intToStr(i2*60);
    lblC3.Caption:=intToStr(c3);
    lblH3.Caption:=intToStr(i3*60);



    for a:=0 to gridS.RowCount-3 do
    begin
       iSeats:=iSeats+iVenues[a,1];
    end;
    lblStotal.Caption:=IntToStr((i0+i1+i2+i3)*60);
    lblStotalH.Caption:=intToStr(i0+i1+i2+i3);
    lblVenues.Caption:=intToStr(sGridVenue.RowCount-2);
    lblSeats.caption:=intToStr(iSeats);

end;



function TfrmFinal.isNumericT(s: string): boolean;
begin
    if (s='8') OR (s='9') OR (s='10') OR (s='11') OR (s='12')
    then
        isNumericT := true
    else
        isNumericT := false;
end;

function TfrmFinal.isNumeric(s: string): boolean;
begin
    if (s='1') OR (s='2') OR (s='') OR (s='0')
    then
        isNumeric := true
    else
        isNumeric := false;
end;

function TfrmFinal.isNumericS(s: string): boolean;
begin
    if (s='1') OR (s='2') OR (s='3') OR (s='0')
    then
        isNumericS := true
    else
        isNumericS := false;
end;



function TfrmFinal.check(): boolean;
var
a:integer;
begin
    result := true;
    if (sGridTests.RowCount < 3) then
    begin
        messagedlg('Tests'' error'+#10+'No data to check in table',mtError,[mbOK],0);
        result := false;
    end;
    if (sGridVenue.RowCount < 3) then
    begin
        messagedlg('Venues'' error'+#10+'No data to check in table',mtError,[mbOK],0);
        check:= false;
    end;
    if (gridS.RowCount < 3) then
    begin
        messagedlg('Supervisors'' error'+#10+'No data to check in table',mtError,[mbOK],0);
        check:= false;
    end;

    for a:=1 to (sGridTests.RowCount-2) do
    begin
        if (isNumericT(sGridTests.Cells[1,a])=false) then
        begin
            messagedlg('Tests'' error'+#10+'Grade should be {8,9,10,11 or 12} at row ' +intToStr(a),mtError,[mbOK],0);
            check := false;
        end;
        if (length(sGridTests.Cells[2,a])<1) then
        begin
            messagedlg('Tests'' error'+#10+'No subject entered at row ' +intToStr(a),mtError,[mbOK],0);
            check:= false;
        end;
        if not (Tekstra.isNumber(sGridTests.Cells[3,a])) then
        begin
            messagedlg('Tests'' error'+#10+'Test number should be integer at row ' +intToStr(a),mtError,[mbOK],0);
            check:= false;
        end;
        if not (Tekstra.isNumber(sGridTests.Cells[4,a])) then
        begin
            messagedlg('Tests'' error'+#10+'Time should be integer at row ' +intToStr(a),mtError,[mbOK],0);
            check:= false;
        end;
    end;
    //Venues
    for a:=1 to (sGridvenue.RowCount-2) do
    begin
        if (length(sGridvenue.Cells[1,a])=0) then
        begin
            messagedlg('Venues'' error'+#10+'No venue name at row ' +intToStr(a),mtError,[mbOK],0);
            check:= false;
        end;
        if not (Tekstra.isNumber(sGridvenue.Cells[2,a])) then
        begin
            messagedlg('Venues'' error'+#10+'Capacity should be integer at row ' +intToStr(a),mtError,[mbOK],0);
            check:= false;
        end;
        if not (isNumeric(sGridvenue.Cells[3,a])) then
        begin
            messagedlg('Venues'' error'+#10+'Level can only be {0, 1, 2 or empty} at row ' +intToStr(a),mtError,[mbOK],0);
            check:= false;
        end;
    end;
    //Superv
    for a:=1 to (gridS.RowCount-2) do
    begin
        if (length(gridS.Cells[1,a])=0) then
        begin
            messagedlg('Supervisors'' error'+#10+'No Surname at row ' +intToStr(a),mtError,[mbOK],0);
            check:= false;
        end;
        if (length(gridS.Cells[2,a])=0) then
        begin
            messagedlg('Supervisors'' error'+#10+'No name at row ' +intToStr(a),mtError,[mbOK],0);
            check:= false;
        end;
        if (isNumericS(gridS.Cells[3,a])=false) then
        begin
            messagedlg('Supervisors'' error'+#10+'Level should be between 0 and 3 at row ' + intToStr(a),mtError,[mbOK],0);
            check:= false;
        end;
        if not ((Tekstra.isNumber(gridS.Cells[4,a])) OR (length(gridS.Cells[4,a])=0)) then
        begin
            messagedlg('Supervisors'' error'+#10+'Hour should be numeric or empty at row ' + intToStr(a),mtError,[mbOK],0);
            check:= false;
        end;
    end;
end;


procedure TfrmFinal.setupGrid();
begin
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
    sGridvenue.Cells[1,0] := 'ID';
    sGridvenue.Cells[1,0] := 'Venue name';
    sGridvenue.Cells[2,0] := 'Capacity';
    sGridvenue.Cells[3,0] := 'Level';
    sGridvenue.ColWidths[0] := 25;
    sGridvenue.ColWidths[1] := 160;
    sGridvenue.ColWidths[2] := 80;
    sGridvenue.ColWidths[3] := 50;
end;


procedure TfrmFinal.Button5Click(Sender: TObject);
begin
    rgpLoadTests.Items.Clear;
    Tekstra.FindAll('*.tst',faAnyFile,rgpLoadTests.Items);
    rgpLoadVenues.Items.Clear;
    Tekstra.FindAll('*.ven',faAnyFile,rgpLoadVenues.Items);
    rgpLoadSupervisors.Items.Clear;
    Tekstra.FindAll('*.sup',faAnyFile,rgpLoadSupervisors.Items);
end;

procedure TfrmFinal.btnLoadClick(Sender: TObject);
var
sLyn,filename: string;
myLer: TextFile;
a,b,ipos: integer;
begin
    if (rgpLoadTests.itemindex>-1) then
    begin
        if FileExists(rgpLoadTests.Items.Strings[rgpLoadTests.itemindex]) then
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
            filename:= rgpLoadTests.Items.Strings[rgpLoadTests.itemindex];
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
        end else
            messagedlg('Tests error'+#10+'The file you selected does not exists',mtError,[mbOK],0);
    end else
        messagedlg('Tests error'+#10+'No item selected',mtError,[mbOK],0);
end;

procedure TfrmFinal.Button4Click(Sender: TObject);
var
sLyn,filename: string;
myLer: TextFile;
a,b,ipos: integer;
begin
    if (rgpLoadSupervisors.itemindex>-1) then
    begin
        if FileExists(rgpLoadSupervisors.Items.Strings[rgpLoadSupervisors.itemindex]) then
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
            filename:= rgpLoadSupervisors.Items.Strings[rgpLoadSupervisors.itemindex];
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
            messagedlg('Supervisor error'+#10+'The file you selected does not exists',mtError,[mbOK],0);
    end else
        messagedlg('Supervisor error'+#10+'No item selected',mtError,[mbOK],0);
end;

procedure TfrmFinal.Button2Click(Sender: TObject);
var
sLyn,filename: string;
myLer: TextFile;
a,b,ipos: integer;
begin
    if (rgpLoadVenues.itemindex>-1) then
    begin
        if FileExists(rgpLoadVenues.Items.Strings[rgpLoadVenues.itemindex]) then
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
            filename:= rgpLoadVenues.Items.Strings[rgpLoadVenues.itemindex];
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
            messagedlg('Venue error'+#10+'The file you selected does not exists',mtError,[mbOK],0);
    end else
        messagedlg('Venue error'+#10+'No item selected',mtError,[mbOK],0);
end;

procedure TfrmFinal.btnLoadAllClick(Sender: TObject);
begin
    btnLoad.Click;
    Button2.Click;
    Button4.Click;
    if check()=true then
    begin
       messagedlg('All tables successfully loaded',mtInformation,[mbOK],0);
       btnRef.Click;
       pnlSelectFilesClick(Sender);
       btnRecom.Enabled:=True;
       pnlDays.enabled:=True;
       iStation:=2;
       shpOne.Brush.Color:=clWhite;
    end  else messagedlg('All tables not loaded',mtError,[mbOK],0);
end;

procedure TfrmFinal.FormActivate(Sender: TObject);
begin
MessageDlg('Help'+#10+#10+'To guide you through the process'+#10+
  'follow the flashing icon. Flashes green and white.'+#10+
  'this will show your next step.',mtInformation,[mbOK],0);
    setupGrid();
    bSize:=True;
    cmbInline.Height:= sGridAll.DefaultRowHeight;
    cmbInline.Visible := False;
    iStation:=1;
    lbl1.Caption:='C'+#10+'l'+#10+'i'+#10+'c'+#10+'k'+#10+' '+#10+'t'+#10+'o'+#10+' '+#10+'e'+#10+'x'+#10+'p'+#10+'a'+#10+'n'+#10+'d';
    lbl2.Caption:='E'+#10+'D'+#10+'I'+#10+'T'+#10+'I'+#10+'N'+#10+'G';
    //rdbTest.Checked:=True;
    frmFinal.Top:=0;
    frmFinal.Left:=0;
    lstInsert.TabOrder:=5;
    lstInsert.TabWidth:=15;
    frmFinal.Align:=alClient;
    BoolmouseUp:=False;
    BoolMouseUp2:=False;
end;

procedure TfrmFinal.FormShow(Sender: TObject);
begin
    Button5.Click;
    setupScreen(0);
    frmFinal.WindowState:=wsMaximized;
    boolLoaded:=False;
end;
/////////////////////////////////////////////////////////////////////////
procedure TfrmFinal.CMDialogKey(var msg: TCMDialogKey);
begin
  if (ActiveControl = cmbInline) then
  begin
    if (msg.CharCode = VK_TAB) then
    begin
      //set focus back to the grid and pass the tab key to it
      cmbInline.SetFocus;
      cmbInline.Perform(WM_KEYDOWN, msg.CharCode, msg.KeyData);
      // swallow this message
      msg.result := 1;
      Exit;
    end;
  end;
  inherited;
end;
/////////////////////////////////////////////////////////////////////////////
procedure TfrmFinal.btnRefClick(Sender: TObject);
var
i8,i9,i10,i11,i12,a,b,total: integer;
s8,s9,s10,s11,s12: integer;
count8,count9,count10,count11,count12: integer;
s: string;
boolA: boolean;
begin
    //btnCheck.Click;
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
    count8:=0;
    count9:=0;
    count10:=0;
    count11:=0;
    count12:=0;
    if (check()=false) then
        messagedlg('Cannot get stats because there''s incorrect data in the table',mtError,[mbOK],0)
    else begin
        for a:=1 to sGridTests.RowCount-2 do
        begin
            s:=sGridTests.Cells[1,a];
            if s='8' then
            begin
                i8:=i8+strToInt(sGridTests.Cells[4,a]);
                s8:=s8+1;
                count8:=count8+strToInt(sGridTests.Cells[3,a]);
            end
            else if s='9' then
            begin
                i9:=i9+strToInt(sGridTests.Cells[4,a]);
                s9:=s9+1;
                count9:=count9+strToInt(sGridTests.Cells[3,a]);
            end
            else if s='10' then
            begin
                i10:=i10+strToInt(sGridTests.Cells[4,a]);
                s10:=s10+1;
                count10:=count10+strToInt(sGridTests.Cells[3,a]);
            end
            else if s='11' then
            begin
                i11:=i11+strToInt(sGridTests.Cells[4,a]);
                s11:=s11+1;
                count11:=count11+strToInt(sGridTests.Cells[3,a]);
            end
            else if s='12' then
            begin
                i12:=i12+strToInt(sGridTests.Cells[4,a]);
                s12:=s12+1;
                count12:=count12+strToInt(sGridTests.Cells[3,a]);
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
    getValues();
    lblTotalTests.Caption:=IntToStr(StrToInt(lbl8S.Caption)+StrToInt(lbl9S.Caption)+
    StrToInt(lbl10S.Caption)+StrToInt(lbl11S.Caption)+StrToInt(lbl12S.Caption));
    if strToInt(lbl8S.Caption)>0 then
        lblA8.Caption:=intToStr(round(count8/strToInt(lbl8S.Caption)))
    else lblA8.Caption:='0';
    if strToInt(lbl9S.Caption)>0 then
        lblA9.Caption:=intToStr(round(count9/strToInt(lbl9S.Caption)))
    else lblA9.Caption:='0';
    if strToInt(lbl10S.Caption)>0 then
        lblA10.Caption:=intToStr(round(count10/strToInt(lbl10S.Caption)))
    else lblA10.Caption:='0';
    if strToInt(lbl11S.Caption)>0 then
        lblA11.Caption:=intToStr(round(count11/strToInt(lbl11S.Caption)))
    else lblA11.Caption:='0';
    if strToInt(lbl12S.Caption)>0 then
        lblA12.Caption:=intToStr(round(count12/strToInt(lbl12S.Caption)))
    else lblA12.Caption:='0';
    lblATotal.Caption:=intToStr(Round((strToInt(lblA8.Caption)+strToInt(lblA9.Caption)+
    strToInt(lblA10.Caption)+strToInt(lblA11.Caption)+strToInt(lblA12.Caption))/5));
    end;
end;

procedure TfrmFinal.tmrexpandTimer(Sender: TObject);
begin
    tmrShrink.Enabled:=false;
    if pnlSelectFiles.height<409 then
    begin
        pnlSelectFiles.Height:=pnlSelectFiles.Height+23;
    end else begin
        tmrExpand.Enabled:=false;
    end;
end;

procedure TfrmFinal.pnlSelectFilesClick(Sender: TObject);
begin
    pnlSelectFiles.BringToFront;
    if bOne=false then bOne:=true
    else bOne:=false;

    if bOne=true then
    begin
        tmrexpand.Enabled:=true;
        lblexpand.Caption:='Click panel to shrink';
    end else
    begin
        tmrShrink.Enabled:=true;
        lblexpand.Caption:='Click panel to expand';
    end;
end;

procedure TfrmFinal.tmrShrinkTimer(Sender: TObject);
begin
    tmrexpand.Enabled:=false;
    if pnlSelectFiles.height>41 then
    begin
        pnlSelectFiles.Height:=pnlSelectFiles.Height-23;
    end else begin
        tmrShrink.Enabled:=false;
    end;
end;

procedure TfrmFinal.tmr2STimer(Sender: TObject);
begin
    tmr2E.Enabled:=false;
    if pnlReview.height>41 then
    begin
        pnlReview.height:=pnlReview.height-37;
    end else begin
        tmr2S.Enabled:=false;
    end;
end;

procedure TfrmFinal.tmr2ETimer(Sender: TObject);
begin
    tmr2S.Enabled:=false;
    if pnlReview.height<633 then
    begin
        pnlReview.height:=pnlReview.height+37;
    end else begin
        tmr2E.Enabled:=false;
    end;
end;

procedure TfrmFinal.pnlReviewClick(Sender: TObject);
begin
    pnlReview.BringToFront;
    if bTwo=false then bTwo:=true
    else bTwo:=false;

    if bTwo=true then
    begin
        tmr2E.Enabled:=true;
        lblReview.Caption:='Click panel to shrink';
    end else
    begin
        tmr2S.Enabled:=true;
        lblReview.Caption:='Click panel to expand';
    end;
end;

procedure TfrmFinal.edtDaysChange(Sender: TObject);
var
a,iDays,iSessions,iHours,iSeats: integer;
dRatio,dDays: double;
begin
    if (check()=false) then
    begin
        messagedlg('Not allowed to change this setings because'+
        #10+'the 3 files has not been loaded sucessfully',mtError,[mbOK],0);
        edtDays.Value:=0;
        edtSessions.Value:=0;
        edtHours.Value:=0;
        prog.Progress:=0;
    end
    else begin
        iDays:=edtDays.Value;
        iSessions:=edtSessions.Value;
        iHours:=edtHours.Value;
        iHours:=iHours*strToInt(lblVenues.caption);
        lblHPC.Caption:=intToStr(iHours);

        iSeats:=strToInt(lblSeats.Caption);
        dDays:=iSeats/strToInt(lblATotal.Caption);
        iDays:=trunc(dDays);
        if iDays=0 then iDays:=1;
        lblTestnmrs.Caption:=intToStr(iDays*edtSessions.Value);
        if (edtDays.value>0) and (strToInt(lblTestnmrs.Caption)>0) then
        dRatio:=strToFloat(lblTotalTests.caption)/(edtDays.Value*strToInt(lblTestnmrs.caption))
        else dRatio:=0;
        dRatio:=dRatio*100;
        if (dRatio=100) then
        begin
            messagedlg('The ratio is 100% and may cause some difficulty',mtInformation,[mbOK],0);
            prog.ForeColor:=clRed;
        end else if (dRatio>100) then
        begin
            messagedlg('The ratio is over 100% and will cause some difficulty',mtInformation,[mbOK],0);
            prog.ForeColor:=clRed;
        end else
        prog.ForeColor:=clLime;
        prog.Progress:=Round(dRatio);
    end;
    edtSuper.Value:=edtHours.value*60;

end;

procedure TfrmFinal.btnRecomClick(Sender: TObject);
var
iTestNmrs,iDays,iSeats: integer;
dDays: Double;
begin
        dDays:=4.99999;
        iDays:=Round(int(dDays));
        if iDays=0 then iDays:=1;

    if (check()=false) then
        messagedlg('Cannot calculate settings because the correct files'+
        #10+' has not been loaded sucessfully',mtError,[mbOK],0)
    else begin
        edtSessions.Value:=2;
        edtHours.Value:=3;
        iSeats:=strToInt(lblSeats.Caption);
        dDays:=iSeats/strToInt(lblATotal.Caption);
        iDays:=trunc(dDays);
        if iDays=0 then iDays:=1;
        messagedlg('Working on a average of '+intToStr(iDays)+' test/s per session',mtInformation,[mbOK],0);
        lblTestnmrs.Caption:=intToStr(iDays*edtSessions.Value);
        //Round to top
        dDays:=strToInt(lblTotalTests.Caption)/iDays;
        iDays:=trunc(dDays+1);
        dDays:=frac(dDays);
        if dDays=0 then
            iDays:=iDays-1;
        dDays:=iDays/edtSessions.value;
        iDays:=trunc(dDays+1);
        dDays:=frac(dDays);
        if dDays=0 then
            iDays:=iDays-1;
        edtDays.Value:=iDays;
    end;

end;

    //iHours:=

procedure TfrmFinal.btnLoadSettingsClick(Sender: TObject);
var
iDays,iSessions,iVenues,a,b,c: integer;
sLyn:string;
begin
    if (edtDays.Value>0) and (edtSessions.Value>0) and (edtHours.Value>0) then
    begin
      iDays:=edtDays.Value;
      iSessions:=edtSessions.Value;
      iVenues:=strToInt(lblVenues.caption);
      MyCalendar:= calendar.Create();
      Mycalendar.setValues(iDays,iSessions,iVenues,edtSuper.Value,edtHours.Value);
      MyCalendar.setCalNull();
      MyCalendar.getDays(rgpDays.Items);
      MyCalendar.getGridVenue(1,sGridDays);
      Tekstra:=ekstra.Create;

      //Setting up internal tables in MyCalendar
      MyCalendar.setTests(sGridTests);
      MyCalendar.setVenues(sGridVenue);
      MyCalendar.setSup(GridS);

      iStation:=3;
      shpTwo.Brush.Color:=clWhite;

      //Enabling
      rgpDays.Enabled:=True;

      cbbSupers.Clear;
      for a:=1 to GridS.RowCount-2 do
      begin
        sLyn:=GridS.Cells[0,a]+') '+ GridS.Cells[1,a]+', '+ GridS.Cells[2,a];
        cbbSupers.Items.Add(sLyn);
      end;

      MyCalendar.setDayValues(boolLoaded);
      MyCalendar.getDayValues(rgpDays);

    end else
      MessageDlg('Please check the data you''ve entered',mtError,[mbOK],0);

end;

procedure TfrmFinal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//    MyCalendar.Free;
end;

procedure TfrmFinal.rgpDaysClick(Sender: TObject);
begin
    //MyCalendar.getGridVenue((rgpDays.ItemIndex+1),sGridDays);
   /// MyCalendar.getGridTest((rgpDays.ItemIndex+1),sGridVenues);
    //MyCalendar.getGridSup((rgpDays.ItemIndex+1),sGridSupervisors);




    MyCalendar.getGridAll((rgpDays.ItemIndex+1),sGridAll,lblPeriods);

    MyCalendar.getCalendar(rgpDays.ItemIndex+1,sGridAll,sGridVenue);

    MyCalendar.getGridSupers(sGridVenues,rgpDays.ItemIndex+1);

    pnlChoose.Enabled:=True;
    pnlManual.Enabled:=True;
    iStation:=4;
    shpThree.Brush.Color:=clWhite;
end;

procedure TfrmFinal.pnlManualClick(Sender: TObject);
begin
    pnlManual.BringToFront;
    //if bFour=false then bFour:=true
    //else bFour:=false;

    if bFour=false then
    begin
        tmrOpen.Enabled:=true;
        lbl1.Visible:=false;
        lbl2.Visible:=false;
        btnRefresh.Visible:=True;
        sGridSelect.Visible:=true;
        panel1.Visible:=true;
        bFour:=true;
        //lblReview.Caption:='Click panel to shrink';
    end else
    begin
        tmrClose.Enabled:=true;
        lbl1.Visible:=true;
        lbl2.Visible:=true;
        sGridSelect.Visible:=false;
        panel1.Visible:=false;
        btnRefresh.Visible:=False;
        bFour:=false;
        //lblReview.Caption:='Click panel to expand';
    end;
end;

procedure TfrmFinal.tmrCloseTimer(Sender: TObject);
begin
    tmrOpen.Enabled:=false;
    if pnlManual.Width>58 then
    begin
        pnlManual.Width:=pnlManual.Width-23;
        pnlManual.Left:=pnlManual.Left+23;
    end else begin
        tmrClose.Enabled:=false;
    end;
end;

procedure TfrmFinal.tmrOpenTimer(Sender: TObject);
begin
    tmrClose.Enabled:=false;
    if pnlManual.Width<402 then
    begin
        pnlManual.Width:=pnlManual.Width+23;
        pnlManual.Left:=pnlManual.Left-23;
    end else begin
        tmrOpen.Enabled:=false;
    end;
end;

procedure TfrmFinal.Addtest1Click(Sender: TObject);
var
iCol,iRow:integer;
begin
    iCol:=sGridDays.Col;
    iRow:=sGridDays.Row;
    if (iCol<1) or (iRow<1) then
        messagedlg('No cell selected',mtError,[mbOK],0)
    else begin
        if (bFour=false) then
            pnlManual.OnClick(Sender);

    end;
end;

procedure TfrmFinal.rdbTestClick(Sender: TObject);
var
a,b,c:integer;
sLyn:string;
begin
    sGridSelect.ColWidths[0]:=25;
    if rdbTest.Checked=true then
    begin
        btnRefresh.Visible:=False;
        sGridSelect.ColWidths[1]:=50;
        sGridSelect.ColWidths[2]:=100;
        sGridSelect.ColWidths[3]:=80;
        sGridSelect.ColWidths[4]:=95;
        sGridSelect.ColCount:=5;
        MyCalendar.getSelectTests(sGridSelect);
        sGridSelect.RowCount:=sGridTests.RowCount;
        btDelete.Visible:=True;
        btn2.Visible:=False;
    end else
    begin
        btnRefresh.Visible:=True;
        sGridSelect.ColWidths[1]:=100;
        sGridSelect.ColWidths[2]:=100;
        sGridSelect.ColWidths[3]:=60;
        sGridSelect.ColWidths[4]:=65;
        sGridSelect.ColCount:=5;
        MyCalendar.getSelectSup(sGridSelect);
        sGridSelect.RowCount:=gridS.RowCount;
        btDelete.Visible:=False;
        btn2.Visible:=True;
    end;
end;

procedure TfrmFinal.Add1Click(Sender: TObject);
var
iCol,iRow:integer;
begin
    iCol:=sGridAll.Col;
    iRow:=sGridAll.Row;
    rdbTest.Checked:=true;
    if (iCol<1) or (iRow<1) then
        messagedlg('No cell selected',mtError,[mbOK],0)
    else begin
        if (bFour=false) then
            pnlManual.OnClick(Sender);
        SelectRow:=iRow;
        SelectCol:=iCol;
        if sGridAll.Cells[sGridAll.Col,1]='Pupils' then
            SelectCol:=SelectCol-2
        else if sGridAll.Cells[sGridAll.Col,1]='Supervisors' then
            SelectCol:=SelectCol-1
        else if sGridAll.Cells[sGridAll.Col,1]='Avail seats' then
            SelectCol:=SelectCol-3;
    end;
end;

procedure TfrmFinal.sGridSelectDblClick(Sender: TObject);
var
iCol,iRow,iTestCol,iSuperCol,iPeriods:integer;
iSeats,iCount,ReplaceRow,a:integer;
s1,s2,s3,ss1,ss2,ss3:Integer;
iSuperVisingTime,iTestTime:Integer;
sLyn:string;
begin
    iPeriods:=strToInt(lblPeriods.Caption);
    iCol:=sGridSelect.Col;
    iRow:=sGridSelect.Row;
    if (iCol<1) OR (iRow<1) then
        messagedlg('Not a valid test',mtError,[mbOK],0)
    else if (SelectCol<1) OR (SelectRow<2) then
        messagedlg('No destination selected',mtError,[mbOK],0)
    else begin
        if (rdbTest.Checked=true) then
        begin
            if (StrToInt(sGridSelect.Cells[3,iRow])<1) then
              messagedlg('The test you have selected has already been placed sucessfully',mtError,[mbOK],0)
            else
            if strToInt(sGridAll.Cells[SelectCol+1+iPeriods,SelectRow])>0 then
            begin
                if messagedlg('Are you sure you want to replace the test?',mtConfirmation,[mbYes,mbNo],0)=6
                then begin
                    
                    iSuperCol:=strToInt(sGridAll.Cells[SelectCol,SelectRow]);
                    for a:=1 to sGridTests.RowCount-1 do
                    begin
                        if Tekstra.isNumber(sGridSelect.Cells[0,a]) AND (iSuperCol=strToInt(sGridSelect.Cells[0,a])) then
                        begin
                            iSeats:=strToInt(sGridSelect.Cells[3,a]);
                            iSeats:=iSeats+strToInt(sGridAll.Cells[SelectCol+1+iPeriods,SelectRow]);
                            sGridSelect.Cells[3,a]:=IntToStr(iSeats);
                            sGridAll.Cells[SelectCol+1+iPeriods,SelectRow]:='0';
                            sGridAll.Cells[SelectCol,SelectRow]:='';

                            sGridAll.Cells[SelectCol,SelectRow]:=sGridSelect.Cells[0,iRow];
                            iSeats:=strToInt(sGridAll.Cells[SelectCol+2+iPeriods,SelectRow]);
                            iCount:=StrToInt(sGridSelect.Cells[3,iRow]);
                            if (iCount>iSeats) then
                                begin
                                    sGridAll.Cells[SelectCol+1+iPeriods,SelectRow]:=intToStr(iSeats);
                                    sGridSelect.Cells[3,iRow]:=intToStr(iCount-iSeats);
                                end else begin
                                    sGridAll.Cells[SelectCol+1+iPeriods,SelectRow]:=intToStr(iCount);
                                    sGridSelect.Cells[3,iRow]:='0';
                                end;
                            MyCalendar.setSelectTests(sGridSelect);
                        end;
                    end;
                end else
                begin

                end;
             end else
             begin
                sGridAll.Cells[SelectCol,SelectRow]:=sGridSelect.Cells[0,iRow];
                iSeats:=strToInt(sGridAll.Cells[SelectCol+2+iPeriods,SelectRow]);
                iCount:=StrToInt(sGridSelect.Cells[3,iRow]);
                if (iCount>iSeats) then
                    begin
                        sGridAll.Cells[SelectCol+1+iPeriods,SelectRow]:=intToStr(iSeats);
                        sGridSelect.Cells[3,iRow]:=intToStr(iCount-iSeats);
                    end else begin
                        sGridAll.Cells[SelectCol+1+iPeriods,SelectRow]:=intToStr(iCount);
                        sGridSelect.Cells[3,iRow]:='0';
                    end;
                MyCalendar.setSelectTests(sGridSelect);
             end;
        end else begin
        end;
    end;
    MyCalendar.setCalendar(rgpDays.ItemIndex+1,sGridAll,sGridVenue);
    MyCalendar.getCalendar(rgpDays.ItemIndex+1,sGridAll,sGridVenue);
end;


procedure TfrmFinal.AddSupervisor1Click(Sender: TObject);
var
iCol,iRow:integer;
begin
    iCol:=sGridAll.Col;
    iRow:=sGridAll.Row;
    rdbSupervisors.Checked:=true;
    if (iCol<1) or (iRow<1) then
        messagedlg('No cell selected',mtError,[mbOK],0)
    else begin
        if (bFour=false) then
            pnlManual.OnClick(Sender);

        SelectRow:=iRow;
        SelectCol:=iCol;
        if sGridAll.Cells[sGridAll.Col,1]='Test' then
            SelectCol:=SelectCol+1
        else if sGridAll.Cells[sGridAll.Col,1]='Pupils' then
            SelectCol:=SelectCol-1
        else if sGridAll.Cells[sGridAll.Col,1]='Avail seats' then
            SelectCol:=SelectCol-2;
    end;
end;

procedure TfrmFinal.btnMaximizeEditClick(Sender: TObject);
begin
//    frmFinal.Align:=alClient;
  if bFour=true then
    begin
        //tmrClose.Enabled:=true;
        pnlManual.Width:=57;
        lbl1.Visible:=true;
        lbl2.Visible:=true;
        sGridSelect.Visible:=false;
        panel1.Visible:=false;
        btnRefresh.Visible:=False;
        bFour:=False;
        //lblReview.Caption:='Click panel to expand';
    end;


  if bSize=True then
  begin
    rgpDays.Top:=56;
    rgpDays.Left:=16;
    rgpDays.Height:=73;
    rgpDays.Width:=1249;
    pnlChoose.Left:=16;
    pnlChoose.Top:=128;
    pnlChoose.Height:=785;
    PnlManual.Top:=144;
    PnlManual.Left:=1208;
    pnlManual.Height:=770;
    sGridSelect.Height:=620;
    bSize:=False;
    btnMaximizeEdit.Caption:='Minimize Editing';
    MaximizeEditing1.Caption:='Minimize Editing';
  end else begin
    rgpDays.Top:=80;
    rgpDays.Left:=648;
    rgpDays.Height:=241;
    rgpDays.Width:=617;
    pnlChoose.Left:=16;
    pnlChoose.Top:=360;
    pnlChoose.Height:=545;
    PnlManual.Top:=360;
    PnlManual.Left:=1208;
    pnlManual.Height:=545;
    sGridSelect.Height:=393;
    bSize:=True;
    btnMaximizeEdit.Caption:='Maximize Editing';
    MaximizeEditing1.Caption:='Maximize Editing';

  end;

end;

procedure TfrmFinal.sGridAllClick(Sender: TObject);
var
iCol,iRow,a,b:integer;
sLyn:string;
begin
    pnlEasyInput.Visible:=False;
    iCol:=sGridAll.Col;
    iRow:=sGridAll.Row;
    SelectRow:=iRow;
    SelectCol:=iCol;
    if sGridAll.Cells[sGridAll.Col,1]='Pupils' then
        SelectCol:=SelectCol-2
    else if sGridAll.Cells[sGridAll.Col,1]='Avail seats' then
        SelectCol:=SelectCol-3;
    lblDay.Caption:=rgpDays.Items.Strings[rgpDays.Itemindex];
    a:=Trunc(SelectCol/4)+1;
    lblSession.caption:=IntToStr(a);


    b:=iCol;
    while (sGridAll.Cells[b,0]='') do
    begin
      b:=b-1;
    end;
    sLyn:=sGridAll.Cells[b,0];
    a:=pos(' ',sLyn);
    delete(sLyn,1,a);
    lblSessie.Caption:=sLyn;


    sLyn:=sGridAll.Cells[0,SelectRow];
    a:=pos(' ',sLyn);
    delete(sLyn,1,a);
    lblVenue.Caption:=sLyn;
    cmbInline.ItemIndex:=cmbInline.Items.IndexOf(sGridAll.Cells[iCol,iRow]);
end;

procedure TfrmFinal.MaximizeEditing1Click(Sender: TObject);
begin
  btnMaximizeEdit.Click;
end;

procedure TfrmFinal.Savefinalstep1Click(Sender: TObject);
var
filename,sLyn: string;
myLer: TextFile;
a,b,iDays,iSessions,iHours: integer;
iDay,iRow,iCol:Integer;
begin
        iDays:=edtDays.Value;
        iSessions:=edtSessions.Value;
        iHours:=edtHours.Value;
        if (Length(sGridTests.Cells[1,1])<1) then
          messagedlg('Final step cannot be saved, because:'+#10+'No test file has not been loaded',mtError,[mbOK],0)
        else if (Length(sGridVenue.Cells[1,1])<1) then
          messagedlg('Final step cannot be saved, because:'+#10+'No venue file has not been loaded',mtError,[mbOK],0)
        else if (Length(gridS.Cells[1,1])<1) then
          messagedlg('Final step cannot be saved, because:'+#10+'No supervisor file has not been loaded',mtError,[mbOK],0)
        else begin
          filename := inputbox('Save final step','Please enter the filename: ','');
          while (length(filename)<1) do
          begin
            filename := inputbox('Save final step','No input given' + #10 +'Please enter the filename again: ','');
          end;
          filename := filename+'.fnl';
          stat.Visible:=True;
          frmFinal.Refresh;
          if NOT FileExists(filename) then
          begin
            //The file doesn't exist
            //New file created
            assignFile(myLer,filename);
            rewrite(myler);
            sLyn:=rgpLoadTests.Items.Strings[rgpLoadTests.itemindex]+','+
            rgpLoadVenues.Items.Strings[rgpLoadVenues.itemindex]+','+
            rgpLoadSupervisors.Items.Strings[rgpLoadSupervisors.itemindex]+',';
            Writeln(Myler,sLyn);
            sLyn:=IntToStr(iDays)+','+IntToStr(iSessions)+','+IntToStr(iHours)+','+intToSTr(edtSuper.value)+',';
            Writeln(Myler,sLyn);

            //Save main Grid
            {for iDay:=0 to (rgpDays.Items.Count-1) do
            begin
              rgpDays.ItemIndex:=iDay;
              for iRow:=0 to sGridAll.RowCount do
              begin
                sLyn:='';
                for iCol:=0 to sGridAll.ColCount do
                begin
                  sLyn:=sLyn+sGridAll.Cells[iCol,iRow]+'$';
                end;
                Writeln(Myler,sLyn);
              end;
            end;}
            closefile(myler);
            MyCalendar.saveFinal(filename);
          end else begin
             //The file exists
            if (messagedlg('The file already exists'+#10+'Do you want to overwrite?',mtConfirmation,[mbYes,mbNo],0)=6) then
            begin
                //File overwrited
                assignFile(myLer,filename);
                rewrite(myler);
                sLyn:=rgpLoadTests.Items.Strings[rgpLoadTests.itemindex]+','+
                rgpLoadVenues.Items.Strings[rgpLoadVenues.itemindex]+','+
                rgpLoadSupervisors.Items.Strings[rgpLoadSupervisors.itemindex]+',';
                Writeln(Myler,sLyn);
                sLyn:=IntToStr(iDays)+','+IntToStr(iSessions)+','+IntToStr(iHours)+','+intToSTr(edtSuper.value)+',';
                Writeln(Myler,sLyn);

                //Save main Grid
            {for iDay:=0 to (rgpDays.Items.Count-1) do
            begin
              rgpDays.ItemIndex:=iDay;
              for iRow:=0 to sGridAll.RowCount do
              begin
                sLyn:='';
                for iCol:=0 to sGridAll.ColCount do
                begin
                  sLyn:=sLyn+sGridAll.Cells[iCol,iRow]+'$';
                end;
                Writeln(Myler,sLyn);
              end;
            end; }
            closefile(myler);
            MyCalendar.saveFinal(filename);
            stat.Visible:=False;
            frmFinal.Refresh;
            end
            else
                messagedlg('File not saved',mtInformation,[mbOK],0);
          end;
        end;
end;

procedure TfrmFinal.Loadfinalstep1Click(Sender: TObject);
var
Myler: TextFile;
sLyn,test,venue,supervisor: string;
iPos:Integer;
iVenue,iCol,iRow,iDay:Integer;


begin
  
  Button5.Click;
  dlgLoad.DefaultExt:=frmFinal.GetNamePath;
  dlgLoad.Execute;
  stat.Visible:=True;
  frmFinal.Refresh;
  pnlSelectFilesClick(Sender);
  //MessageDlg(dlgLoad.FileName,mtInformation,[mbOK],0);
  If FileExists(dlgLoad.FileName)=False then
    MessageDlg('File not found',mtError,[mbOK],0)
  else begin
    boolLoaded:=True;

    AssignFile(Myler,dlgLoad.FileName);
    Reset(Myler);
    Readln(Myler,sLyn);
    iPos:=Pos(',',sLyn);
    test:=Copy(sLyn,0,iPos-1);
    Delete(sLyn,1,iPos);
    iPos:=Pos(',',sLyn);
    venue:=Copy(sLyn,0,iPos-1);
    Delete(sLyn,1,iPos);
    iPos:=Pos(',',sLyn);
    supervisor:=Copy(sLyn,0,iPos-1);
    Delete(sLyn,1,iPos);
    Readln(Myler,sLyn);

    rgpLoadTests.ItemIndex:=rgpLoadTests.Items.IndexOf(test);
    rgpLoadVenues.ItemIndex:=rgpLoadVenues.Items.IndexOf(venue);
    rgpLoadSupervisors.ItemIndex:=rgpLoadSupervisors.Items.IndexOf(supervisor);
    btnLoadAll.Click;
    iPos:=Pos(',',sLyn);
    edtDays.Value:=StrToInt(Copy(sLyn,0,iPos-1));
    Delete(sLyn,1,iPos);
    iPos:=Pos(',',sLyn);
    edtSessions.Value:=StrToInt(Copy(sLyn,0,iPos-1));
    Delete(sLyn,1,iPos);
    iPos:=Pos(',',sLyn);
    edtHours.Value:=StrToInt(Copy(sLyn,0,iPos-1));
    Delete(sLyn,1,iPos);
    iPos:=Pos(',',sLyn);
    edtSuper.Value:=StrToInt(Copy(sLyn,0,iPos-1));
    Delete(sLyn,1,iPos);

    btnLoadSettings.Click;

    CloseFile(Myler);

    MyCalendar.loadFinal(dlgLoad.FileName);
    //pnlSelectFilesClick(Sender);
    rgpDays.ItemIndex:=0;
    cbbSupers.ItemIndex:=0;
    cbbSupersSelect(Sender);
    //MyCalendar.setDayValues(boolLoaded);
    MyCalendar.getDayValues(rgpDays);
  end;
  stat.Visible:=False;
end;

procedure TfrmFinal.sGridAllSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
R: TRect;
a: Integer;
begin
  if pnlChoose.ActivePageIndex=1 then
  begin


  pnlChooseInput.Visible:=False;
  if ((ACol >0 ) and (ARow > 1)) then
  begin

    {Size and position the combo box to fit the cell}
    R := sGridAll.CellRect(ACol, ARow);
    R.Left := R.Left + sGridAll.Left;
    R.Right := R.Right + sGridAll.Left;
    R.Top := R.Top + sGridAll.Top;
    R.Bottom := R.Bottom + sGridAll.Top;
    {Show the combobox}

    if (Length(sGridAll.Cells[ACol,1])>12) then
    begin
      //Selects supervisors
      pnlChooseInput.Left:=R.Right;
      pnlChooseInput.Top:=R.Top+pnlChooseInput.Height;
      if ((pnlChooseInput.Top+pnlChooseInput.Height)>(frmFinal.Height-60)) then
      begin
        pnlChooseInput.Top:=frmFinal.Height-pnlChooseInput.Height-60;
      end;

      if ((pnlChooseInput.Left+pnlChooseInput.Width)>(frmFinal.Width-15)) then
      begin
        pnlChooseInput.Left:=frmFinal.Width-pnlChooseInput.Width-15;
      end;
      rdbSupervisors.Checked:=True;
      rdbSupervisors.OnClick(Sender);
      cmbInline.Items.Clear;
      for a:=1 to sGridSelect.RowCount do
      begin
        cmbInline.Items.Add(sGridSelect.Cells[0,a]);
      end;
      with cmbInline do
      begin
        Left := R.Left + 1 + pnlChoose.Left+sGridAll.Left+7;
        Top := R.Top + 1 +pnlChoose.Top+sGridAll.Top+30;
        Width := (R.Right + 1) - R.Left;
        Height := (R.Bottom + 1) - R.Top;
        Visible := True;
        SetFocus;
      end;
      
    end else if sGridAll.Cells[ACol,1]='Test' then
    begin
      //Selects tests
      rdbTest.Checked:=True;
      rdbTest.OnClick(Sender);
      cmbInline.Items.Clear;
      for a:=1 to sGridSelect.RowCount do
      begin
        if Tekstra.isNumber(sGridSelect.Cells[3,a]) then
        if StrToInt(sGridSelect.Cells[3,a])>0 then
          cmbInline.Items.Add(sGridSelect.Cells[0,a]);
      end;
      with cmbInline do
      begin
        Left := R.Left + 1 + pnlChoose.Left+sGridAll.Left+7;
        Top := R.Top + 1 +pnlChoose.Top+sGridAll.Top+30;
        Width := (R.Right + 1) - R.Left;
        Height := (R.Bottom + 1) - R.Top;

        Visible := True;
        SetFocus;
      end;
    end;
  end;
  CanSelect := True;

  end else
  begin
   {Size and position the combo box to fit the cell}
    R := sGridVenues.CellRect(sGridVenues.COl, sGridVenues.Row);
    R.Left := R.Left + sGridVenues.Left;
    R.Right := R.Right + sGridVenues.Left;
    R.Top := R.Top + sGridVenues.Top;
    R.Bottom := R.Bottom + sGridVenues.Top;
    {Show the combobox}

      //Selects supervisors
      pnlChooseInput.Left:=R.Right;
      pnlChooseInput.Top:=R.Top+pnlChooseInput.Height;
      if ((pnlChooseInput.Top+pnlChooseInput.Height)>(frmFinal.Height-60)) then
      begin
        pnlChooseInput.Top:=frmFinal.Height-pnlChooseInput.Height-60;
      end;

      if ((pnlChooseInput.Left+pnlChooseInput.Width)>(frmFinal.Width-15)) then
      begin
        pnlChooseInput.Left:=frmFinal.Width-pnlChooseInput.Width-15;
      end;
      rdbSupervisors.Checked:=True;
      rdbSupervisors.OnClick(Sender);
  end;

end;

procedure TfrmFinal.edtSuperExit(Sender: TObject);
var
  intTime,intMinutes:Integer;
begin
  if (Tekstra.isNumber(IntToStr(edtHours.Value))) AND (Tekstra.isNumber(IntToStr(edtSuper.Value)))
  AND (edtHours.Value>0) AND (edtSuper.Value>0) then
  begin
    intTime:=edtHours.Value;
    intTime:=intTime*60;
    intMinutes:=edtSuper.Value;
    if (intTime/intMinutes)>4 then
    begin
      MessageDlg('Their can only be 4 or less supervising sessions per test session',mtError,[mbOK],0);
      edtSuper.Value:=edtHours.Value;
    end;
  end;
end;

procedure TfrmFinal.cmbInlineExit(Sender: TObject);
begin
  cmbInline.Visible:=False;
end;

procedure TfrmFinal.cmbInlineSelect(Sender: TObject);
var
iSuperCol,a,iSeats,iRow,iCount,plus,iRowFrom:Integer;
begin
  plus:=StrToInt(lblPeriods.Caption);
  iSuperCol:=StrToInt(cmbInline.Items.Strings[cmbInline.Itemindex]);
  for a:=1 to sGridSelect.RowCount-2 do
  begin
    if iSuperCol=StrToInt(sGridSelect.Cells[0,a]) then
    begin
      iRow:=a;
      Break;
    end;
  end;
  //if rdbTest.Checked=True then
 // begin
    //Add test
    iSuperCol:=StrToInt(cmbInline.Items.Strings[cmbInline.itemindex]);
    for a:=1 to sGridSelect.RowCount-2 do
    begin
      if iSuperCol=StrToInt(sGridSelect.Cells[0,a]) then
      begin
        iRowFrom:=a;
        Break;
      end;
      iRowFrom:=0;
    end;
    if iRowFrom=0 then
      MessageDlg('The selected test has not been found',mtError,[mbOK],0)
    else begin
      if sGridSelect.Row=iRowFrom then
      begin
        sGridSelect.OnClick(Sender);
      end
      else
      begin
        sGridSelect.Row:=iRowFrom;
      end;
        
    end;
  cmbInline.Visible:=False;
  cmbInline.ItemIndex:=-1;
end;

procedure TfrmFinal.btn1Click(Sender: TObject);
var
  a:WideString;
  b:SmallInt;
begin
  a:='';
  b:=1;
  

end;

procedure TfrmFinal.btnOpenViewClick(Sender: TObject);
var
  iC,iR,a:Integer;
  iCheck:Integer;

begin
  iCheck:=0;
  {
  for a:=0 to rgpDays.Items.Count-1 do
  begin
    rgpDays.ItemIndex:=a;


    for iC:=0 to sGridAll.ColCount do
    begin
      for iR:=0 to sGridAll.RowCount do
      begin
          F1Book1.TextRC[iR+1+iCheck,iC+1] := sGridAll.Cells[iC,iR]; //Insert text to cell
      end;
    end;
  F1Book1.SetSelection(iCheck+1,1,sGridAll.RowCount+iCheck,sGridAll.ColCount);
  F1Book1.SetBorder(5,3,3,3,3,3,3,3,3,3,3);
  iCheck:=iCheck + sGridAll.RowCount;
  end;
  F1Book1.AddColPageBreak(sGridAll.ColCount);
  }


end;

procedure TfrmFinal.tmrFlashTimer(Sender: TObject);
begin
  if iStation=1 then
  begin
    //Have to load
    if shpOne.Brush.color=clWhite then
      shpOne.Brush.color:=clLime
    else shpOne.Brush.color:=clWhite
  end else if iStation=2 then
  begin
    //Have to load
    if shpTwo.Brush.color=clWhite then
      shpTwo.Brush.color:=clLime
    else shpTwo.Brush.color:=clWhite
  end else if iStation=3 then
  begin
    //Have to load
    if shpThree.Brush.color=clWhite then
      shpThree.Brush.color:=clLime
    else shpThree.Brush.color:=clWhite
  end;
end;

procedure TfrmFinal.shpOneMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pnlSelectFilesClick(Sender);
end;

procedure TfrmFinal.Excelspreadsheets1Click(Sender: TObject);
begin
  btnOpenView.Click;
end;

procedure TfrmFinal.sGridAllMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  a,iPlace,iPos:Integer;
  iDag,iSessie,iSup:Integer;
  sSup:string;
begin
    if BoolmouseUp=True then
    begin
    if (Length(sGridAll.Cells[sGridAll.Col,1])>12) then
    begin
      lblTop.Caption:='Choose a supervisor to add';
      lblFormat.Caption:='[ID]) [SURNAME] [NAME]        [HOURS DONE/HOURS TO DO]';
      Tekstra.setupList(sGridAll.Cells[sGridAll.Col,sGridAll.row],bt1,bt2,bt3,bt4,bt5,bt6,bt7,bt8,bt9,bt10,sGridSelect);
      Tekstra.setupQuick(sGridSelect,lstInsert);
      pnlChooseInput.Visible:=True;

      iDag:=rgpDays.ItemIndex+1;
      if Tekstra.isNumber(lblSessie.caption) then
        iSessie:=StrToInt(lblSessie.caption)
      else  ShowMessage('Its not numeric');

      iPlace:=(iSessie*strToInt(lblPeriods.caption))-(strToInt(lblPeriods.caption)-Tekstra.getNumber(sGridAll.Cells[sGridAll.Col,1]));
      for a:=0 to (cbbSupers.Items.Count-1) do
      begin
        cbbSupers.ItemIndex:=a;
        cbbSupers.OnSelect(Sender);
        if sGridSupervisors.Cells[iPlace,iDag+1]='X' then
        begin
          lstInsert.Items.Strings[a]:='<Not available>';
        end;
      end;

      

      for a:=0 to (lstInsert.Items.Count-1) do
      begin
        sSup:=lstInsert.Items.Strings[a];
        iPos:=Pos(')',sSup);
        sSup:=Copy(sSup,1,iPos-1);
        if Tekstra.isNumber(sSup) then
        begin
          if (Tekstra.CheckSups(sGridAll,StrToInt(sSup),sGridAll.Col)=False) then
            lstInsert.Items.Strings[a]:=lstInsert.Items.Strings[a]+' @@@'
          else if (Tekstra.CheckSupsLeftRight(sGridAll,StrToInt(sSup),sGridAll.Col)= False) then
            lstInsert.Items.Strings[a]:=lstInsert.Items.Strings[a]+' !!!';

          
        end;
      end;


    end else if sGridAll.Cells[sGridAll.Col,1]='Test' then
    begin
      lblTop.Caption:='Choose a test to add';
      lblFormat.Caption:='[ID]) Grade:[GRADE]        [SUBJECT]        [STUDENTS YET TO BE PLACED]';
      Tekstra.setupQuick(sGridSelect,lstInsert);
      pnlEasyInput.Visible:=True;
    end;
    Boolmouseup:=False;
    end;
end;

procedure TfrmFinal.bt1Click(Sender: TObject);
begin
  pnlEasyInput.Visible := True;
  seChoose.Value := 1;
  pnlChooseInput.Visible:=False;
  lblID.Caption:=bt1.Caption;
end;

procedure TfrmFinal.bt2Click(Sender: TObject);
begin
  pnlEasyInput.Visible := True;
  seChoose.Value := 2;
  pnlChooseInput.Visible:=False;
  lblID.Caption:=bt2.Caption;
end;

procedure TfrmFinal.bt3Click(Sender: TObject);
begin
  pnlEasyInput.Visible := True;
  seChoose.Value := 3;
  pnlChooseInput.Visible:=False;
  lblID.Caption:=bt3.Caption;
end;

procedure TfrmFinal.bt4Click(Sender: TObject);
begin
  pnlEasyInput.Visible := True;
  seChoose.Value := 4;
  pnlChooseInput.Visible:=False;
  lblID.Caption:=bt4.Caption;
end;

procedure TfrmFinal.bt5Click(Sender: TObject);
begin
  pnlEasyInput.Visible := True;
  seChoose.Value := 5;
  pnlChooseInput.Visible:=False;
  lblID.Caption:=bt5.Caption;
end;

procedure TfrmFinal.bt6Click(Sender: TObject);
begin
  pnlEasyInput.Visible := True;
  seChoose.Value := 6;
  pnlChooseInput.Visible:=False;
  lblID.Caption:=bt6.Caption;
end;

procedure TfrmFinal.bt7Click(Sender: TObject);
begin
  pnlEasyInput.Visible := True;
  seChoose.Value := 7;
  pnlChooseInput.Visible:=False;
  lblID.Caption:=bt7.Caption;
end;

procedure TfrmFinal.bt8Click(Sender: TObject);
begin
  pnlEasyInput.Visible := True;
  seChoose.Value := 8;
  pnlChooseInput.Visible:=False;
  lblID.Caption:=bt8.Caption;
end;

procedure TfrmFinal.bt9Click(Sender: TObject);
begin
  pnlEasyInput.Visible := True;
  seChoose.Value := 9;
  pnlChooseInput.Visible:=False;
  lblID.Caption:=bt9.Caption;
end;

procedure TfrmFinal.bt10Click(Sender: TObject);
begin
  pnlEasyInput.Visible := True;
  seChoose.Value := 10;
  pnlChooseInput.Visible:=False;
  lblID.Caption:=bt10.Caption;
end;

procedure TfrmFinal.btCloseClick(Sender: TObject);
begin
  pnlEasyInput.Visible:=False;

end;

procedure TfrmFinal.btnAddClick(Sender: TObject);
begin
  if (bt1.caption='+') then
    bt1.Click
  else if (bt2.caption='+') then
    bt2.Click
  else if (bt3.caption='+') then
    bt3.Click
  else if (bt4.caption='+') then
    bt4.Click
  else if (bt5.caption='+') then
    bt5.Click
  else if (bt6.caption='+') then
    bt6.Click
  else if (bt7.caption='+') then
    bt7.Click
  else if (bt8.caption='+') then
    bt8.Click
  else if (bt9.caption='+') then
    bt9.Click
  else if (bt10.caption='+') then
    bt10.Click
  else
    MessageDlg('Slots are full',mtInformation,[mbOK],0);

end;

procedure TfrmFinal.bt11Click(Sender: TObject);
begin
  pnlChooseInput.Visible:=False;
end;

procedure TfrmFinal.cbbSupersSelect(Sender: TObject);
var
  iIndex,a,b,iSession:Integer;
begin
  //for a:=0 to sGridSupervisors.RowCount do
  //  for b:=0 to sGridSupervisors.ColCount do
  //    sGridSupervisors.Cells[b,a]:='';


  iIndex:=cbbSupers.ItemIndex;
  sGridSupervisors.RowCount:=edtDays.value+2;
  iSession:=Round(((edtHours.value*60)/edtSuper.value));
  sGridSuperVisors.ColCount:=(edtSessions.Value*iSession)+1;

  sGridSupervisors.Cells[0,1]:='Day';

  for a:=2 to edtDays.value+2 do
  begin
    sGridSupervisors.Cells[0,a]:=IntToStr(a-1);
  end;

  for a:=1 to edtSessions.Value do
  begin
    sGridSupervisors.Cells[(((a)*iSession)-(iSession-1)),0]:='Session '+intToStr(a);

    for b:=0 to iSession-1 do
    begin
      sGridSupervisors.Cells[(((a)*iSession)-(iSession-1))+b,1]:='Part '+intToStr(b+1);
    end;
  end;
  sGridSupervisors.FixedRows:=2;
  sGridSupervisors.FixedCols:=1;


  MyCalendar.loadSickList(sGridSupervisors,cbbSupers.ItemIndex);
end;

procedure TfrmFinal.sGridSupervisorsSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  if chk1.checked=false then
  if ACol>0 then
  begin
    if (sGridSupervisors.Cells[ACol,ARow]='') then
      sGridSupervisors.Cells[ACol,ARow]:='X'
    else
      sGridSupervisors.Cells[ACol,ARow]:='';
    MyCalendar.saveSickList(sGridSupervisors,cbbSupers.ItemIndex);
  end;
end;

procedure TfrmFinal.btGenerateClick(Sender: TObject);
begin
  MyCalendar.autogenerateAll();
end;

procedure TfrmFinal.cbbSupersClick(Sender: TObject);
begin
  //MyCalendar.saveSickList(sGridSupervisors,cbbSupers.ItemIndex);
end;

procedure TfrmFinal.lstInsertDblClick(Sender: TObject);
var
iCol,iRow,iSeats,a,iIDSelected,iIDReplaced,iID,iTestTime:integer;
sLyn,sSend,sHold:string;
iHoursDone,ID:Integer;
iDay:Integer;

begin
    if (SelectCol<1) OR (SelectRow<2) then
        messagedlg('No destination selected',mtError,[mbOK],0)
    else begin
        iIdSelected:=lstInsert.ItemIndex+1;
        ID:=StrToInt(sGridSelect.Cells[0,iIDSelected]);
        if (rdbTest.Checked=true) then
        begin
          if (sGridSelect.Row=lstInsert.ItemIndex+1) then
            sGridSelectDblClick(Sender)
          else
            sGridSelect.Row:=lstInsert.ItemIndex+1;
          
        end else begin
        //Add/replace supervisor
        if Tekstra.CheckSups(sGridAll,ID,sGridAll.Col)=True then
        begin

        if (lstInsert.Items.Strings[lstInsert.ItemIndex]='<Not available>') then
        begin
          MessageDlg('This supervisors has been booked off',mtInformation,[mbOK],0);
        end else
        begin
          iID:=seChoose.Value;

          //ShowMessage('iID: '+IntToStr(iID));

          sSend:=lblID.Caption;
          a:=Pos(')',sSend);
          Delete(sSend,a,Length(sLyn));

          //ShowMessage('sSend: '+sSend);

          sLyn:=sGridAll.Cells[selectCol,1];
          iSeats:=Pos(' ',sLyn);
          Delete(sLyn,1,iSeats);
          iSeats:=StrToInt(sLyn);

          //ShowMessage('iSeats: '+IntToStr(iSeats));

          iTestTime:=edtSuper.Value;
          iTestTime:=Round(iTestTime/60);

          iIdSelected:=lstInsert.ItemIndex+1;

          ID:=StrToInt(sGridSelect.Cells[0,iIDSelected]);


          if ((Tekstra.isNumber(sGridAll.Cells[selectCol-iSeats,SelectRow])) AND (strToInt(sGridAll.Cells[selectCol-iSeats,SelectRow])>0)) then
          begin
            if (Length(sSend)>1) then
            begin
            //MUST REPLACE SUPER
              a:=Pos(')',sSend);
              sSend:=Copy(sSend,0,a-1);
              if (Tekstra.isNumber(sSend)) then
              begin
                iIDReplaced:=StrToInt(sSend);
                for a:=1 to sGridSelect.RowCount-1 do
                begin
                  if (sGridSelect.Cells[0,a]=IntToStr(iIDReplaced)) then
                  begin
                    iIDReplaced:=a;
                    Break;
                  end;
                end;
                iHoursDone:=StrToInt(sGridSelect.Cells[3,iIDReplaced]);
                iHoursDone:=iHoursDone-iTestTime;
                sGridSelect.Cells[3,iIDReplaced]:=intToStr(iHoursDone);
                iHoursDone:=StrToInt(sGridSelect.Cells[3,iIdSelected]);
                iHoursDone:=iHoursDone+iTestTime;
                sHold:= Tekstra.addSupervisors(sGridAll.Cells[sGridAll.Col,sGridAll.Row],iID,ID);
                sGridAll.Cells[sGridAll.Col,sGridAll.Row] := sHold;
                sGridSelect.Cells[3,iIdSelected]:=IntToStr(iHoursDone);
              end else
                MessageDlg('Unexpected error',mtError,[mbOK],0);
            end else
            begin
            //ADDS OPEN SUPER
              if (Tekstra.isNumber(sGridSelect.Cells[0,iIdSelected])) then
              begin
                iHoursDone:=StrToInt(sGridSelect.Cells[3,iIdSelected]);
                iHoursDone:=iHoursDone+iTestTime;
                sHold:= Tekstra.addSupervisors(sGridAll.Cells[sGridAll.Col,sGridAll.Row],iID,ID);
                sGridAll.Cells[sGridAll.Col,sGridAll.Row] := sHold;
                sGridSelect.Cells[3,iIdSelected]:=IntToStr(iHoursDone);
              end;
            end;
          end else begin
            MessageDlg('No test found'+#10+'You have to select a test first otherwise the supervising time cannot be calculated',mtError,[mbOK],0);
          end;
          MyCalendar.setSelectSup(sGridSelect);
        end;

        end else
        begin
          MessageDlg('This supervisor is already placed in another venue at this time',mtError,[mbOK],0);
        end;
        end;
    end;
    MyCalendar.setCalendar(rgpDays.ItemIndex+1,sGridAll,sGridVenue);
    MyCalendar.getCalendar(rgpDays.ItemIndex+1,sGridAll,sGridVenue);
    pnlEasyInput.Visible:=False;
    MyCalendar.getGridSupers(sGridVenues,rgpDays.ItemIndex+1);
end;

procedure TfrmFinal.chk1Click(Sender: TObject);
begin
  if chk1.Checked=True then
  begin
    sGridSupervisors.Options:=[goFixedVertLine,goFixedHorzLine,goVertLine,goHorzLine,goRangeSelect,goDrawFocusSelected,goRowSelect];

  end else
  begin
    sGridSupervisors.Options:=[goFixedVertLine,goFixedHorzLine,goVertLine,goHorzLine,goRangeSelect,goDrawFocusSelected];
  end;
end;

procedure TfrmFinal.sGridSupervisorsMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  a,r,c:Integer;
  sLyn:string;
begin
  c:=sGridSupervisors.col;
  r:=sGridSupervisors.Row;
  sLyn:=sGridSupervisors.Cells[c,r];
  if chk1.checked=true then
  begin
    for a:=1 to sGridSupervisors.ColCount-1 do
    begin
        if (sLyn='') then
          sGridSupervisors.Cells[a,r]:='X'
        else
          sGridSupervisors.Cells[a,r]:='';

        MyCalendar.saveSickList(sGridSupervisors,cbbSupers.ItemIndex);
    end;
  end;
end;

procedure TfrmFinal.bt12Click(Sender: TObject);
begin
  pnlView.Visible:=False;

end;

procedure TfrmFinal.View2Click(Sender: TObject);
begin
  pnlView.Visible:=True;
end;

procedure TfrmFinal.Create1Click(Sender: TObject);
var
  a,b,c:Integer;
begin
  stat.Visible:=True;
  frmFinal.Refresh;
  
  if ((sGridAll.RowCount>1) AND (sGridSelect.RowCount>1)) then
  begin
    MyCalendar.displayTests(redTests);
    Mycalendar.displaySupervisors(redSupervisors);
    MyCalendar.displayMainSupervisors(redMain);
  end else
  begin
    MessageDlg('No data to create schedule'+#10+'Make sure you have loaded the files',mtInformation,[mbOK],0);
  end;
  stat.Visible:=False;
end;

procedure TfrmFinal.sGridAllMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  BoolmouseUp:=True;
end;

procedure TfrmFinal.N1600X9001Click(Sender: TObject);
begin
  setupScreen(1);
end;

procedure TfrmFinal.N1280X10241Click(Sender: TObject);
begin
   setupScreen(2);
end;

procedure TfrmFinal.N1280X8001Click(Sender: TObject);
begin
   setupScreen(3);
end;

procedure TfrmFinal.Setupdaynames1Click(Sender: TObject);
begin
  MyCalendar.setDayValuesOwn();
  MyCalendar.getDayValues(rgpDays);
end;

procedure TfrmFinal.btDoClick(Sender: TObject);
begin
  stat.Visible:=True;
  frmFinal.Refresh;
  MyCalendar.displayDetailed(redRoster,edtMain.Text,edtSub.Text,edt1.Text,edt2.Text,edt3.Text,edt4.Text);
  stat.Visible:=False;
  frmFinal.Refresh;
end;

procedure TfrmFinal.btDeleteClick(Sender: TObject);
var
iCol,iRow,iTestCol,iSuperCol,iPeriods:integer;
iSeats,iCount,ReplaceRow,a:integer;
s1,s2,s3,ss1,ss2,ss3:Integer;
iSuperVisingTime,iTestTime:Integer;
sLyn:string;
begin
    iPeriods:=strToInt(lblPeriods.Caption);
    iCol:=sGridSelect.Col;
    iRow:=sGridSelect.Row;
    if (iCol<1) OR (iRow<1) then
        messagedlg('Not a valid test',mtError,[mbOK],0)
    else if (SelectCol<1) OR (SelectRow<2) then
        messagedlg('No destination selected',mtError,[mbOK],0)
    else begin
        if (rdbTest.Checked=true) then
        begin
            if strToInt(sGridAll.Cells[SelectCol+1+iPeriods,SelectRow])>0 then
            begin
                if messagedlg('Are you sure you want to delete the test?',mtConfirmation,[mbYes,mbNo],0)=6
                then begin

                    iSuperCol:=strToInt(sGridAll.Cells[SelectCol,SelectRow]);//Test To Be deleted
                    for a:=1 to sGridTests.RowCount-1 do
                    begin
                        if Tekstra.isNumber(sGridSelect.Cells[0,a]) AND (iSuperCol=strToInt(sGridSelect.Cells[0,a])) then
                        begin
                            iSeats:=strToInt(sGridSelect.Cells[3,a]);
                            iSeats:=iSeats+strToInt(sGridAll.Cells[SelectCol+1+iPeriods,SelectRow]);
                            sGridSelect.Cells[3,a]:=IntToStr(iSeats);


                            MyCalendar.setSelectTests(sGridSelect);
                            Break;
                        end;
                    end;
                    sGridAll.Cells[SelectCol,SelectRow]:='';
                    sGridAll.Cells[SelectCol+1+iPeriods,SelectRow]:='0';

                end else
                begin

                end;
             end else
             begin
             end;
        end;
    end;
    MyCalendar.setCalendar(rgpDays.ItemIndex+1,sGridAll,sGridVenue);
    MyCalendar.getCalendar(rgpDays.ItemIndex+1,sGridAll,sGridVenue);
end;

procedure TfrmFinal.sGridVenuesSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
R: TRect;
a: Integer;
begin
  if (length(sGridVenues.Cells[sGridVenues.Col,sGridVenues.Row])>5) then
  begin
      R := sGridVenues.CellRect(ACol, ARow);
      R.Left := R.Left + sGridVenues.Left;
      R.Right := R.Right + sGridVenues.Left;
      R.Top := R.Top + sGridVenues.Top;
      R.Bottom := R.Bottom + sGridVenues.Top;

      pnlChooseInput.Left:=R.Right;
      pnlChooseInput.Top:=R.Top+pnlChooseInput.Height;
      if ((pnlChooseInput.Top+pnlChooseInput.Height)>(frmFinal.Height-60)) then
      begin
        pnlChooseInput.Top:=frmFinal.Height-pnlChooseInput.Height-60;
      end;

      if ((pnlChooseInput.Left+pnlChooseInput.Width)>(frmFinal.Width-15)) then
      begin
        pnlChooseInput.Left:=frmFinal.Width-pnlChooseInput.Width-15;
      end;
      rdbSupervisors.Checked:=True;
      rdbSupervisors.OnClick(Sender);
  end;
end;

procedure TfrmFinal.sGridVenuesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  iSess,iPart,a,iVen,iCol,iTotalParts:Integer;
  sLyn,sSup:string;
  iPlace,iDag,iSessie,iPos:Integer;
begin
  if BoolMouseUp2=True then
  begin
  if (length(sGridVenues.Cells[sGridVenues.Col,sGridVenues.Row])>5) then
  begin
    pnlChooseInput.Visible:=True;
    rdbSupervisors.Checked:=True;
    rdbSupervisors.OnClick(Sender);

    sLyn:='';
    a:=sGridVenues.Col;
    while (Length(sLyn)<1) do
    begin
      sLyn:=sGridVenues.Cells[a,0];
      a:=a-1;
    end;
    iSess:=Tekstra.getNumber(sLyn);
    iPart:=Tekstra.getNumber(sGridVenues.Cells[sGridVenues.col,1]);
    if Tekstra.isNumber(sGridVenues.Cells[2,sGridVenues.row]) then
    begin
      iVen:=StrToInt(sGridVenues.Cells[2,sGridVenues.row])+1;
      if Tekstra.isNumber(sGridVenues.Cells[2,sGridVenues.row]) then
      begin
        iTotalParts:=StrToInt(lblPeriods.caption);
        iCol:=(iSess+((iSess-1)*(iTotalParts+2)));
        iCol:=iCol+iPart;
        sGridAll.Col:=iCol;
        sGridAll.Row:=iVen;
        Tekstra.setupList(sGridAll.Cells[iCol,iVen],bt1,bt2,bt3,bt4,bt5,bt6,bt7,bt8,bt9,bt10,sGridSelect);
        MyCalendar.setUpSupers(sGridSelect,lstInsert);
      end;
    end;

      lblTop.Caption:='Choose a supervisor to add';
      lblFormat.Caption:='[ID]) [SURNAME] [NAME]        [HOURS DONE/HOURS TO DO]';

      iDag:=rgpDays.ItemIndex+1;
      if Tekstra.isNumber(lblSessie.caption) then
        iSessie:=StrToInt(lblSessie.caption)
      else  ShowMessage('Its not numeric');

      iPlace:=(iSessie*strToInt(lblPeriods.caption))-(strToInt(lblPeriods.caption)-Tekstra.getNumber(sGridAll.Cells[sGridAll.Col,1]));
      for a:=0 to (cbbSupers.Items.Count-1) do
      begin
        cbbSupers.ItemIndex:=a;
        cbbSupers.OnSelect(Sender);
        if sGridSupervisors.Cells[iPlace,iDag+1]='X' then
        begin
          lstInsert.Items.Strings[a]:='<Not available>';
        end;
      end;

      for a:=0 to (lstInsert.Items.Count-1) do
      begin
        sSup:=lstInsert.Items.Strings[a];
        iPos:=Pos(')',sSup);
        sSup:=Copy(sSup,1,iPos-1);
        if Tekstra.isNumber(sSup) then
        begin
          if (Tekstra.CheckSupsLeftRight(sGridAll,StrToInt(sSup),sGridAll.Col)= False) then
            lstInsert.Items.Strings[a]:=lstInsert.Items.Strings[a]+' !!!';
        end;
      end;



  end;
  BoolMouseUp2:=False;
  end;
end;

procedure TfrmFinal.btnRemoveClick(Sender: TObject);
var
  sLyn:string;
  row,iPos,iTime,a,plek:Integer;
begin
  if not (bt10.caption='+') then
  begin
    sLyn:=bt10.Caption;
    plek:=10;
  end
  else if not (bt9.caption='+') then
  begin
    sLyn:=bt9.Caption;
    plek:=9;
  end
  else if not (bt8.caption='+') then
  begin
    sLyn:=bt8.Caption;
    plek:=8;
  end
  else if not (bt7.caption='+') then
  begin
    sLyn:=bt7.Caption;
    plek:=7;
  end
  else if not (bt6.caption='+') then
  begin
    sLyn:=bt6.Caption;
    plek:=6;
  end
  else if not (bt5.caption='+') then
  begin
    sLyn:=bt5.Caption;
    plek:=5;
  end
  else if not (bt4.caption='+') then
  begin
    sLyn:=bt4.Caption;
    plek:=4;
  end
  else if not (bt3.caption='+') then
  begin
    sLyn:=bt3.Caption;
    plek:=3;
  end
  else if not (bt2.caption='+') then
  begin
    sLyn:=bt2.Caption;
    plek:=2;
  end
  else if not (bt1.caption='+') then
  begin
    sLyn:=bt1.Caption;
    plek:=1;
  end
  else
    MessageDlg('No slots to delete',mtInformation,[mbOK],0);

  rdbSupervisors.Checked:=True;
  rdbSupervisors.OnClick(Sender);
  iTime:=Round(edtSuper.Value/60);
  if Length(sLyn)>0 then
  begin
    iPos:=Pos(')',sLyn);
    Delete(sLyn,iPos,Length(sLyn));

    if Tekstra.isNumber(sLyn) then
    begin
      for row:=1 to sGridSelect.RowCount-1 do
      begin
        if sGridSelect.Cells[0,row]=sLyn then
          Break;
      end;
      a:=StrToInt(sGridSelect.Cells[3,row]);
      a:=a-iTime;
      sGridSelect.Cells[3,row]:=IntToStr(a);
    end;

    sGridAll.Cells[sGridAll.Col,sGridAll.Row]:=MyCalendar.deleteSupervisor(sGridAll.Cells[sGridAll.Col,sGridAll.Row],plek);
  end;

  MyCalendar.setCalendar(rgpDays.ItemIndex+1,sGridAll,sGridVenue);
  MyCalendar.getCalendar(rgpDays.ItemIndex+1,sGridAll,sGridVenue);
  MyCalendar.setSelectSup(sGridSelect);
  MyCalendar.getGridSupers(sGridVenues,rgpDays.ItemIndex+1);
  pnlChooseInput.Visible:=False;

end;

procedure TfrmFinal.CreateView1Click(Sender: TObject);
begin
  Create1.Click;
  View2.Click;  
end;

procedure TfrmFinal.btSupClick(Sender: TObject);
begin
  stat.Visible:=True;
  frmFinal.Refresh;
  MyCalendar.displayDetailedSup(redSup,edt5.Text,edt6.Text,edt10.Text,edt9.Text,edt8.Text,edt7.Text);
  stat.Visible:=False;
  frmFinal.Refresh;
end;

procedure TfrmFinal.bt13Click(Sender: TObject);
begin
  MessageDlg('Copy the text and paste it to a document',mtInformation,[mbOK],0);
end;

procedure TfrmFinal.sGridVenuesMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  BoolMouseUp2:=True;
end;

procedure TfrmFinal.btn2Click(Sender: TObject);
begin
  MessageDlg('Here you can select the supervisor to add to the chosen slot'+#10+
             '            (Double click to select)'+#10+#10+
             'Keys:'+#10+
             '<Not available>'+#9'-Supervisor is not available for the session'+#10+
             #9+#9+'Can not be selected'+#10+
             '@@@'+#9+#9+'-Supervisor is already placed in this slot'+#10+
             #9+#9+'Can not be selected'+#10+
             '!!!'+#9+#9+'-Supervisor is in a adjacent slot'+#10+
             #9+#9+'Can still be selected'+#10
             ,mtInformation,[mbOK],0);
end;

end.

