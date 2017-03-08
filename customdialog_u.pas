unit customdialog_u;
 
interface 
 
uses 
  Dialogs, Forms, Graphics, StdCtrls; 
 
function MessageDlgCustom(const Msg: string; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; ToCaptions: array of string; 
  customFont: TFont) : integer; 
procedure ModifyDialog(var frm: TForm; ToCaptions : array of string; 
  customFont : TFont = nil); 
 
 
implementation 
 
uses 
  Windows, SysUtils; 
 
function GetTextWidth(s: string; fnt: TFont; HWND: THandle): integer; 
var 
  canvas: TCanvas; 
begin 
  canvas := TCanvas.Create; 
  try 
    canvas.Handle := GetWindowDC(HWND); 
    canvas.Font := fnt; 
    Result := canvas.TextWidth(s); 
  finally 
    ReleaseDC(HWND,canvas.Handle); 
    FreeAndNil(canvas); 
  end;  //try-finally 
end; 
 
function MessageDlgCustom(const Msg: string; 
  DlgType: TMsgDlgType; Buttons: TMsgDlgButtons; ToCaptions: array of string; 
  customFont: TFont): integer; 
var 
  dialog : TForm; 
begin 
  try 
    dialog := CreateMessageDialog(Msg, DlgType, Buttons); 
    dialog.Position := poScreenCenter; 
    ModifyDialog(dialog,ToCaptions,customFont); 
    Result := dialog.ShowModal; 
  finally 
    dialog.Release; 
  end;  //try-finally 
end; 
 
procedure ModifyDialog(var frm: TForm; ToCaptions: array of string; 
  customFont: TFont); 
const 
  c_BtnMargin = 10;  //margin of button around caption text 
var 
  i,oldButtonWidth,newButtonWidth,btnCnt : integer; 
begin 
  oldButtonWidth := 0; 
  newButtonWidth := 0; 
  btnCnt := 0; 
  for i := 0 to frm.ComponentCount - 1 do begin 
    //if they asked for a custom font, assign it here 
    if customFont <> nil then begin 
      if frm.Components[i] is TLabel then begin 
        TLabel(frm.Components[i]).Font := customFont; 
      end; 
      if frm.Components[i] is TButton then begin 
        TButton(frm.Components[i]).Font := customFont; 
      end; 
    end; 
    if frm.Components[i] is TButton then begin 
      //check buttons for a match with a "from" (default) string 
      //if found, replace with a "to" (custom) string 
      Inc(btnCnt); 
 
      //record the button width *before* we changed the caption 
      oldButtonWidth := oldButtonWidth + TButton(frm.Components[i]).Width; 
 
      //change the caption 
      TButton(frm.Components[i]).Caption := ToCaptions[btnCnt - 1]; 
 
      //auto-size the button for the new caption 
      TButton(frm.Components[i]).Width := 
        GetTextWidth(TButton(frm.Components[i]).Caption, 
          TButton(frm.Components[i]).Font,frm.Handle) + c_BtnMargin; 
 
      //the first button can stay where it is. 
      //all other buttons need to slide over to the right of the one b4. 
      if (1 < btnCnt) and (0 < i) then begin 
        TButton(frm.Components[i]).Left := 
          TButton(frm.Components[i-1]).Left + 
          TButton(frm.Components[i-1]).Width + c_BtnMargin; 
      end; 
 
      //record the button width *after* changing the caption 
      newButtonWidth := newButtonWidth + TButton(frm.Components[i]).Width; 
    end;  //if TButton 
  end;  //for i 
 
  //whatever we changed the buttons by, widen / shrink the form accordingly 
  frm.Width := Round(frm.Width + (newButtonWidth - oldButtonWidth) + 
    (c_BtnMargin * btnCnt)); 
end; 
 
end. 

