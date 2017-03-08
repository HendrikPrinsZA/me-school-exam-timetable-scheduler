object frmVenues: TfrmVenues
  Left = 440
  Top = 143
  Width = 602
  Height = 652
  Caption = 'Setup venues'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label41: TLabel
    Left = 165
    Top = 8
    Width = 204
    Height = 41
    Caption = 'Setup venues'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Modern No. 20'
    Font.Style = []
    ParentFont = False
  end
  object pnlLoad: TPanel
    Left = 16
    Top = 88
    Width = 185
    Height = 353
    Color = clSkyBlue
    TabOrder = 0
    object Label42: TLabel
      Left = 36
      Top = 8
      Width = 118
      Height = 22
      Caption = 'Load from file'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Modern No. 20'
      Font.Style = []
      ParentFont = False
    end
    object rgpLoad: TRadioGroup
      Left = 8
      Top = 40
      Width = 169
      Height = 273
      Caption = 'Available files'
      TabOrder = 0
    end
    object btnRefresh: TButton
      Left = 8
      Top = 320
      Width = 57
      Height = 25
      Caption = 'Refresh'
      TabOrder = 1
      OnClick = btnRefreshClick
    end
    object btnLoad: TButton
      Left = 80
      Top = 320
      Width = 97
      Height = 25
      Caption = 'Load'
      TabOrder = 2
      OnClick = btnLoadClick
    end
  end
  object pnlDelete: TPanel
    Left = 16
    Top = 452
    Width = 185
    Height = 141
    Color = clSkyBlue
    TabOrder = 1
    object Label2: TLabel
      Left = 24
      Top = 56
      Width = 17
      Height = 13
      Caption = 'ID: '
    end
    object Label1: TLabel
      Left = 36
      Top = 8
      Width = 102
      Height = 22
      Caption = 'Delete venue'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Modern No. 20'
      Font.Style = []
      ParentFont = False
    end
    object btnDelete: TButton
      Left = 56
      Top = 104
      Width = 75
      Height = 25
      Caption = 'Delete'
      TabOrder = 0
      OnClick = btnDeleteClick
    end
    object nmrDelete: TSpinEdit
      Left = 56
      Top = 56
      Width = 121
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = 0
    end
  end
  object sGridVenue: TStringGrid
    Left = 224
    Top = 88
    Width = 345
    Height = 513
    ColCount = 4
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 2
    OnKeyUp = sGridVenueKeyUp
  end
  object btnSave: TButton
    Left = 480
    Top = 56
    Width = 89
    Height = 25
    Caption = 'Save to textfile'
    TabOrder = 3
    OnClick = btnSaveClick
  end
  object btnCheck: TButton
    Left = 296
    Top = 56
    Width = 73
    Height = 25
    Caption = 'Check table'
    TabOrder = 4
    OnClick = btnCheckClick
  end
  object btnNew: TButton
    Left = 224
    Top = 56
    Width = 65
    Height = 25
    Caption = 'New table'
    TabOrder = 5
    OnClick = btnNewClick
  end
  object btnWhat: TBitBtn
    Left = 384
    Top = 56
    Width = 89
    Height = 25
    Caption = 'About level'
    TabOrder = 6
    OnClick = btnWhatClick
    Kind = bkHelp
  end
end
