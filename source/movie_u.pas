unit movie_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, mplayer_lib, StdCtrls, ExtCtrls, Menus, ActnList, ActnMan,
  Buttons, ToolWin, ActnCtrls, ComCtrls, ActnMenus, ImgList, BandActn,
  XPStyleActnCtrls;

type
  TMZTrackBar = class(TTrackBar)
  published
    property OnMouseUp;
  end;

  TMZTrackType = (mttPosition, mttAudioDelay, mttVolume, mttSpeed,
                  mttBrightness, mttContrast, mttSaturation);


  TfrmMovie = class(TForm)
    statsts: TStatusBar;
    pnl: TPanel;
    ActionToolBar: TActionToolBar;
    ActionMainMenuBar: TActionMainMenuBar;
    pnlBottom: TPanel;
    pnlButtons: TPanel;
    acttbActionToolLowBar: TActionToolBar;
    ImageList: TImageList;
    ActionManager: TActionManager;
    actFileOpen: TAction;
    actPlay: TAction;
    actPause: TAction;
    actStop: TAction;
    actFramStep: TAction;
    actBack01: TAction;
    actBack10: TAction;
    actBack60: TAction;
    actForward01: TAction;
    actForward10: TAction;
    actForward60: TAction;
    actSpeedDec: TAction;
    actSpeedDef: TAction;
    actSpeedInc: TAction;
    actOsdToogle: TAction;
    actFrameDropToogle: TAction;
    actHaveAudio: TAction;
    actHaveVideo: TAction;
    actLogPlayer: TAction;
    actProperties: TAction;
    actClose: TAction;
    actAspectAutodetect: TAction;
    actAspect40_30: TAction;
    actAspect160_90: TAction;
    actAspect235_10: TAction;
    actNativeSize: TAction;
    actFullScreen: TAction;
    actAudioOutNoSound: TAction;
    actAudioOutNull: TAction;
    actAudioOutWin32: TAction;
    actAudioOutDsSound: TAction;
    actReIndex: TAction;
    actParams: TAction;
    actMute: TAction;
    actResetColor: TAction;
    actCustomizeActionBars: TCustomizeActionBars;
    actAbout: TAction;
    pmTrackBar: TPopupMenu;
    miPosition: TMenuItem;
    miAudioDelay: TMenuItem;
    miVolume: TMenuItem;
    miSpeed: TMenuItem;
    miBrightness: TMenuItem;
    miContrast: TMenuItem;
    miSaturation: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMovie: TfrmMovie;

implementation

{$R *.dfm}

end.
