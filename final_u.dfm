object frmFinal: TfrmFinal
  Left = 225
  Top = 3
  Width = 1598
  Height = 903
  VertScrollBar.Color = clBtnFace
  VertScrollBar.Increment = 71
  VertScrollBar.ParentColor = False
  Caption = 'Final Step'
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCal: TPanel
    Left = 0
    Top = 19
    Width = 1582
    Height = 826
    Align = alClient
    Color = clMoneyGreen
    TabOrder = 0
    object Label42: TLabel
      Left = 228
      Top = 328
      Width = 146
      Height = 22
      Caption = 'Viewing selection:'
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -20
      Font.Name = 'Modern No. 20'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Visible = False
    end
    object lblPeriods: TLabel
      Left = 616
      Top = 336
      Width = 6
      Height = 13
      Caption = '0'
      Visible = False
    end
    object shpThree: TShape
      Left = 802
      Top = 44
      Width = 17
      Height = 17
      Shape = stCircle
    end
    object lblSessie: TLabel
      Left = 8
      Top = 408
      Width = 41
      Height = 13
      Caption = 'lblSessie'
      Visible = False
    end
    object Label31: TLabel
      Left = 1092
      Top = 160
      Width = 72
      Height = 22
      Caption = 'Calendar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Modern No. 20'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object pnlDays: TPanel
      Left = 24
      Top = 48
      Width = 769
      Height = 249
      Color = clSkyBlue
      Enabled = False
      TabOrder = 1
      object Label24: TLabel
        Left = 292
        Top = 8
        Width = 85
        Height = 22
        Caption = 'Setup days'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Modern No. 20'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 16
        Top = 40
        Width = 77
        Height = 13
        Caption = 'Number of days:'
      end
      object Label26: TLabel
        Left = 16
        Top = 80
        Width = 136
        Height = 13
        Caption = 'Number of sessions per day: '
      end
      object Label28: TLabel
        Left = 280
        Top = 80
        Width = 36
        Height = 13
        Caption = 'each of'
      end
      object Label32: TLabel
        Left = 448
        Top = 80
        Width = 26
        Height = 13
        Caption = 'hours'
      end
      object Label33: TLabel
        Left = 512
        Top = 80
        Width = 109
        Height = 13
        Caption = 'Test hours per session:'
      end
      object lblHPC: TLabel
        Left = 696
        Top = 80
        Width = 6
        Height = 13
        Caption = '0'
      end
      object Label30: TLabel
        Left = 512
        Top = 48
        Width = 115
        Height = 13
        Caption = 'Number of tests per day:'
      end
      object lblTestnmrs: TLabel
        Left = 696
        Top = 48
        Width = 6
        Height = 13
        Caption = '0'
      end
      object prog: TGauge
        Left = 512
        Top = 128
        Width = 201
        Height = 17
        Progress = 0
      end
      object Label34: TLabel
        Left = 560
        Top = 112
        Width = 117
        Height = 13
        Caption = 'Tests/total sessions ratio'
      end
      object lbl3: TLabel
        Left = 8
        Top = 136
        Width = 137
        Height = 13
        Caption = 'A supervising session will last'
      end
      object lbl4: TLabel
        Left = 232
        Top = 136
        Width = 36
        Height = 13
        Caption = 'minutes'
      end
      object shpTwo: TShape
        Left = 8
        Top = 8
        Width = 17
        Height = 17
        Shape = stCircle
      end
      object edtDays: TSpinEdit
        Left = 152
        Top = 40
        Width = 121
        Height = 22
        MaxValue = 50
        MinValue = 0
        TabOrder = 0
        Value = 0
        OnChange = edtDaysChange
      end
      object edtSessions: TSpinEdit
        Left = 152
        Top = 80
        Width = 121
        Height = 22
        MaxValue = 10
        MinValue = 0
        TabOrder = 1
        Value = 0
        OnChange = edtDaysChange
      end
      object edtHours: TSpinEdit
        Left = 320
        Top = 80
        Width = 121
        Height = 22
        MaxValue = 10
        MinValue = 0
        TabOrder = 2
        Value = 0
        OnChange = edtDaysChange
      end
      object btnLoadSettings: TButton
        Left = 392
        Top = 208
        Width = 97
        Height = 25
        Caption = 'Confirm settings'
        TabOrder = 3
        OnClick = btnLoadSettingsClick
      end
      object btnRecom: TButton
        Left = 184
        Top = 208
        Width = 177
        Height = 25
        Caption = 'Calculate recomended settings'
        TabOrder = 4
        OnClick = btnRecomClick
      end
      object edtSuper: TSpinEdit
        Left = 152
        Top = 136
        Width = 73
        Height = 22
        MaxValue = 360
        MinValue = 0
        TabOrder = 5
        Value = 0
        OnExit = edtSuperExit
      end
    end
    object pnlChoose: TPageControl
      Left = 8
      Top = 304
      Width = 1521
      Height = 545
      ActivePage = tabAll
      Enabled = False
      Style = tsFlatButtons
      TabOrder = 4
      TabWidth = 144
      object tabTest: TTabSheet
        Caption = 'Tests setup'
        TabVisible = False
        object Label38: TLabel
          Left = 220
          Top = 16
          Width = 150
          Height = 22
          Caption = 'Viewing by test ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Modern No. 20'
          Font.Style = []
          ParentFont = False
        end
        object sGridDays: TStringGrid
          Left = 0
          Top = 0
          Width = 1513
          Height = 514
          Align = alClient
          ColCount = 1
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
          PopupMenu = popTests
          TabOrder = 0
        end
      end
      object tabAll: TTabSheet
        Caption = 'Main Setup'
        ImageIndex = 3
        object Label41: TLabel
          Left = 564
          Top = 0
          Width = 93
          Height = 22
          Caption = 'Viewing all'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Modern No. 20'
          Font.Style = []
          ParentFont = False
        end
        object sGridAll: TStringGrid
          Left = 0
          Top = 0
          Width = 1513
          Height = 514
          Align = alClient
          ColCount = 1
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected]
          PopupMenu = popAll
          TabOrder = 0
          OnClick = sGridAllClick
          OnMouseDown = sGridAllMouseDown
          OnMouseUp = sGridAllMouseUp
          OnSelectCell = sGridAllSelectCell
        end
      end
      object tabVenue: TTabSheet
        Caption = 'Supervisors'
        ImageIndex = 1
        object Label40: TLabel
          Left = 220
          Top = 16
          Width = 169
          Height = 22
          Caption = 'Viewing by venue ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Modern No. 20'
          Font.Style = []
          ParentFont = False
        end
        object sGridVenues: TStringGrid
          Left = 0
          Top = 0
          Width = 1513
          Height = 514
          Align = alClient
          ColCount = 1
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          TabOrder = 0
          OnMouseDown = sGridVenuesMouseDown
          OnMouseUp = sGridVenuesMouseUp
          OnSelectCell = sGridVenuesSelectCell
        end
      end
      object tabSuper: TTabSheet
        Caption = 'Book Supervisors Off'
        ImageIndex = 2
        object lbl22: TLabel
          Left = 8
          Top = 0
          Width = 93
          Height = 13
          Caption = 'Choose supervisor: '
        end
        object sGridSupervisors: TStringGrid
          Left = 0
          Top = 32
          Width = 1505
          Height = 473
          ColCount = 1
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
          TabOrder = 0
          OnMouseDown = sGridSupervisorsMouseDown
          OnSelectCell = sGridSupervisorsSelectCell
        end
        object cbbSupers: TComboBox
          Left = 104
          Top = 0
          Width = 361
          Height = 21
          DropDownCount = 20
          ItemHeight = 13
          TabOrder = 1
          OnClick = cbbSupersClick
          OnSelect = cbbSupersSelect
        end
        object chk1: TCheckBox
          Left = 1040
          Top = 8
          Width = 97
          Height = 17
          Caption = 'Select entire day'
          TabOrder = 2
          OnClick = chk1Click
        end
      end
    end
    object rgpDays: TRadioGroup
      Left = 816
      Top = 40
      Width = 769
      Height = 257
      BiDiMode = bdLeftToRight
      Caption = 'Choose day to view'
      Columns = 3
      Enabled = False
      ParentBiDiMode = False
      TabOrder = 0
      OnClick = rgpDaysClick
    end
    object pnlReview: TPanel
      Left = 920
      Top = 0
      Width = 617
      Height = 41
      Cursor = crHandPoint
      BorderWidth = 1
      BorderStyle = bsSingle
      Color = clSkyBlue
      TabOrder = 2
      OnClick = pnlReviewClick
      object Label22: TLabel
        Left = 236
        Top = 8
        Width = 133
        Height = 22
        Cursor = crHandPoint
        Caption = 'Review and stats'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Modern No. 20'
        Font.Style = []
        ParentFont = False
        OnClick = pnlReviewClick
      end
      object lblReview: TLabel
        Left = 504
        Top = 16
        Width = 102
        Height = 13
        Cursor = crHandPoint
        Caption = 'Click panel to expand'
        OnClick = pnlReviewClick
      end
      object page: TPageControl
        Left = 0
        Top = 41
        Width = 617
        Height = 609
        ActivePage = tabVenues
        MultiLine = True
        Style = tsButtons
        TabOrder = 0
        TabWidth = 150
        object tabStats: TTabSheet
          Caption = 'View stats'
          object shp1: TShape
            Left = 96
            Top = 40
            Width = 401
            Height = 169
            Pen.Width = 2
            Shape = stRoundRect
          end
          object Label4: TLabel
            Left = 112
            Top = 88
            Width = 38
            Height = 13
            Caption = 'Grade 8'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label5: TLabel
            Left = 112
            Top = 104
            Width = 38
            Height = 13
            Caption = 'Grade 9'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lbl9: TLabel
            Left = 376
            Top = 104
            Width = 6
            Height = 13
            Caption = '0'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label7: TLabel
            Left = 112
            Top = 120
            Width = 44
            Height = 13
            Caption = 'Grade 10'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lbl10: TLabel
            Left = 376
            Top = 120
            Width = 6
            Height = 13
            Caption = '0'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label9: TLabel
            Left = 112
            Top = 136
            Width = 44
            Height = 13
            Caption = 'Grade 11'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lbl11: TLabel
            Left = 376
            Top = 136
            Width = 6
            Height = 13
            Caption = '0'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label11: TLabel
            Left = 112
            Top = 152
            Width = 44
            Height = 13
            Caption = 'Grade 12'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lbl12: TLabel
            Left = 376
            Top = 152
            Width = 6
            Height = 13
            Caption = '0'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblTotal: TLabel
            Left = 376
            Top = 168
            Width = 8
            Height = 13
            Caption = '0'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object lbl8: TLabel
            Left = 376
            Top = 88
            Width = 6
            Height = 13
            Caption = '0'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label15: TLabel
            Left = 128
            Top = 168
            Width = 27
            Height = 13
            Caption = 'Total:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblHours: TLabel
            Left = 376
            Top = 184
            Width = 8
            Height = 13
            Caption = '0'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label8: TLabel
            Left = 296
            Top = 184
            Width = 62
            Height = 13
            Caption = 'Total (hours):'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lbl9S: TLabel
            Left = 176
            Top = 104
            Width = 6
            Height = 13
            Caption = '0'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lbl10S: TLabel
            Left = 176
            Top = 120
            Width = 6
            Height = 13
            Caption = '0'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lbl11S: TLabel
            Left = 176
            Top = 136
            Width = 6
            Height = 13
            Caption = '0'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lbl12S: TLabel
            Left = 176
            Top = 152
            Width = 6
            Height = 13
            Caption = '0'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lbl8S: TLabel
            Left = 176
            Top = 88
            Width = 6
            Height = 13
            Caption = '0'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label6: TLabel
            Left = 176
            Top = 72
            Width = 56
            Height = 13
            Caption = 'Nmr of tests'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label10: TLabel
            Left = 376
            Top = 72
            Width = 91
            Height = 13
            Caption = 'Total time (minutes)'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label16: TLabel
            Left = 224
            Top = 48
            Width = 32
            Height = 13
            Caption = 'Tests'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentColor = False
            ParentFont = False
          end
          object Label13: TLabel
            Left = 4
            Top = 8
            Width = 39
            Height = 22
            Caption = 'Stats'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Modern No. 20'
            Font.Style = []
            ParentFont = False
          end
          object Shape1: TShape
            Left = 160
            Top = 312
            Width = 281
            Height = 169
            Pen.Width = 2
            Shape = stRoundRect
          end
          object Label14: TLabel
            Left = 184
            Top = 368
            Width = 35
            Height = 13
            Caption = 'Level 0'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label17: TLabel
            Left = 184
            Top = 384
            Width = 35
            Height = 13
            Caption = 'Level 1'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblH1: TLabel
            Left = 360
            Top = 384
            Width = 6
            Height = 13
            Caption = '0'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label19: TLabel
            Left = 184
            Top = 400
            Width = 35
            Height = 13
            Caption = 'Level 2'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblH2: TLabel
            Left = 360
            Top = 400
            Width = 6
            Height = 13
            Caption = '0'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label21: TLabel
            Left = 184
            Top = 416
            Width = 35
            Height = 13
            Caption = 'Level 3'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblH3: TLabel
            Left = 360
            Top = 416
            Width = 6
            Height = 13
            Caption = '0'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblStotal: TLabel
            Left = 360
            Top = 448
            Width = 8
            Height = 13
            Caption = '0'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object lblH0: TLabel
            Left = 360
            Top = 368
            Width = 6
            Height = 13
            Caption = '0'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label27: TLabel
            Left = 328
            Top = 448
            Width = 27
            Height = 13
            Caption = 'Total:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblStotalH: TLabel
            Left = 360
            Top = 464
            Width = 8
            Height = 13
            Caption = '0'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label29: TLabel
            Left = 296
            Top = 464
            Width = 62
            Height = 13
            Caption = 'Total (hours):'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblC1: TLabel
            Left = 272
            Top = 384
            Width = 6
            Height = 13
            Caption = '0'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblC2: TLabel
            Left = 272
            Top = 400
            Width = 6
            Height = 13
            Caption = '0'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblC3: TLabel
            Left = 272
            Top = 416
            Width = 6
            Height = 13
            Caption = '0'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblC0: TLabel
            Left = 272
            Top = 368
            Width = 6
            Height = 13
            Caption = '0'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label35: TLabel
            Left = 264
            Top = 352
            Width = 28
            Height = 13
            Caption = 'Count'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label36: TLabel
            Left = 328
            Top = 352
            Width = 91
            Height = 13
            Caption = 'Total time (minutes)'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label37: TLabel
            Left = 272
            Top = 320
            Width = 67
            Height = 13
            Caption = 'Supervisors'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentColor = False
            ParentFont = False
          end
          object Shape2: TShape
            Left = 168
            Top = 216
            Width = 265
            Height = 81
            Pen.Width = 2
            Shape = stRoundRect
          end
          object Label18: TLabel
            Left = 192
            Top = 248
            Width = 93
            Height = 13
            Caption = 'Number of venues: '
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label20: TLabel
            Left = 192
            Top = 272
            Width = 136
            Height = 13
            Caption = 'Number of seats per session:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblSeats: TLabel
            Left = 336
            Top = 272
            Width = 6
            Height = 13
            Caption = '0'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblVenues: TLabel
            Left = 288
            Top = 248
            Width = 6
            Height = 13
            Caption = '0'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label44: TLabel
            Left = 280
            Top = 224
            Width = 43
            Height = 13
            Caption = 'Venues'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentColor = False
            ParentFont = False
          end
          object lblTotalTests: TLabel
            Left = 176
            Top = 168
            Width = 8
            Height = 13
            Caption = '0'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object lblA9: TLabel
            Left = 248
            Top = 104
            Width = 6
            Height = 13
            Caption = '0'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblA10: TLabel
            Left = 248
            Top = 120
            Width = 6
            Height = 13
            Caption = '0'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblA11: TLabel
            Left = 248
            Top = 136
            Width = 6
            Height = 13
            Caption = '0'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblA12: TLabel
            Left = 248
            Top = 152
            Width = 6
            Height = 13
            Caption = '0'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblA8: TLabel
            Left = 248
            Top = 88
            Width = 6
            Height = 13
            Caption = '0'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label43: TLabel
            Left = 248
            Top = 72
            Width = 121
            Height = 13
            Caption = 'Average students per test'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblATotal: TLabel
            Left = 248
            Top = 168
            Width = 8
            Height = 13
            Caption = '0'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object btnRef: TButton
            Left = 528
            Top = 8
            Width = 75
            Height = 25
            Caption = 'Refresh stats'
            TabOrder = 0
            OnClick = btnRefClick
          end
        end
        object tabTests: TTabSheet
          Caption = 'View Tests'
          ImageIndex = 1
          object Label1: TLabel
            Left = 4
            Top = 8
            Width = 88
            Height = 22
            Caption = 'Tests'#39' table'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Modern No. 20'
            Font.Style = []
            ParentFont = False
          end
          object sGridTests: TStringGrid
            Left = 64
            Top = 48
            Width = 449
            Height = 493
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
            TabOrder = 0
          end
        end
        object tabVenues: TTabSheet
          Caption = 'View Venues'
          ImageIndex = 2
          object Label2: TLabel
            Left = 4
            Top = 8
            Width = 106
            Height = 22
            Caption = 'Venues'#39' table'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Modern No. 20'
            Font.Style = []
            ParentFont = False
          end
          object sGridVenue: TStringGrid
            Left = 96
            Top = 48
            Width = 345
            Height = 493
            ColCount = 4
            RowCount = 2
            TabOrder = 0
          end
        end
        object tabSupervisors: TTabSheet
          Caption = 'View Supervisors'
          ImageIndex = 3
          object Label12: TLabel
            Left = 4
            Top = 8
            Width = 141
            Height = 22
            Caption = 'Supervisors'#39' table'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Modern No. 20'
            Font.Style = []
            ParentFont = False
          end
          object gridS: TStringGrid
            Left = 32
            Top = 48
            Width = 513
            Height = 493
            RowCount = 2
            TabOrder = 0
          end
        end
      end
    end
    object btnMaximizeEdit: TButton
      Left = 1176
      Top = 0
      Width = 99
      Height = 25
      Caption = 'Maximize Editing'
      TabOrder = 6
      Visible = False
      OnClick = btnMaximizeEditClick
    end
    object pnlManual: TPanel
      Left = 1544
      Top = 304
      Width = 57
      Height = 545
      Cursor = crHandPoint
      BorderWidth = 1
      BorderStyle = bsSingle
      Color = clSkyBlue
      DragCursor = crNo
      Enabled = False
      TabOrder = 5
      OnClick = pnlManualClick
      object Label45: TLabel
        Left = 164
        Top = 16
        Width = 49
        Height = 22
        Align = alCustom
        BiDiMode = bdLeftToRight
        Caption = 'EDIT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Modern No. 20'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        OnClick = pnlManualClick
      end
      object Label46: TLabel
        Left = 296
        Top = 8
        Width = 95
        Height = 13
        Caption = 'Click panel to shrink'
        OnClick = pnlManualClick
      end
      object lbl1: TLabel
        Left = 24
        Top = 288
        Width = 16
        Height = 13
        Caption = 'lbl1'
        OnClick = pnlManualClick
      end
      object lbl2: TLabel
        Left = 20
        Top = 8
        Width = 14
        Height = 22
        Align = alCustom
        BiDiMode = bdLeftToRight
        Caption = 'E'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Modern No. 20'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        OnClick = pnlManualClick
      end
      object rdbTest: TRadioButton
        Left = 16
        Top = 112
        Width = 113
        Height = 17
        Caption = 'Add test'
        TabOrder = 0
        OnClick = rdbTestClick
      end
      object rdbSupervisors: TRadioButton
        Left = 224
        Top = 112
        Width = 113
        Height = 17
        Caption = 'Add Supervisor'
        Checked = True
        TabOrder = 1
        TabStop = True
        OnClick = rdbTestClick
      end
      object sGridSelect: TStringGrid
        Left = 16
        Top = 136
        Width = 377
        Height = 393
        Cursor = crHandPoint
        RowCount = 1000
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
        TabOrder = 2
        Visible = False
        OnClick = sGridSelectDblClick
        RowHeights = (
          24
          25
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24)
      end
      object Panel1: TPanel
        Left = 16
        Top = 48
        Width = 377
        Height = 57
        Color = clActiveCaption
        TabOrder = 3
        Visible = False
        object lblSession: TLabel
          Left = 195
          Top = 28
          Width = 6
          Height = 13
          Caption = '0'
        end
        object Label48: TLabel
          Left = 152
          Top = 28
          Width = 37
          Height = 13
          Caption = 'Session'
        end
        object Label55: TLabel
          Left = 32
          Top = 28
          Width = 19
          Height = 13
          Caption = 'Day'
        end
        object lblDay: TLabel
          Left = 67
          Top = 28
          Width = 6
          Height = 13
          Caption = '0'
        end
        object lblVenue: TLabel
          Left = 323
          Top = 28
          Width = 6
          Height = 13
          Caption = '0'
        end
        object Label58: TLabel
          Left = 280
          Top = 28
          Width = 31
          Height = 13
          Caption = 'Venue'
        end
        object Label49: TLabel
          Left = 136
          Top = 8
          Width = 102
          Height = 13
          Caption = 'Field being edited'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object btnRefresh: TButton
        Left = 16
        Top = 16
        Width = 81
        Height = 25
        Caption = 'Refresh hours'
        TabOrder = 4
        Visible = False
      end
    end
    object pnlSelectFiles: TPanel
      Left = 56
      Top = 0
      Width = 617
      Height = 41
      Cursor = crHandPoint
      BorderWidth = 1
      BorderStyle = bsSingle
      Color = clSkyBlue
      DragCursor = crNo
      TabOrder = 3
      OnClick = pnlSelectFilesClick
      object Label3: TLabel
        Left = 220
        Top = 8
        Width = 164
        Height = 22
        Caption = 'Load files into setup'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Modern No. 20'
        Font.Style = []
        ParentFont = False
        OnClick = pnlSelectFilesClick
      end
      object lblexpand: TLabel
        Left = 504
        Top = 16
        Width = 102
        Height = 13
        Caption = 'Click panel to expand'
        OnClick = pnlSelectFilesClick
      end
      object shpOne: TShape
        Left = 8
        Top = 8
        Width = 17
        Height = 17
        Shape = stCircle
        OnMouseDown = shpOneMouseDown
      end
      object rgpLoadTests: TRadioGroup
        Left = 8
        Top = 40
        Width = 169
        Height = 273
        Caption = 'Available test-files'
        TabOrder = 0
      end
      object rgpLoadVenues: TRadioGroup
        Left = 192
        Top = 40
        Width = 169
        Height = 273
        Caption = 'Available venue-files'
        TabOrder = 1
      end
      object rgpLoadSupervisors: TRadioGroup
        Left = 376
        Top = 40
        Width = 169
        Height = 273
        Caption = 'Available supervisor-files'
        TabOrder = 2
      end
      object btnLoad: TButton
        Left = 80
        Top = 320
        Width = 97
        Height = 25
        Caption = 'Load tests-file'
        TabOrder = 3
        OnClick = btnLoadClick
      end
      object Button2: TButton
        Left = 264
        Top = 320
        Width = 97
        Height = 25
        Caption = 'Load venue-file'
        TabOrder = 4
        OnClick = Button2Click
      end
      object Button4: TButton
        Left = 440
        Top = 320
        Width = 105
        Height = 25
        Caption = 'Load supervisor-file'
        TabOrder = 5
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 184
        Top = 368
        Width = 65
        Height = 25
        Caption = 'Refresh all'
        TabOrder = 6
        OnClick = Button5Click
      end
      object btnLoadAll: TButton
        Left = 264
        Top = 368
        Width = 97
        Height = 25
        Caption = 'Load all'
        TabOrder = 7
        OnClick = btnLoadAllClick
      end
    end
    object cmbInline: TComboBox
      Left = 656
      Top = 368
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 7
      Text = 'Choose'
      OnExit = cmbInlineExit
      OnSelect = cmbInlineSelect
      Items.Strings = (
        'asd'
        'asd'
        'asd'
        'as'
        'da'
        'sd'
        'as'
        'd'
        'asd'
        'a'
        'sd'
        'asd')
    end
    object btnOpenView: TButton
      Left = 1168
      Top = 328
      Width = 75
      Height = 25
      Caption = 'btnOpenView'
      TabOrder = 8
      Visible = False
      OnClick = btnOpenViewClick
    end
    object pnlChooseInput: TPanel
      Left = 544
      Top = 368
      Width = 465
      Height = 257
      BevelInner = bvRaised
      BevelOuter = bvLowered
      BevelWidth = 3
      BorderWidth = 5
      BorderStyle = bsSingle
      Color = clSkyBlue
      TabOrder = 9
      Visible = False
      object lbl5: TLabel
        Left = 160
        Top = 32
        Width = 128
        Height = 24
        Caption = 'Choose a slot'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object shp2: TShape
        Left = 16
        Top = 80
        Width = 433
        Height = 161
        Brush.Color = clSkyBlue
      end
      object shp6: TShape
        Left = 16
        Top = 80
        Width = 145
        Height = 41
        Brush.Color = clSkyBlue
      end
      object shp3: TShape
        Left = 160
        Top = 80
        Width = 145
        Height = 41
        Brush.Color = clSkyBlue
      end
      object shp4: TShape
        Left = 304
        Top = 80
        Width = 145
        Height = 41
        Brush.Color = clSkyBlue
      end
      object shp5: TShape
        Left = 16
        Top = 120
        Width = 145
        Height = 41
        Brush.Color = clSkyBlue
      end
      object shp7: TShape
        Left = 160
        Top = 120
        Width = 145
        Height = 41
        Brush.Color = clSkyBlue
      end
      object shp8: TShape
        Left = 304
        Top = 120
        Width = 145
        Height = 41
        Brush.Color = clSkyBlue
      end
      object shp9: TShape
        Left = 16
        Top = 160
        Width = 145
        Height = 41
        Brush.Color = clSkyBlue
      end
      object shp10: TShape
        Left = 160
        Top = 160
        Width = 145
        Height = 41
        Brush.Color = clSkyBlue
      end
      object shp11: TShape
        Left = 304
        Top = 160
        Width = 145
        Height = 41
        Brush.Color = clSkyBlue
      end
      object lbl6: TLabel
        Left = 16
        Top = 80
        Width = 6
        Height = 13
        Caption = '1'
      end
      object lbl7: TLabel
        Left = 160
        Top = 80
        Width = 6
        Height = 13
        Caption = '2'
      end
      object lbl13: TLabel
        Left = 304
        Top = 80
        Width = 6
        Height = 13
        Caption = '3'
      end
      object lbl14: TLabel
        Left = 16
        Top = 120
        Width = 6
        Height = 13
        Caption = '4'
      end
      object lbl15: TLabel
        Left = 160
        Top = 120
        Width = 6
        Height = 13
        Caption = '5'
      end
      object lbl16: TLabel
        Left = 304
        Top = 120
        Width = 6
        Height = 13
        Caption = '6'
      end
      object lbl17: TLabel
        Left = 16
        Top = 160
        Width = 6
        Height = 13
        Caption = '7'
      end
      object lbl18: TLabel
        Left = 160
        Top = 160
        Width = 6
        Height = 13
        Caption = '8'
      end
      object lbl19: TLabel
        Left = 304
        Top = 160
        Width = 6
        Height = 13
        Caption = '9'
      end
      object lbl20: TLabel
        Left = 16
        Top = 200
        Width = 12
        Height = 13
        Caption = '10'
      end
      object bt1: TButton
        Left = 24
        Top = 88
        Width = 130
        Height = 25
        Caption = '+'
        TabOrder = 0
        OnClick = bt1Click
      end
      object bt2: TButton
        Left = 168
        Top = 88
        Width = 130
        Height = 25
        Caption = '+'
        TabOrder = 1
        OnClick = bt2Click
      end
      object bt3: TButton
        Left = 312
        Top = 88
        Width = 130
        Height = 25
        Caption = '+'
        TabOrder = 2
        OnClick = bt3Click
      end
      object bt4: TButton
        Left = 24
        Top = 128
        Width = 130
        Height = 25
        Caption = '+'
        TabOrder = 3
        OnClick = bt4Click
      end
      object bt5: TButton
        Left = 168
        Top = 128
        Width = 130
        Height = 25
        Caption = '+'
        TabOrder = 4
        OnClick = bt5Click
      end
      object bt6: TButton
        Left = 312
        Top = 128
        Width = 130
        Height = 25
        Caption = '+'
        TabOrder = 5
        OnClick = bt6Click
      end
      object bt7: TButton
        Left = 24
        Top = 168
        Width = 130
        Height = 25
        Caption = '+'
        TabOrder = 6
        OnClick = bt7Click
      end
      object bt8: TButton
        Left = 168
        Top = 168
        Width = 130
        Height = 25
        Caption = '+'
        TabOrder = 7
        OnClick = bt8Click
      end
      object bt9: TButton
        Left = 312
        Top = 168
        Width = 130
        Height = 25
        Caption = '+'
        TabOrder = 8
        OnClick = bt9Click
      end
      object bt10: TButton
        Left = 32
        Top = 208
        Width = 409
        Height = 25
        Caption = '+'
        TabOrder = 9
        OnClick = bt10Click
      end
      object btnAdd: TBitBtn
        Left = 16
        Top = 16
        Width = 137
        Height = 57
        Caption = 'Add another ++'
        TabOrder = 10
        OnClick = btnAddClick
        Kind = bkOK
        Style = bsNew
      end
      object btnRemove: TBitBtn
        Left = 296
        Top = 16
        Width = 137
        Height = 57
        Caption = 'Delete last --'
        TabOrder = 11
        OnClick = btnRemoveClick
        Kind = bkAbort
        Style = bsNew
      end
      object bt11: TButton
        Left = 440
        Top = 8
        Width = 13
        Height = 17
        Caption = 'X'
        TabOrder = 12
        OnClick = bt11Click
      end
    end
    object btGenerate: TButton
      Left = 856
      Top = 368
      Width = 75
      Height = 25
      Caption = 'Generate list'
      TabOrder = 10
      Visible = False
      OnClick = btGenerateClick
    end
  end
  object pnlEasyInput: TPanel
    Left = 256
    Top = 0
    Width = 1265
    Height = 361
    BevelInner = bvLowered
    BevelWidth = 3
    BorderWidth = 5
    BorderStyle = bsSingle
    Color = clSkyBlue
    TabOrder = 1
    Visible = False
    object lblID: TLabel
      Left = 96
      Top = 328
      Width = 21
      Height = 13
      Caption = 'lblID'
      Visible = False
    end
    object lblTop: TLabel
      Left = 16
      Top = 24
      Width = 192
      Height = 24
      Caption = 'Choose a test to add'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl21: TLabel
      Left = 832
      Top = 40
      Width = 35
      Height = 13
      Caption = 'Format:'
    end
    object lblFormat: TLabel
      Left = 872
      Top = 40
      Width = 370
      Height = 13
      Caption = 
        '[ID]) Grade:[GRADE]        [SUBJECT]        [STUDENTS YET TO BE ' +
        'PLACED]'
    end
    object shp12: TShape
      Left = 16
      Top = 56
      Width = 1225
      Height = 289
      Brush.Color = clBtnFace
    end
    object lstInsert: TListBox
      Left = 24
      Top = 64
      Width = 1209
      Height = 273
      BevelEdges = []
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clBtnFace
      Columns = 5
      Ctl3D = True
      DragCursor = crHandPoint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      IntegralHeight = True
      ItemHeight = 13
      MultiSelect = True
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      TabWidth = 40
      OnDblClick = lstInsertDblClick
    end
    object seChoose: TSpinEdit
      Left = 32
      Top = 320
      Width = 57
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 0
      Value = 0
      Visible = False
    end
    object btClose: TButton
      Left = 1232
      Top = 16
      Width = 17
      Height = 17
      Caption = 'X'
      TabOrder = 1
      OnClick = btCloseClick
    end
    object pnl2: TPanel
      Left = 264
      Top = 56
      Width = 1
      Height = 289
      BevelOuter = bvNone
      BorderWidth = 2
      Color = clBlack
      TabOrder = 3
    end
    object pnl3: TPanel
      Left = 504
      Top = 56
      Width = 1
      Height = 289
      BevelOuter = bvNone
      BorderWidth = 3
      Color = clBlack
      TabOrder = 4
    end
    object pnl4: TPanel
      Left = 744
      Top = 56
      Width = 1
      Height = 289
      BevelOuter = bvNone
      BorderWidth = 3
      Color = clBlack
      TabOrder = 5
    end
    object pnl6: TPanel
      Left = 984
      Top = 56
      Width = 1
      Height = 289
      BevelOuter = bvNone
      BorderWidth = 3
      Color = clBlack
      TabOrder = 6
    end
    object btDelete: TButton
      Left = 312
      Top = 24
      Width = 353
      Height = 25
      Caption = 'Delete Test'
      TabOrder = 7
      Visible = False
      OnClick = btDeleteClick
    end
    object btn2: TBitBtn
      Left = 432
      Top = 24
      Width = 121
      Height = 25
      Caption = 'Info'
      TabOrder = 8
      OnClick = btn2Click
      Kind = bkHelp
    end
  end
  object stat: TStatusBar
    Left = 0
    Top = 0
    Width = 1582
    Height = 19
    Align = alTop
    Panels = <
      item
        Alignment = taCenter
        Text = 'Busy . . . please wait until this dialog disappears'
        Width = 100
      end>
    Visible = False
  end
  object pnlView: TPanel
    Left = 0
    Top = 19
    Width = 1582
    Height = 826
    Align = alClient
    Color = clInactiveCaption
    TabOrder = 2
    Visible = False
    object lbl37: TLabel
      Left = 16
      Top = 16
      Width = 212
      Height = 24
      Caption = 'Schedule Presentation'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object bt12: TButton
      Left = 0
      Top = 0
      Width = 17
      Height = 17
      Caption = 'X'
      TabOrder = 0
      OnClick = bt12Click
    end
    object pgc1: TPageControl
      Left = 1
      Top = 55
      Width = 1580
      Height = 770
      ActivePage = ts4
      Align = alBottom
      TabOrder = 1
      object ts1: TTabSheet
        Caption = 'View Test Schedule'
        object redTests: TRichEdit
          Left = 0
          Top = 0
          Width = 1572
          Height = 742
          Align = alClient
          Color = clInactiveCaption
          ReadOnly = True
          ScrollBars = ssBoth
          TabOrder = 0
        end
      end
      object ts2: TTabSheet
        Caption = 'View Supervisor Schedule (Personal)'
        ImageIndex = 1
        object redSupervisors: TRichEdit
          Left = 0
          Top = 0
          Width = 1572
          Height = 742
          Align = alClient
          Color = clInactiveCaption
          ScrollBars = ssBoth
          TabOrder = 0
        end
      end
      object ts5: TTabSheet
        Caption = 'View Supervisor Schedule (Main)'
        ImageIndex = 4
        object redMain: TRichEdit
          Left = 0
          Top = 0
          Width = 1572
          Height = 742
          Align = alClient
          Color = clInactiveCaption
          ScrollBars = ssBoth
          TabOrder = 0
        end
      end
      object ts3: TTabSheet
        Caption = 'Create Detailed Calendar (Tests)'
        ImageIndex = 2
        object redRoster: TRichEdit
          Left = 0
          Top = 144
          Width = 1572
          Height = 598
          Align = alBottom
          Color = clInactiveCaption
          ScrollBars = ssBoth
          TabOrder = 0
        end
        object pnlSet: TPanel
          Left = 0
          Top = 0
          Width = 1572
          Height = 145
          Align = alTop
          TabOrder = 1
          object shp13: TShape
            Left = 1
            Top = 1
            Width = 1570
            Height = 143
            Align = alClient
            Brush.Color = clMoneyGreen
          end
          object lbl23: TLabel
            Left = 88
            Top = 40
            Width = 66
            Height = 13
            Caption = 'Main Heading'
            Color = clMoneyGreen
            ParentColor = False
          end
          object lbl24: TLabel
            Left = 88
            Top = 72
            Width = 62
            Height = 13
            Caption = 'Sub Heading'
            Color = clMoneyGreen
            ParentColor = False
          end
          object lbl25: TLabel
            Left = 768
            Top = 32
            Width = 46
            Height = 13
            Caption = 'Session 1'
            Color = clMoneyGreen
            ParentColor = False
          end
          object lbl26: TLabel
            Left = 768
            Top = 56
            Width = 46
            Height = 13
            Caption = 'Session 2'
            Color = clMoneyGreen
            ParentColor = False
          end
          object lbl27: TLabel
            Left = 768
            Top = 80
            Width = 46
            Height = 13
            Caption = 'Session 3'
            Color = clMoneyGreen
            ParentColor = False
          end
          object lbl28: TLabel
            Left = 768
            Top = 104
            Width = 46
            Height = 13
            Caption = 'Session 4'
            Color = clMoneyGreen
            ParentColor = False
          end
          object lbl29: TLabel
            Left = 816
            Top = 8
            Width = 68
            Height = 13
            Caption = 'Session Times'
            Color = clMoneyGreen
            ParentColor = False
          end
          object btDo: TButton
            Left = 208
            Top = 112
            Width = 417
            Height = 25
            Caption = 'Generate'
            TabOrder = 0
            OnClick = btDoClick
          end
          object edtMain: TEdit
            Left = 168
            Top = 32
            Width = 489
            Height = 21
            TabOrder = 1
            Text = 'eg) Exam Schedule mid 2011'
          end
          object edtSub: TEdit
            Left = 168
            Top = 72
            Width = 489
            Height = 21
            TabOrder = 2
          end
          object edt1: TEdit
            Left = 816
            Top = 32
            Width = 153
            Height = 21
            TabOrder = 3
            Text = 'eg) 08:00-12:00'
          end
          object edt2: TEdit
            Left = 816
            Top = 56
            Width = 153
            Height = 21
            TabOrder = 4
            Text = 'eg) 12:00-15:00'
          end
          object edt3: TEdit
            Left = 816
            Top = 80
            Width = 153
            Height = 21
            TabOrder = 5
          end
          object edt4: TEdit
            Left = 816
            Top = 104
            Width = 153
            Height = 21
            TabOrder = 6
          end
        end
      end
      object ts4: TTabSheet
        Caption = 'Create Detailed Calendar (Supervisors)'
        ImageIndex = 3
        object redSup: TRichEdit
          Left = 0
          Top = 144
          Width = 1572
          Height = 598
          Align = alBottom
          Color = clInactiveCaption
          ScrollBars = ssBoth
          TabOrder = 1
        end
        object pnl1: TPanel
          Left = 0
          Top = 0
          Width = 1572
          Height = 144
          Align = alTop
          Caption = 'pnl1'
          TabOrder = 0
          object shp14: TShape
            Left = 1
            Top = 1
            Width = 1570
            Height = 142
            Align = alClient
            Brush.Color = clMoneyGreen
          end
          object lbl36: TLabel
            Left = 768
            Top = 104
            Width = 46
            Height = 13
            Caption = 'Session 4'
            Color = clMoneyGreen
            ParentColor = False
          end
          object lbl35: TLabel
            Left = 768
            Top = 80
            Width = 46
            Height = 13
            Caption = 'Session 3'
            Color = clMoneyGreen
            ParentColor = False
          end
          object lbl34: TLabel
            Left = 768
            Top = 56
            Width = 46
            Height = 13
            Caption = 'Session 2'
            Color = clMoneyGreen
            ParentColor = False
          end
          object lbl30: TLabel
            Left = 88
            Top = 40
            Width = 66
            Height = 13
            Caption = 'Main Heading'
            Color = clMoneyGreen
            ParentColor = False
          end
          object lbl31: TLabel
            Left = 88
            Top = 72
            Width = 62
            Height = 13
            Caption = 'Sub Heading'
            Color = clMoneyGreen
            ParentColor = False
          end
          object lbl32: TLabel
            Left = 816
            Top = 8
            Width = 68
            Height = 13
            Caption = 'Session Times'
            Color = clMoneyGreen
            ParentColor = False
          end
          object lbl33: TLabel
            Left = 768
            Top = 32
            Width = 46
            Height = 13
            Caption = 'Session 1'
            Color = clMoneyGreen
            ParentColor = False
          end
          object edt7: TEdit
            Left = 816
            Top = 104
            Width = 153
            Height = 21
            TabOrder = 0
          end
          object edt8: TEdit
            Left = 816
            Top = 80
            Width = 153
            Height = 21
            TabOrder = 1
          end
          object edt9: TEdit
            Left = 816
            Top = 56
            Width = 153
            Height = 21
            TabOrder = 2
            Text = 'eg) 12:00-15:00'
          end
          object btSup: TButton
            Left = 208
            Top = 112
            Width = 417
            Height = 25
            Caption = 'Generate'
            TabOrder = 3
            OnClick = btSupClick
          end
          object edt6: TEdit
            Left = 168
            Top = 72
            Width = 489
            Height = 21
            TabOrder = 4
          end
          object edt5: TEdit
            Left = 168
            Top = 32
            Width = 489
            Height = 21
            TabOrder = 5
            Text = 'eg) Exam Schedule mid 2011'
          end
          object edt10: TEdit
            Left = 816
            Top = 32
            Width = 153
            Height = 21
            TabOrder = 6
            Text = 'eg) 08:00-12:00'
          end
        end
      end
    end
    object bt13: TButton
      Left = 320
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Print?'
      TabOrder = 2
      OnClick = bt13Click
    end
  end
  object tmrexpand: TTimer
    Enabled = False
    Interval = 1
    OnTimer = tmrexpandTimer
    Left = 72
    Top = 248
  end
  object tmrShrink: TTimer
    Enabled = False
    Interval = 1
    OnTimer = tmrShrinkTimer
    Left = 8
    Top = 96
  end
  object tmr2S: TTimer
    Enabled = False
    Interval = 1
    OnTimer = tmr2STimer
    Left = 8
    Top = 144
  end
  object tmr2E: TTimer
    Enabled = False
    Interval = 1
    OnTimer = tmr2ETimer
    Left = 48
    Top = 144
  end
  object tmrClose: TTimer
    Enabled = False
    Interval = 1
    OnTimer = tmrCloseTimer
    Left = 1176
    Top = 352
  end
  object tmrOpen: TTimer
    Enabled = False
    Interval = 1
    OnTimer = tmrOpenTimer
    Left = 1136
    Top = 352
  end
  object popTests: TPopupMenu
    Left = 1028
    Top = 131
    object Addtest1: TMenuItem
      Caption = 'Add test'
      OnClick = Addtest1Click
    end
    object Removetest1: TMenuItem
      Caption = 'Remove test'
    end
  end
  object popAll: TPopupMenu
    Left = 4
    Top = 203
    object Add1: TMenuItem
      Caption = 'Add test'
      OnClick = Add1Click
    end
    object AddSupervisor1: TMenuItem
      Caption = 'Add Supervisor'
      OnClick = AddSupervisor1Click
    end
  end
  object mm1: TMainMenu
    Left = 904
    object File1: TMenuItem
      Caption = 'File'
      object Savefinalstep1: TMenuItem
        Caption = 'Save final step'
        ShortCut = 16467
        OnClick = Savefinalstep1Click
      end
      object Loadfinalstep1: TMenuItem
        Caption = 'Load final step'
        ShortCut = 16460
        OnClick = Loadfinalstep1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
      end
    end
    object Edit1: TMenuItem
      Caption = 'Edit'
      object View1: TMenuItem
        Caption = 'View'
        object MaximizeEditing1: TMenuItem
          Caption = 'Maximize Editing'
          OnClick = MaximizeEditing1Click
        end
        object Excelspreadsheets1: TMenuItem
          Caption = 'Excel Spreadsheets'
          Enabled = False
          OnClick = Excelspreadsheets1Click
        end
      end
      object Resolution1: TMenuItem
        Caption = 'Resolution'
        object N1600X9001: TMenuItem
          Caption = '1600 X 900'
          OnClick = N1600X9001Click
        end
        object N1280X10241: TMenuItem
          Caption = '1280 X 1024'
          OnClick = N1280X10241Click
        end
        object N1280X8001: TMenuItem
          Caption = '1280 X 800'
          OnClick = N1280X8001Click
        end
      end
    end
    object ools1: TMenuItem
      Caption = 'Tools'
      object Schedule1: TMenuItem
        Caption = 'Schedule'
        object Create1: TMenuItem
          Caption = 'Create'
          OnClick = Create1Click
        end
        object View2: TMenuItem
          Caption = 'View'
          OnClick = View2Click
        end
        object N2: TMenuItem
          Caption = '-'
        end
        object CreateView1: TMenuItem
          Caption = 'Create And View'
          ShortCut = 121
          OnClick = CreateView1Click
        end
      end
      object Setupdaynames1: TMenuItem
        Caption = 'Set up day names'
        OnClick = Setupdaynames1Click
      end
    end
  end
  object dlgLoad: TOpenDialog
    Filter = 'FNL file|*.fnl'
    Left = 176
    Top = 65528
  end
  object tmrFlash: TTimer
    Interval = 500
    OnTimer = tmrFlashTimer
    Left = 656
    Top = 65528
  end
end
