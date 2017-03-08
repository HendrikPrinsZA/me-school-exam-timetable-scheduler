unit Rooster_u;
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SuperVisor_u, Venues_u, tests_u,final_u, Menus, jpeg, ExtCtrls,
  ComCtrls, Buttons, OleCtnrs, AppEvnts, PasLibVlcPlayerUnit, OleServer,
  PowerPointXP, Grids,reg_u, FileCtrl;

type
  TfrmMain = class(TForm)

    



    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Setup1: TMenuItem;
    Supervisors1: TMenuItem;
    Nenues1: TMenuItem;
    ests1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    pnlStepWizard: TPanel;
    shpOne: TShape;
    shpTwo: TShape;
    shpThree: TShape;
    shpFour: TShape;
    RichEdit1: TRichEdit;
    RichEdit2: TRichEdit;
    RichEdit3: TRichEdit;
    RichEdit4: TRichEdit;
    Label41: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    imgR1: TImage;
    imgR2: TImage;
    imgR3: TImage;
    imgW1: TImage;
    imgW2: TImage;
    imgW3: TImage;
    rgpWizzard: TRadioGroup;
    Image1: TImage;
    Image2: TImage;
    Label5: TLabel;
    Label6: TLabel;
    Wizzard1: TMenuItem;
    btnClose: TButton;
    Shape1: TShape;
    Label12: TLabel;
    BitBtn1: TBitBtn;
    pnlMain: TPanel;
    shp1: TShape;
    Image3: TImage;
    Label10: TLabel;
    Label11: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    pnlWizz: TPanel;
    Label8: TLabel;
    btnWizz: TButton;
    Memo3: TMemo;
    pnlOwn: TPanel;
    Label9: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Memo4: TMemo;
    btnTests: TButton;
    btnVenues: TButton;
    btnSupervisors: TButton;
    btnFinal: TButton;
    pnlKey: TPanel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lblActivation: TLabel;
    img1: TImage;
    btActivate: TButton;
    procedure refreshWizzard();
    procedure Supervisors1Click(Sender: TObject);
    procedure Nenues1Click(Sender: TObject);
    procedure ests1Click(Sender: TObject);
    procedure shpOneMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure down(shp: TShape);
    procedure up(shp: TShape);
    procedure shpOneMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure shpTwoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure shpThreeMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure shpFourMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure shpFourMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure shpThreeMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure shpTwoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Wizzard1Click(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnWizzClick(Sender: TObject);
    procedure btnTestsClick(Sender: TObject);
    procedure btnVenuesClick(Sender: TObject);
    procedure btnSupervisorsClick(Sender: TObject);
    procedure btnFinalClick(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btActivateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;
  tReg: reg;
  iWidth,iHeight:Integer;

implementation


{$R *.dfm}
procedure TfrmMain.refreshWizzard();
var
list: TStrings;
begin
    rgpWizzard.Items.Clear;
    Tekstra.FindAll('*.tst',faAnyFile,rgpWizzard.Items);
    if (rgpWizzard.Items.ValueFromIndex[0]='') then
    begin
        imgW1.Visible:=true;
        imgR1.Visible:=false;
    end else
    begin
        imgW1.Visible:=false;
        imgR1.Visible:=true;
    end;

    rgpWizzard.Items.Clear;
    Tekstra.FindAll('*.ven',faAnyFile,rgpWizzard.Items);
    if (rgpWizzard.Items.ValueFromIndex[0]='') then
    begin
        imgW2.Visible:=true;
        imgR2.Visible:=false;
    end else
    begin
        imgW2.Visible:=false;
        imgR2.Visible:=true;
    end;

    rgpWizzard.Items.Clear;
    Tekstra.FindAll('*.sup',faAnyFile,rgpWizzard.Items);
    if (rgpWizzard.Items.ValueFromIndex[0]='') then
    begin
        imgW3.Visible:=true;
        imgR3.Visible:=false;
    end else
    begin
        imgW3.Visible:=false;
        imgR3.Visible:=true;
    end;

    if (imgR1.Visible =true) AND (imgR2.Visible =true) AND (imgR3.Visible =true) then
    begin
        shpFour.Enabled:=true;
        label4.Enabled:=true;
    end else
    begin
        shpFour.Enabled:=false;
        label4.Enabled:=false;
    end;
            //////
end;


procedure TfrmMain.down(shp: TShape);
begin
    shp.Width:=shp.Width-10;
    shp.Height:=shp.Height-10;
    shp.Left:=shp.Left+5;
    shp.Top:=shp.Top+5;
end;

procedure TfrmMain.up(shp: TShape);
begin
    shp.Width:=shp.Width+10;
    shp.Height:=shp.Height+10;
    shp.Left:=shp.Left-5;
    shp.Top:=shp.Top-5;
end;


procedure TfrmMain.Supervisors1Click(Sender: TObject);
begin
    frmSupervisor.Show;
end;

procedure TfrmMain.Nenues1Click(Sender: TObject);
begin
    frmVenues.Show;
end;

procedure TfrmMain.ests1Click(Sender: TObject);
begin
    frmTests.Show;
end;

procedure TfrmMain.shpOneMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    down(shpOne);
    
end;

procedure TfrmMain.shpOneMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    up(shpOne);
    frmTests.Show;
end;

procedure TfrmMain.shpTwoMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    down(shpTwo);
end;

procedure TfrmMain.shpThreeMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    down(shpThree);
end;

procedure TfrmMain.shpFourMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    down(shpFour);
end;

procedure TfrmMain.shpFourMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    up(shpFour);
    frmFinal.Show;
end;

procedure TfrmMain.shpThreeMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    up(shpThree);
    frmSupervisor.Show;
end;

procedure TfrmMain.shpTwoMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    up(shpTwo);
    frmVenues.Show;
end;

function SetScreenResolution(Width, Height: integer): Longint;
var
  DeviceMode: TDeviceMode;
begin
  with DeviceMode do begin
    dmSize := SizeOf(TDeviceMode);
    dmPelsWidth := Width;
    dmPelsHeight := Height;
    dmFields := DM_PELSWIDTH or DM_PELSHEIGHT;
  end;
  Result := ChangeDisplaySettings(DeviceMode, CDS_UPDATEREGISTRY);
end;


procedure TfrmMain.FormActivate(Sender: TObject);
begin
    refreshWizzard();

end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
    refreshWizzard();
end;

procedure TfrmMain.Wizzard1Click(Sender: TObject);
begin
    pnlStepWizard.Visible:= true;
    pnlMain.Visible:=false;
end;

procedure TfrmMain.btnCloseClick(Sender: TObject);
begin
    pnlStepWizard.Visible:=false;
    pnlMain.Visible:=true;
end;

procedure TfrmMain.btnWizzClick(Sender: TObject);
begin
    pnlStepWizard.Visible:=true;
    pnlMain.Visible:=false;
end;

procedure TfrmMain.btnTestsClick(Sender: TObject);
begin
    frmTests.Show;
end;

procedure TfrmMain.btnVenuesClick(Sender: TObject);
begin
    frmVenues.Show;
end;

procedure TfrmMain.btnSupervisorsClick(Sender: TObject);
begin
    frmSupervisor.Show;
    
end;

procedure TfrmMain.btnFinalClick(Sender: TObject);
begin
    frmFinal.Show;

end;

procedure TfrmMain.Exit1Click(Sender: TObject);
begin
    close();
end;

procedure TfrmMain.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    shape1.Visible:=false;
    label5.Visible:=false;
    label6.Visible:=false;
    image2.Visible:=false;
    image1.Visible:=false;
    label12.Visible:=false;
    BitBtn1.Visible:=true;
end;

procedure TfrmMain.BitBtn1Click(Sender: TObject);
begin
    shape1.Visible:=true;
    label5.Visible:=true;
    label6.Visible:=true;
    image2.Visible:=true;
    image1.Visible:=true;
    label12.Visible:=true;
    BitBtn1.Visible:=false;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SetScreenResolution(iWidth,iHeight)
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
      iWidth:=Screen.Width;
      iHeight:=Screen.Height;
      //tReg.activateNow;

      {if not ((Screen.Height=1024) and (screen.Width=1280)) then
      begin
        SetScreenResolution(1280,1024);
        MessageDlg('Screen resolution temporarily changed to 1280X1024',mtInformation,[mbOK],0)
      end; }
      //tReg.aktiveer(pnlKey,lblActivation,MainMenu1);
      frmMain.Height:=774;
end;

procedure TfrmMain.btActivateClick(Sender: TObject);
begin
  if (Tekstra.isNumber(edt1.text)) then
  begin
    if (Tekstra.isNumber(edt2.text)) then
    begin
      if (Tekstra.isNumber(edt3.text)) then
      begin
        if (Tekstra.isNumber(edt4.text)) then
        begin
          if tReg.isValid(strToInt(edt1.text),strToInt(edt2.text),strToInt(edt3.text),strToInt(edt4.text)) then
          begin
            MessageDlg('Registration complete',mtConfirmation,[mbOK],0);
            tReg.writeToFile(edt1.Text+'-'+edt2.Text+'-'+edt3.Text+'-'+edt4.Text+'-');
            pnlKey.Visible:=False;
            MainMenu1.Items[0].Enabled:=True;
          end else
          begin
            MessageDlg('Not a valid registration code',mtError,[mbOK],0);
          end
        end else
        MessageDlg('Field one is not numeric',mtError,[mbOK],0);
      end else
      MessageDlg('Field one is not numeric',mtError,[mbOK],0);
    end else
    MessageDlg('Field one is not numeric',mtError,[mbOK],0);
  end else
  MessageDlg('Field one is not numeric',mtError,[mbOK],0);
end;

end.
