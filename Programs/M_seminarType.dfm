object M_SeminarTypeFRM: TM_SeminarTypeFRM
  Left = 365
  Top = 153
  Caption = '--'
  ClientHeight = 641
  ClientWidth = 789
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TRzPanel
    Left = 0
    Top = 0
    Width = 789
    Height = 598
    Align = alClient
    BorderOuter = fsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    VisualStyle = vsClassic
    object SeminarPC: TRzPageControl
      Left = 0
      Top = 57
      Width = 789
      Height = 541
      Hint = ''
      ActivePage = SeminarTS
      ActivePageDefault = SeminarTS
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabIndex = 0
      TabOrder = 0
      OnChanging = SeminarPCChanging
      FixedDimension = 22
      object SeminarTS: TRzTabSheet
        Caption = #931#949#956#953#957#940#961#953#945
        object RzPanel2: TRzPanel
          Left = 0
          Top = 39
          Width = 361
          Height = 476
          Align = alLeft
          BorderOuter = fsNone
          TabOrder = 1
          object RzPanel3: TRzPanel
            Left = 0
            Top = 0
            Width = 361
            Height = 17
            Align = alTop
            BorderOuter = fsNone
            TabOrder = 0
          end
          object Grid1: TwwDBGrid
            Left = 0
            Top = 17
            Width = 361
            Height = 459
            ControlType.Strings = (
              'ANAD_APPROVED;CheckBox;Y;N'
              'TYPE_MONO_POLY;CheckBox;P;M')
            Selected.Strings = (
              'SERIAL_NUMBER'#9'4'#9'A/A'
              'SEMINAR_NAME'#9'28'#9#928#949#961#953#947#961#945#966#942
              'ANAD_APPROVED'#9'6'#9#913#925#913#916
              'TYPE_MONO_POLY'#9'9'#9#928#959#955#965#917#960#967)
            IniAttributes.Delimiter = ';;'
            IniAttributes.UnicodeIniFile = False
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alLeft
            BorderStyle = bsNone
            Color = 12713983
            DataSource = TableSRC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyOptions = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
            TitleAlignment = taLeftJustify
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'Arial'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = True
            OnTitleButtonClick = Grid1TitleButtonClick
          end
        end
        object GroupBox1: TGroupBox
          Left = 379
          Top = 45
          Width = 349
          Height = 188
          Caption = #928#955#951#961#959#966#959#961#943#949#962
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object Label2: TLabel
            Left = 54
            Top = 46
            Width = 58
            Height = 14
            Caption = #928#949#961#953#947#961#945#966#942
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 91
            Top = 21
            Width = 21
            Height = 14
            Caption = #913'/'#913
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 78
            Top = 104
            Width = 34
            Height = 14
            Caption = #932#973#960#959#962
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object SerialFLD: TRzDBLabel
            Left = 119
            Top = 19
            Width = 75
            Height = 20
            Alignment = taRightJustify
            BorderOuter = fsFlat
            BorderWidth = 1
            DataField = 'SERIAL_NUMBER'
            DataSource = TableSRC
          end
          object Label7: TLabel
            Left = 77
            Top = 132
            Width = 35
            Height = 14
            Caption = #931#967#972#955#953#945
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 60
            Top = 81
            Width = 52
            Height = 14
            Caption = #928#959#955#965'-'#917#960#967
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object FirstFLD: TwwDBEdit
            Left = 119
            Top = 43
            Width = 219
            Height = 22
            DataField = 'SEMINAR_NAME'
            DataSource = TableSRC
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit1: TwwDBEdit
            Left = 119
            Top = 101
            Width = 219
            Height = 22
            DataField = 'SEMINAR_CATEGORY'
            DataSource = TableSRC
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object RzDBRichEdit1: TRzDBRichEdit
            Left = 119
            Top = 129
            Width = 219
            Height = 49
            DataField = 'COMMENTS'
            DataSource = TableSRC
            Font.Charset = GREEK_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            TabOrder = 2
            Zoom = 100
          end
          object wwCheckBox1: TwwCheckBox
            AlignWithMargins = True
            Left = 119
            Top = 78
            Width = 29
            Height = 17
            DisableThemes = False
            AlwaysTransparent = False
            ValueChecked = 'Y'
            ValueUnchecked = 'N'
            DisplayValueChecked = 'P'
            DisplayValueUnchecked = 'M'
            NullAndBlankState = cbUnchecked
            DataField = 'TYPE_MONO_POLY'
            DataSource = TableSRC
            ShowText = False
            TabOrder = 3
          end
        end
        object Panel5: TRzPanel
          Left = 0
          Top = 0
          Width = 785
          Height = 39
          Align = alTop
          BorderOuter = fsFlatRounded
          BorderSides = [sdRight, sdBottom]
          TabOrder = 0
          object wwDBNavigator2: TwwDBNavigator
            Left = 1
            Top = 7
            Width = 184
            Height = 26
            AutosizeStyle = asSizeNavButtons
            DataSource = TableSRC
            RepeatInterval.InitialDelay = 500
            RepeatInterval.Interval = 100
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            object wwNavButton1: TwwNavButton
              Left = 0
              Top = 0
              Width = 23
              Height = 26
              Hint = 'Move to first record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'Nav1Button'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 0
              Style = nbsFirst
            end
            object wwNavButton2: TwwNavButton
              Left = 23
              Top = 0
              Width = 23
              Height = 26
              Hint = 'Move to prior record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'Nav1Prior'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 1
              Style = nbsPrior
            end
            object wwNavButton3: TwwNavButton
              Left = 46
              Top = 0
              Width = 23
              Height = 26
              Hint = 'Move to next record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'Nav1Next'
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 2
              Style = nbsNext
            end
            object wwNavButton4: TwwNavButton
              Left = 69
              Top = 0
              Width = 23
              Height = 26
              Hint = 'Move to last record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'Nav1Button1'
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 3
              Style = nbsLast
            end
            object wwNavButton5: TwwNavButton
              Left = 92
              Top = 0
              Width = 23
              Height = 26
              Hint = 'Insert new record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'Nav1Insert'
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              OnClick = wwNavButton5Click
              Index = 4
              Style = nbsInsert
            end
            object wwNavButton6: TwwNavButton
              Left = 115
              Top = 0
              Width = 23
              Height = 26
              Hint = 'Delete current record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'Nav1Delete'
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 5
              Style = nbsDelete
            end
            object wwNavButton7: TwwNavButton
              Left = 138
              Top = 0
              Width = 23
              Height = 26
              Hint = 'Post changes of current record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'Nav1Post'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 6
              Style = nbsPost
            end
            object wwNavButton8: TwwNavButton
              Left = 161
              Top = 0
              Width = 23
              Height = 26
              Hint = 'Cancel changes made to current record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'Nav1Cancel'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 7
              Style = nbsCancel
            end
          end
          object wwIncrementalSearch1: TwwIncrementalSearch
            Left = 191
            Top = 12
            Width = 128
            Height = 22
            DataSource = TableSRC
            ShowMatchText = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
        end
        object SecondGRP: TRzGroupBox
          Left = 734
          Top = 45
          Width = 321
          Height = 180
          Caption = #928#955#951#961#959#966#959#961#943#949#962
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          object Label22: TLabel
            Left = 58
            Top = 21
            Width = 74
            Height = 14
            Caption = #916#953#940#961#954#949#953#945' '#911#961#949#962
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label24: TLabel
            Left = 8
            Top = 49
            Width = 124
            Height = 14
            Caption = #924#941#947#953#963#964#959#962' '#913#961'. '#924#945#952#951#964#974#957
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label1: TLabel
            Left = 59
            Top = 87
            Width = 73
            Height = 14
            Caption = #933#960#940#961#967#949#953' '#923#942#958#951
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 53
            Top = 113
            Width = 79
            Height = 14
            Caption = #923#942#958#951' '#963#949' '#924#942#957#949#962
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object wwDBEdit9: TwwDBEdit
            Left = 138
            Top = 18
            Width = 90
            Height = 22
            DataField = 'DURATION_HOURS'
            DataSource = TableSRC
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit10: TwwDBEdit
            Left = 138
            Top = 46
            Width = 90
            Height = 22
            DataField = 'MAX_CAPACITY'
            DataSource = TableSRC
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object CompletedFLD: TwwCheckBox
            Left = 138
            Top = 86
            Width = 37
            Height = 18
            DisableThemes = False
            AlwaysTransparent = False
            ValueChecked = 'Y'
            ValueUnchecked = 'N'
            DisplayValueChecked = 'Y'
            DisplayValueUnchecked = 'N'
            NullAndBlankState = cbUnchecked
            Checked = True
            DataField = 'HAS_EXPIRY'
            DataSource = TableSRC
            ShowText = False
            State = cbChecked
            TabOrder = 2
          end
          object wwDBEdit2: TwwDBEdit
            Left = 138
            Top = 110
            Width = 75
            Height = 22
            DataField = 'EXPIRY_PERIOD'
            DataSource = TableSRC
            TabOrder = 3
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
        end
        object RzGroupBox1: TRzGroupBox
          Left = 379
          Top = 231
          Width = 338
          Height = 123
          Caption = #932#953#956#941#962
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          object Label4: TLabel
            Left = 35
            Top = 80
            Width = 112
            Height = 14
            Caption = #932#953#956#942' '#956#949' '#949#960#953#967#959#961#942#947#951#963#951
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 19
            Top = 52
            Width = 128
            Height = 14
            Caption = #932#953#956#942' '#967#969#961#943#962' '#949#960#953#967#959#961#942#947#951#963#951
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 42
            Top = 29
            Width = 105
            Height = 14
            Caption = #917#960#953#967#959#961#942#947#951#963#951' '#913#925#913#916
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object wwCheckBox2: TwwCheckBox
            AlignWithMargins = True
            Left = 153
            Top = 26
            Width = 29
            Height = 17
            DisableThemes = False
            AlwaysTransparent = False
            ValueChecked = 'Y'
            ValueUnchecked = 'N'
            DisplayValueChecked = 'Y'
            DisplayValueUnchecked = 'N'
            NullAndBlankState = cbUnchecked
            Checked = True
            DataField = 'ANAD_APPROVED'
            DataSource = TableSRC
            ShowText = False
            State = cbChecked
            TabOrder = 0
          end
          object wwDBEdit3: TwwDBEdit
            Left = 156
            Top = 77
            Width = 76
            Height = 22
            DataField = 'FEE_WITH_ANAD_SUB'
            DataSource = TableSRC
            TabOrder = 2
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit4: TwwDBEdit
            Left = 156
            Top = 49
            Width = 76
            Height = 22
            DataField = 'FEE_ACTUAL'
            DataSource = TableSRC
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
        end
      end
      object SubjectTS: TRzTabSheet
        OnShow = SubjectTSShow
        Caption = #920#941#956#945#964#945
        object GroupBox2: TGroupBox
          Left = 20
          Top = 15
          Width = 490
          Height = 354
          Caption = #920#941#956#945#964#945
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object RzPanel4: TRzPanel
            Left = 2
            Top = 16
            Width = 486
            Height = 33
            Align = alTop
            BorderOuter = fsNone
            TabOrder = 0
            object wwDBNavigator1: TwwDBNavigator
              Left = 0
              Top = 0
              Width = 175
              Height = 33
              DataSource = SeminarSubjectSRC
              RepeatInterval.InitialDelay = 500
              RepeatInterval.Interval = 100
              Align = alLeft
              object wwDBNavigator1Prior: TwwNavButton
                Left = 0
                Top = 0
                Width = 25
                Height = 25
                Hint = 'Move to prior record'
                ImageIndex = -1
                NumGlyphs = 2
                Spacing = 4
                Transparent = False
                Caption = 'wwDBNavigator1Prior'
                Enabled = False
                DisabledTextColors.ShadeColor = clGray
                DisabledTextColors.HighlightColor = clBtnHighlight
                Index = 0
                Style = nbsPrior
              end
              object wwDBNavigator1Next: TwwNavButton
                Left = 25
                Top = 0
                Width = 25
                Height = 25
                Hint = 'Move to next record'
                ImageIndex = -1
                NumGlyphs = 2
                Spacing = 4
                Transparent = False
                Caption = 'wwDBNavigator1Next'
                DisabledTextColors.ShadeColor = clGray
                DisabledTextColors.HighlightColor = clBtnHighlight
                Index = 1
                Style = nbsNext
              end
              object wwDBNavigator1Insert: TwwNavButton
                Left = 50
                Top = 0
                Width = 25
                Height = 25
                Hint = 'Insert new record'
                ImageIndex = -1
                NumGlyphs = 2
                Spacing = 4
                Transparent = False
                Caption = 'wwDBNavigator1Insert'
                DisabledTextColors.ShadeColor = clGray
                DisabledTextColors.HighlightColor = clBtnHighlight
                Index = 2
                Style = nbsInsert
              end
              object wwDBNavigator1Delete: TwwNavButton
                Left = 75
                Top = 0
                Width = 25
                Height = 25
                Hint = 'Delete current record'
                ImageIndex = -1
                NumGlyphs = 2
                Spacing = 4
                Transparent = False
                Caption = 'wwDBNavigator1Delete'
                DisabledTextColors.ShadeColor = clGray
                DisabledTextColors.HighlightColor = clBtnHighlight
                Index = 3
                Style = nbsDelete
              end
              object wwDBNavigator1Post: TwwNavButton
                Left = 100
                Top = 0
                Width = 25
                Height = 25
                Hint = 'Post changes of current record'
                ImageIndex = -1
                NumGlyphs = 2
                Spacing = 4
                Transparent = False
                Caption = 'wwDBNavigator1Post'
                Enabled = False
                DisabledTextColors.ShadeColor = clGray
                DisabledTextColors.HighlightColor = clBtnHighlight
                Index = 4
                Style = nbsPost
              end
              object wwDBNavigator1Cancel: TwwNavButton
                Left = 125
                Top = 0
                Width = 25
                Height = 25
                Hint = 'Cancel changes made to current record'
                ImageIndex = -1
                NumGlyphs = 2
                Spacing = 4
                Transparent = False
                Caption = 'wwDBNavigator1Cancel'
                Enabled = False
                DisabledTextColors.ShadeColor = clGray
                DisabledTextColors.HighlightColor = clBtnHighlight
                Index = 5
                Style = nbsCancel
              end
              object wwDBNavigator1Refresh: TwwNavButton
                Left = 150
                Top = 0
                Width = 25
                Height = 25
                Hint = 'Refresh the contents of the dataset'
                ImageIndex = -1
                NumGlyphs = 2
                Spacing = 4
                Transparent = False
                Caption = 'wwDBNavigator1Refresh'
                DisabledTextColors.ShadeColor = clGray
                DisabledTextColors.HighlightColor = clBtnHighlight
                Index = 6
                Style = nbsRefresh
              end
            end
          end
          object wwDBGrid1: TwwDBGrid
            Left = 2
            Top = 49
            Width = 486
            Height = 303
            Selected.Strings = (
              'SERIAL_NUMBER'#9'10'#9'A/A'
              'SUBJECT'#9'55'#9#920#941#956#945)
            IniAttributes.Delimiter = ';;'
            IniAttributes.UnicodeIniFile = False
            TitleColor = clBtnFace
            FixedCols = 1
            ShowHorzScrollBar = True
            Align = alClient
            Color = 12713983
            DataSource = SeminarSubjectSRC
            Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
            TabOrder = 1
            TitleAlignment = taLeftJustify
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
          end
        end
      end
      object ReminderTS: TRzTabSheet
        OnShow = ReminderTSShow
        Caption = #917#961#947#945#963#943#949#962
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object GroupBox4: TGroupBox
          Left = 533
          Top = 68
          Width = 338
          Height = 482
          Caption = #928#955#951#961#959#966#959#961#943#949#962
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label9: TLabel
            Left = 43
            Top = 46
            Width = 58
            Height = 14
            Caption = #928#949#961#953#947#961#945#966#942
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 80
            Top = 21
            Width = 21
            Height = 14
            Caption = #913'/'#913
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RzDBLabel1: TRzDBLabel
            Left = 107
            Top = 17
            Width = 75
            Height = 20
            Alignment = taRightJustify
            BorderOuter = fsFlat
            BorderWidth = 1
            DataField = 'SERIAL_NUMBER'
            DataSource = TableSRC
          end
          object Label15: TLabel
            Left = 20
            Top = 423
            Width = 80
            Height = 14
            Caption = #931#949' '#956#942#957#949#962'/'#956#941#961#949#962
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 58
            Top = 71
            Width = 43
            Height = 14
            Caption = #924#942#957#965#956#945
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 28
            Top = 212
            Width = 73
            Height = 14
            Caption = #925#945' '#945#960#959#963#964#945#955#949#943
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label13: TLabel
            Left = 63
            Top = 149
            Width = 38
            Height = 14
            Caption = #913#966#959#961#940
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 33
            Top = 279
            Width = 68
            Height = 28
            Alignment = taRightJustify
            Caption = #919#956#949#961#959#956#951#956#943#945' '#913#957#945#966#959#961#940#962
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label14: TLabel
            Left = 7
            Top = 345
            Width = 94
            Height = 22
            AutoSize = False
            Caption = #924#941#964#961#951#963#951' '#935#961#972#957#959#965
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label20: TLabel
            Left = 46
            Top = 118
            Width = 55
            Height = 14
            Caption = #931#951#956#945#957#964#953#954#972
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object REminderDescFLD: TwwDBEdit
            Left = 108
            Top = 43
            Width = 219
            Height = 22
            DataField = 'DESCRIPTION'
            DataSource = SeminarReminderSRC
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit8: TwwDBEdit
            Left = 108
            Top = 419
            Width = 75
            Height = 22
            DataField = 'NUMBER_OF_DAYS_MONTHS'
            DataSource = SeminarReminderSRC
            TabOrder = 6
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object RzDBRichEdit2: TRzDBRichEdit
            Left = 107
            Top = 71
            Width = 219
            Height = 41
            DataField = 'REMINDER_MESSAGE'
            DataSource = SeminarReminderSRC
            Font.Charset = GREEK_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            TabOrder = 1
            Zoom = 100
          end
          object RzDBRadioGroup2: TRzDBRadioGroup
            Left = 108
            Top = 212
            Width = 125
            Height = 60
            DataField = 'AFTER_OR_BEFORE'
            DataSource = SeminarReminderSRC
            Items.Strings = (
              #924#949#964#940' '#964#959' '#931#949#956#953#957#940#961#953#959
              #928#961#943#957' '#964#959' '#931#949#956#953#957#940#961#953#959)
            Values.Strings = (
              'A'
              'B')
            Caption = #913#960#959#963#964#959#955#942
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ItemHeight = 14
            ParentFont = False
            SpaceEvenly = True
            TabOrder = 3
            VisualStyle = vsGradient
          end
          object RzDBRadioGroup3: TRzDBRadioGroup
            Left = 108
            Top = 279
            Width = 125
            Height = 60
            DataField = 'START_OR_END'
            DataSource = SeminarReminderSRC
            Items.Strings = (
              #904#957#945#961#958#951' '#931#949#956#953#957#945#961#943#959#965
              #932#941#955#959#962' '#931#949#956#953#957#945#961#943#959#965)
            Values.Strings = (
              'S'
              'E')
            Caption = #931#951#956#945#957#964#953#954#942' '#919#956#949#961#959#956#951#957#943#945
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ItemHeight = 14
            ParentFont = False
            SpaceEvenly = True
            TabOrder = 4
            VisualStyle = vsGradient
          end
          object RzDBRadioGroup4: TRzDBRadioGroup
            Left = 108
            Top = 345
            Width = 125
            Height = 60
            DataField = 'DAYS_OR_MONTHS'
            DataSource = SeminarReminderSRC
            Items.Strings = (
              #924#942#957#949#962
              #919#956#941#961#949#962)
            Values.Strings = (
              'M'
              'D')
            Caption = #924#959#957#940#948#945' '#935#961#972#957#959#965
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ItemHeight = 14
            ParentFont = False
            SpaceEvenly = True
            TabOrder = 5
            VisualStyle = vsGradient
          end
          object RzDBRadioGroup1: TRzDBRadioGroup
            Left = 107
            Top = 146
            Width = 125
            Height = 60
            DataField = 'PERSON_OR_SEMINAR'
            DataSource = SeminarReminderSRC
            Items.Strings = (
              #931#949#956#953#957#940#961#953#959
              #917#954#960#945#953#948#949#965#972#956#949#957#959#965#962)
            Values.Strings = (
              'S'
              'P')
            Caption = #928#945#961#945#955#942#960#964#951#962
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ItemHeight = 14
            ParentFont = False
            SpaceEvenly = True
            TabOrder = 2
            VisualStyle = vsGradient
          end
          object wwCheckBox3: TwwCheckBox
            Left = 107
            Top = 118
            Width = 37
            Height = 18
            DisableThemes = False
            AlwaysTransparent = False
            ValueChecked = 'Y'
            ValueUnchecked = 'N'
            DisplayValueChecked = 'Y'
            DisplayValueUnchecked = 'N'
            NullAndBlankState = cbUnchecked
            DataField = 'IS_HIGH'
            DataSource = SeminarReminderSRC
            ShowText = False
            TabOrder = 7
          end
        end
        object RzPanel6: TRzPanel
          Left = 0
          Top = 0
          Width = 785
          Height = 39
          Align = alTop
          BorderOuter = fsFlatRounded
          BorderSides = [sdRight, sdBottom]
          TabOrder = 1
          object wwDBNavigator4: TwwDBNavigator
            Left = 1
            Top = 7
            Width = 184
            Height = 26
            AutosizeStyle = asSizeNavButtons
            DataSource = SeminarReminderSRC
            RepeatInterval.InitialDelay = 500
            RepeatInterval.Interval = 100
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            object wwNavButton16: TwwNavButton
              Left = 0
              Top = 0
              Width = 23
              Height = 26
              Hint = 'Move to first record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'Nav1Button'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 0
              Style = nbsFirst
            end
            object wwNavButton17: TwwNavButton
              Left = 23
              Top = 0
              Width = 23
              Height = 26
              Hint = 'Move to prior record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'Nav1Prior'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 1
              Style = nbsPrior
            end
            object wwNavButton18: TwwNavButton
              Left = 46
              Top = 0
              Width = 23
              Height = 26
              Hint = 'Move to next record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'Nav1Next'
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 2
              Style = nbsNext
            end
            object wwNavButton19: TwwNavButton
              Left = 69
              Top = 0
              Width = 23
              Height = 26
              Hint = 'Move to last record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'Nav1Button1'
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 3
              Style = nbsLast
            end
            object wwNavButton20: TwwNavButton
              Left = 92
              Top = 0
              Width = 23
              Height = 26
              Hint = 'Insert new record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'Nav1Insert'
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              OnClick = Nav1InsertClick
              Index = 4
              Style = nbsInsert
            end
            object wwNavButton21: TwwNavButton
              Left = 115
              Top = 0
              Width = 23
              Height = 26
              Hint = 'Delete current record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'Nav1Delete'
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 5
              Style = nbsDelete
            end
            object wwNavButton22: TwwNavButton
              Left = 138
              Top = 0
              Width = 23
              Height = 26
              Hint = 'Post changes of current record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'Nav1Post'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 6
              Style = nbsPost
            end
            object wwNavButton23: TwwNavButton
              Left = 161
              Top = 0
              Width = 23
              Height = 26
              Hint = 'Cancel changes made to current record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'Nav1Cancel'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 7
              Style = nbsCancel
            end
          end
          object wwIncrementalSearch2: TwwIncrementalSearch
            Left = 191
            Top = 12
            Width = 128
            Height = 22
            DataSource = SeminarReminderSRC
            SearchField = 'Description'
            ShowMatchText = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
        end
        object GroupBox3: TGroupBox
          Left = 43
          Top = 53
          Width = 469
          Height = 322
          Caption = #933#960#949#957#952#965#956#943#963#949#953#962
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          object RzPanel5: TRzPanel
            Left = 1
            Top = 15
            Width = 467
            Height = 10
            Align = alTop
            BorderOuter = fsNone
            TabOrder = 0
          end
          object wwDBGrid2: TwwDBGrid
            Left = 1
            Top = 25
            Width = 467
            Height = 296
            ControlType.Strings = (
              'AFTER_OR_BEFORE;CustomEdit;AfterFLD;F'
              'DAYS_OR_MONTHS;CustomEdit;NamePersonFLD;F'
              'START_OR_END;CustomEdit;StartEndLD;F')
            Selected.Strings = (
              'SERIAL_NUMBER'#9'3'#9'A/A'
              'DESCRIPTION'#9'10'#9#928#949#961#953#947#961#945#966#942
              'NUMBER_OF_DAYS_MONTHS'#9'5'#9#931#949
              'DAYS_OR_MONTHS'#9'10'#9#919#956#941#961#949#962'/'#924#942#957#949#962
              'AFTER_OR_BEFORE'#9'8'#9#928#961#953#957'/'#924#949#964#940
              'START_OR_END'#9'16'#9#919#956#949#961#959#956#951#957#943#945)
            IniAttributes.Delimiter = ';;'
            IniAttributes.UnicodeIniFile = False
            TitleColor = clBtnFace
            FixedCols = 1
            ShowHorzScrollBar = True
            Align = alClient
            Color = 12713983
            DataSource = SeminarReminderSRC
            Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
            ReadOnly = True
            TabOrder = 1
            TitleAlignment = taLeftJustify
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
            object AfterFLD: TwwDBComboBox
              Left = 94
              Top = 81
              Width = 76
              Height = 20
              ShowButton = True
              Style = csDropDownList
              MapList = True
              AllowClearKey = False
              AutoDropDown = True
              DataField = 'AFTER_OR_BEFORE'
              DataSource = SeminarReminderSRC
              DropDownCount = 8
              ItemHeight = 0
              Items.Strings = (
                #924#949#964#940#9'A'
                #928#961#953#957#9'B')
              ItemIndex = 0
              Sorted = False
              TabOrder = 0
              UnboundDataType = wwDefault
            end
            object NamePersonFLD: TwwDBComboBox
              Left = 94
              Top = 137
              Width = 76
              Height = 20
              ShowButton = True
              Style = csDropDownList
              MapList = True
              AllowClearKey = False
              AutoDropDown = True
              DataField = 'DAYS_OR_MONTHS'
              DataSource = SeminarReminderSRC
              DropDownCount = 8
              ItemHeight = 0
              Items.Strings = (
                #924#941#961#949#962#9'D'
                #924#942#957#949#962#9'M')
              ItemIndex = 0
              Sorted = False
              TabOrder = 1
              UnboundDataType = wwDefault
            end
            object StartEndLD: TwwDBComboBox
              Left = 198
              Top = 233
              Width = 76
              Height = 20
              ShowButton = True
              Style = csDropDownList
              MapList = True
              AllowClearKey = False
              AutoDropDown = True
              DataField = 'START_OR_END'
              DataSource = SeminarReminderSRC
              DropDownCount = 8
              ItemHeight = 0
              Items.Strings = (
                #913#960#972' '#964#951#957' '#904#957#945#961#958#951#9'S'
                #913#960#972' '#964#959' '#932#941#955#959#962#9'E')
              ItemIndex = 0
              Sorted = False
              TabOrder = 2
              UnboundDataType = wwDefault
            end
          end
        end
      end
      object CertificationTS: TRzTabSheet
        OnShow = CertificationTSShow
        Caption = #928#953#963#964#959#960#959#953#951#964#951#954#940
        OnExit = CertificationTSExit
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object RzGroupBox2: TRzGroupBox
          Left = 23
          Top = 103
          Width = 562
          Height = 292
          Caption = #928#955#951#961#959#966#959#961#943#949#962
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label19: TLabel
            Left = 47
            Top = 51
            Width = 60
            Height = 14
            Caption = #915#961#945#956#956#942' '#913'1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 47
            Top = 79
            Width = 60
            Height = 14
            Caption = #915#961#945#956#956#942' '#913'2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label23: TLabel
            Left = 48
            Top = 197
            Width = 59
            Height = 14
            Caption = #915#961#945#956#956#942' '#914'1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label26: TLabel
            Left = 48
            Top = 222
            Width = 59
            Height = 14
            Caption = #915#961#945#956#956#942' '#914'2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label27: TLabel
            Left = 48
            Top = 253
            Width = 59
            Height = 14
            Caption = #915#961#945#956#956#942' '#914'3'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object ImgShow: TImage
            Left = 116
            Top = 103
            Width = 87
            Height = 82
            ParentCustomHint = False
            Center = True
            Proportional = True
            Stretch = True
          end
          object Label25: TLabel
            Left = 11
            Top = 127
            Width = 96
            Height = 14
            Alignment = taRightJustify
            Caption = #917#953#954#972#957#945' '#931#949#956#953#957#945#961#943#959#965
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object wwDBEdit6: TwwDBEdit
            Left = 116
            Top = 76
            Width = 375
            Height = 22
            DataField = 'LINE_A2'
            DataSource = SeminarPictureSRC
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit11: TwwDBEdit
            Left = 116
            Top = 219
            Width = 375
            Height = 22
            DataField = 'LINE_B2'
            DataSource = SeminarPictureSRC
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit12: TwwDBEdit
            Left = 116
            Top = 191
            Width = 375
            Height = 22
            DataField = 'LINE_B1'
            DataSource = SeminarPictureSRC
            TabOrder = 2
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit13: TwwDBEdit
            Left = 116
            Top = 247
            Width = 375
            Height = 22
            DataField = 'LINE_B3'
            DataSource = SeminarPictureSRC
            TabOrder = 3
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object RzBitBtn2: TRzBitBtn
            Left = 224
            Top = 127
            Width = 121
            Height = 37
            Caption = 'Select Picture'
            DoubleBuffered = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentDoubleBuffered = False
            ParentFont = False
            TabOrder = 4
            OnClick = RzBitBtn2Click
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C006000000000000000000000000000000000000CAC8C77D7877
              95918F938F8D938F8D938F8D938F8D938F8D938F8D938F8D938F8D938F8D938F
              8D938F8D938F8D938F8D938F8D938F8D938F8D938F8D938F8D94908E85817EB7
              B4B37E7979DFDCDBDFDDDCE2DFDFE3E0E0E3E0E0E3E0E0E3E0E0E3E0E0E3E0E0
              E3E0E0E3E0E0E3E0E0E3E0E0E3E0E0E3E0E0E3E0E0E3E0E0E3E0E0E3E0E0E2E0
              DFE0DDDCE4E2E18A858486807DDFDDDBC9C6C58C8986918D8A918D8A918D8A91
              8D8A918D8A918D8A918D8A918D8A918D8A918D8A918D8A918D8A918D8A918D8A
              918D8A918D8A8E8B87B7B4B0DDDCD99C99968B8683ECECECE1DFDECCCACACECC
              CCCECCCCCECCCCCECCCCCECCCCCECCCCCECCCCCECCCCCECCCCCECCCCCECCCCCE
              CCCCCECCCCCECCCCCFCDCCD2CECFD0CDCDDCDAD9EBEBEAA5A29F918D88F6F6F5
              EFEEEDF0EFEEF1F0EFF1F0EFF1F0EFF1F0EFF1F0EFF1F0EFF1F0EFF1F0EFF1F0
              EFF1F0EFF1F0EFF1F0EFF1F0EFF1F0EFF8F3F6D1DCCED0D9CCF1EEEEF6F4F4AF
              ABA9999390FDFEFDF5F5F4F5F5F4F5F5F4F5F5F4F5F5F4F5F5F4F5F5F4F5F5F4
              F5F5F4F5F5F4F5F5F4F5F5F4F5F5F4F5F5F4F5F5F4F8F6F7DBE6DB0693260EAB
              388DB687FFFFFFB7B6B29F9A96FFFFFFFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
              FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFDFBFD
              E2EFE432BF601ECA6C9AC79AFFFFFFBEBBBAA7A29FFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFBAE5C6A6DCB2F0F6F1FFFFFFC8C4C2C4C0BED5D3D1
              E5E5E4E4E4E3E4E4E3E4E4E3E4E4E3E4E4E3E4E4E3E4E4E3E4E4E3E4E4E3E4E4
              E3E4E4E3E4E4E3E4E4E3E4E4E3E4E4E3E5E5E4EAE6E8EBE7E9E7E6E6E2E0E0B5
              B0AEFFFFFFDDDBDAD8D6D4D8D6D4D8D6D4DAD7D6E0DCDDE1DDDEDAD7D6D8D6D4
              D8D6D4D8D6D4D8D6D4D8D6D4D8D6D4D8D6D4D8D6D4D8D6D4D8D6D4D8D6D4D8D6
              D4D8D6D4D7D5D3FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01
              4C00004A00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF0C530A41853C25882B0D4F0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF185E173D85388FE3A92BBF4C25882B1B5819FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF185E173E893B8EE3AC28BF4E2DBE4F2FC04F
              25882B1F5A1AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1C6D1E3F903E8EE4AE28C1522B
              BE522EBF532FBE522FC25225882B1F5A1AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E7A24409842A0E7
              BD28C4582BC0562EC1572EC0562DBF542EC2542DBD4D25882B1F5F1CFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF238A2D
              38983FA2EFCA33D17024C4562CC45C2DC25B2DC25A2EC1572FC3582ECA5B2EC0
              4E25882B1F621CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF259131259131359C3F288B2E177518A9E7C525C45B2DC55E2DC45D2DC35C
              2AB1491F5E191F631D20661F20631F20631FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A8222A2E8C522C7602D
              C7642DC6612DC7622BB64F216C21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1C8B
              26A2E8C822C9652CCA6A2CC9672EC8682BB953227122FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF1D942AA2EAC921CB6C2BCC6F2CCB6E2CCB6B2BBD59237925FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF21A637A2EACC21CD722BCE752BCD722BCD73
              2BBF5E237925FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF21A637A3EDD51DD37C26
              D37D26D17927D27A27C46425882BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF26AC
              3C58CC785AC9795AC6775AC47558C0725BC07225882BFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            Margin = -1
          end
          object ClearPictBTN: TRzBitBtn
            Left = 351
            Top = 127
            Width = 121
            Height = 37
            Caption = 'Clear Picture'
            DoubleBuffered = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentDoubleBuffered = False
            ParentFont = False
            TabOrder = 5
            OnClick = ClearPictBTNClick
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFCACAE0DEDEEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1C1DA0B08C05F5FA6FFFFFFFF
              FFFFFFFFFFFFFFFF2120A70C0AD40B08C44747A2FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF121297120E
              F5363688FFFFFFFFFFFFFFFFFF5A5AA7110CF4100DF40F0DF40D0BF0333384FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              7070AA0D0AE70E0BE75C5C9DFFFFFFFFFFFFFFFFFF0D0B900F0EF50E0CEE0D0C
              ED0E0CF00B09CCA8A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFE3E3EE0706A1100EF50B08BCA6A6CAFFFFFFFFFFFFFFFFFF100D93
              1C1BF50E0DEE0F0DED0E0DED0F0EF5131295FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF26259F100FF5100FF5070696F1F1F7FFFFFFFF
              FFFFFFFFFF3737953333F60D0DEF0F0FEF0E0EEF0E0FF00F0EE88282B9FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5C5CAE0F0FE81010F40F0FEB4A4A
              9BFFFFFFFFFFFFFFFFFFFFFFFFA6A6D7201EC12122F60F10EF1011EF1011EF11
              13F50B0BB9F6F6FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABAAD91010DA1214F5
              1214F50B09ACCECDE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3434A13739EA1619
              F41112EF1214EF1215F11216F43937B6FFFFFFFFFFFFFFFFFFFFFFFFA9A9DE10
              12D41518F51417F11315EE3837A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF07069A4953F71216EF1317F01518F0161BF41416E29695DAFFFFFFFFFF
              FFE5E4F71418DD191EF5171DF3171DF50C0AB6CECEEDFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFD1D1EF110FBA4E5BF8161EF3171FF31821F31A23F5
              1214D3FDFDFFE8E7F91418D91C26F61A24F41A23F5151AE27372D1FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8482DB2120D04B5AF716
              22F31A26F41D29F51E2BF62723CF1D23E71F2CF61E2BF41E2BF51C2AF61511C1
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF615FD63C41EC4D5EF81B2AF41F31F42133F52030F32234F52133F42033F422
              35F61110D3D1D0F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF2624CF464FF15467F82032F52435F52438F52438
              F52435F52539F6181CE18884E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2321D74955F43246F6
              273BF5273BF5273BF5283DF61E28EB534EE2FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B78EE22
              2FEF2940F62A3EF62A40F62A40F62A40F62B43F6191BE5DFDEFBFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADAB
              F61E24EB2C46F62C46F62D45F62D44F62B43F63750F73650F72A43F62E49F61C
              20E9E5E4FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              D0CEFB4A4BF12C42F5314DF6314CF6304AF62F4AF62D48F63B58F77183F9869D
              FA435DF72C47F6314FF6232DF2BFBDF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF7775F62A3BF53656F73452F7334FF6334FF6324EF62F4CF6516FF8
              515CF82822EC1C19F17D90F96C88F9324EF63352F62735F59A97F7FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF918EF8334BF63957F73754F73754F73753F73653F733
              4FF66987F94F59F82825F0FFFFFFD6D5FC140DEF4B55F78DA8FA506FF83352F6
              3148F65754F5FFFFFFFFFFFFFFFFFFFFFFFF2328F43C60F73B5CF73B5CF73A5B
              F73959F74160F77492F93737F7625FF6FFFFFFFFFFFFFFFFFFFFFFFF504CF526
              24F57788F989A5FA5674F83656F7242BF5ADABFAFFFFFFFFFFFF4144F75878F8
              3A58F73B59F73958F75A7AF87489F91F1CF49B98FAFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFD1D0FD2B27F23636F77A8CF98EA8FA6D8EF94358F7494BF7E7
              E7FE2C25F47183F987A2FA7C9BF98FABFA5258F82019F3D2D1FDFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABA8FB2C28F21F1CF45258
              F86D80F9A3C0FB3A3BF7E5E5FE3D39F3201DF42927F5130CF2615DF6FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFE1E0FE8784F83F3BF3413DF45551F5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            Margin = -1
          end
          object wwDBRichEdit1: TwwDBRichEdit
            Left = 116
            Top = 37
            Width = 421
            Height = 33
            AutoURLDetect = False
            DataField = 'LINE_A1'
            DataSource = SeminarPictureSRC
            Font.Charset = GREEK_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            GutterWidth = 3
            HideSelection = False
            ParentFont = False
            PrintJobName = 'Safe_CRM - RAD Studio 10.2 - M_seminarType [Built]'
            TabOrder = 6
            EditorOptions = [reoShowSaveExit, reoShowPrint, reoShowPrintPreview, reoShowPageSetup, reoShowFormatBar, reoShowToolBar, reoShowStatusBar, reoShowHints, reoShowRuler, reoShowInsertObject, reoCloseOnEscape, reoFlatButtons, reoShowSpellCheck, reoShowMainMenuIcons, reoShowZoomCombo]
            EditorCaption = 'Edit Rich Text'
            EditorPosition.Left = 0
            EditorPosition.Top = 0
            EditorPosition.Width = 0
            EditorPosition.Height = 0
            MeasurementUnits = muInches
            PrintMargins.Top = 1.000000000000000000
            PrintMargins.Bottom = 1.000000000000000000
            PrintMargins.Left = 1.000000000000000000
            PrintMargins.Right = 1.000000000000000000
            PrintHeader.VertMargin = 0.500000000000000000
            PrintHeader.Font.Charset = DEFAULT_CHARSET
            PrintHeader.Font.Color = clWindowText
            PrintHeader.Font.Height = -11
            PrintHeader.Font.Name = 'Tahoma'
            PrintHeader.Font.Style = []
            PrintFooter.VertMargin = 0.500000000000000000
            PrintFooter.Font.Charset = DEFAULT_CHARSET
            PrintFooter.Font.Color = clWindowText
            PrintFooter.Font.Height = -11
            PrintFooter.Font.Name = 'Tahoma'
            PrintFooter.Font.Style = []
            DoubleBuffered = False
            ParentDoubleBuffered = False
            RichEditVersion = 2
            Data = {
              860000007B5C727466315C616E73695C616E7369637067313235335C64656666
              305C6465666C616E67313033327B5C666F6E7474626C7B5C66305C666E696C5C
              6663686172736574313631205461686F6D613B7D7D0D0A5C766965776B696E64
              345C7563315C706172645C66305C667331382077774442526963684564697431
              5C7061720D0A7D0D0A00}
          end
        end
        object LanguageRGP: TwwRadioGroup
          Left = 23
          Top = 27
          Width = 162
          Height = 62
          DisableThemes = False
          ItemIndex = 0
          Caption = #915#955#974#963#963#945
          DataField = 'TYPE_MONO_POLY'
          Items.Strings = (
            #917#955#955#951#957#953#954#940
            'English')
          TabOrder = 1
          Values.Strings = (
            'G'
            'E')
          OnChange = LanguageRGPChange
        end
      end
    end
    object TitlePNL: TRzPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 783
      Height = 38
      Align = alTop
      BorderOuter = fsFlatRounded
      Caption = 'Template '#931#949#956#953#957#945#961#943#969#957
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3947580
      Font.Height = -29
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = True
      ParentFont = False
      TabOrder = 1
      Transparent = True
      VisualStyle = vsClassic
      WordWrap = False
    end
    object RzPanel8: TRzPanel
      Left = 0
      Top = 44
      Width = 789
      Height = 13
      Align = alTop
      BorderOuter = fsNone
      TabOrder = 2
    end
  end
  object Panel4: TRzPanel
    Left = 0
    Top = 598
    Width = 789
    Height = 43
    Align = alBottom
    BorderOuter = fsFlatRounded
    BorderSides = [sdLeft, sdRight, sdBottom]
    TabOrder = 1
    object RzPanel1: TRzPanel
      Left = 687
      Top = 0
      Width = 100
      Height = 41
      Align = alRight
      BorderOuter = fsNone
      TabOrder = 0
      object RzBitBtn1: TRzBitBtn
        Left = 6
        Top = 3
        Width = 73
        Height = 34
        Caption = 'Close'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 0
        OnClick = RzBitBtn1Click
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFF0004450004450004450004450004450004450004450004450004450004
          45000445000445000445000445000445000445000445000445FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000A4D3461A53F70B44B7DC15789CE5F91D66396DB
          6396DB6396DB6598DD6295DA6295DA5D90D55688CD4C7EC24374B83765A9000A
          4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0011563B6DB14174B84B7EC256
          89CE5E91D66396DB6396DB6396DB6598DD6295DA6295DA5D90D55689CE4D80C4
          4477BB3E70B4001156FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0018613869
          AE3366A72B5EA22B5EA22B5EA22B5EA22B5EA2497CCE6396DB3164A52B5EA22B
          5EA22B5EA22B5EA22D60A43869AE001861FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF001F6A3A6CB02C5FA32B5EA22B5EA22B5EA22B5EA22B5EA24779CA6093
          D8295CA02B5EA22B5EA22B5EA22B5EA22E61A53A6CB0001F6AFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF00226D3B6DB128579B2B5EA22B5EA22B5EA22B5EA2
          2B5EA24274C45B8ED42554982B5EA22B5EA22B5EA22B5EA22E61A53B6DB10022
          6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0024703D6FB42451952B5EA22B
          5EA22B5EA22B5EA22B5EA23F70BE578ACF214E922B5EA22B5EA22B5EA22B5EA2
          2E61A53D6FB4002470FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0026723E70
          B51E498E2A5CA02B5EA22B5EA22B5EA22B5EA23B6BB95285CB1D478C2A5CA02B
          5EA22B5EA22B5EA22D60A43E70B5002672FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF0028754072B7183F842451962B5EA22B5EA22B5EA22B5EA23766B44E81
          C7173D812451962B5EA22B5EA22B5EA22D60A44072B7002875FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF002A784274B9133479193F84224F9328599D2B5EA2
          2B5EA23463AF4A7DC2113176193F84224F9328599D2B5EA22E61A54274B9002A
          78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF002C7A4376BB0C296F0F307415
          3A7E1A43871D488C214F933261AD487BC00B276B0F3074153A7E1A43871D488C
          2451964376BB002C7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF002E7D4578
          BD477ABF477ABF477ABF477ABF477ABF477ABF477ABF477ABF477ABF477ABF47
          7ABF477ABF477ABF142669142669002E7DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF002F7F477ABF3260AC3260AC3160AC325FAB325FAC3160AB3463AE477A
          BF3260AC3260AC3160AB325FAC3160AB3166B45287D1002F7FFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF003182497CC13265A6285B9F285B9F285B9F285B9F
          285B9F3462AF4A7DC22E61A2285B9F285B9F285B9F285B9F70A3EB84B7FC0031
          82FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0033844B7EC3295CA0275A9E27
          5A9E275A9E275A9E275A9E3A6AB85184CA26589C275A9E275A9E275A9E275A9E
          2B5EA24B7EC3003384FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0035864D80
          C525549826599D26599D26599D26599D26599D4172C2598CD2214F9326599D26
          599D26599D26599D2B5EA24D80C5003586FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF0036894E81C7204D9125589C25589C25589C25589C25589C497BCE6295
          DB1D488C25589C25589C25589C25589C2A5DA14E81C7003689FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF00388B5083C91C458A23559924579B24579B24579B
          24579B5286DC6C9FE518418423559924579B24579B24579B295CA05083C90038
          8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00398C5084CA163C7F1D4A8D23
          569A23569A23569A23569A5B90E675A8ED1337791D4A8D23569A23569A23569A
          295CA05084CA00398CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003B8E5286
          CC0F2F7213397A1A478A1F5094225599225599629AF17DB0F50C2A6B13397A1A
          478A1F5094225599285B9F5286CC003B8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF003C905387CD0A266A0C2869123576153D7F1942851C488B67A0F882B5
          FA0722620C2A6B123576153D7F174083214E925387CD003C90FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF003D91598DD25F92D7699CE174A7EC7DB0F584B7FC
          84B7FC84B7FC82B5FA82B5FA82B5FA7CAFF473A6EB6A9DE26194D95B8FD4003D
          91FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003E935085CC5D91D7689CE173
          A6EC7EB1F684B7FC84B7FC84B7FC82B5FA82B5FA82B5FA7BAEF373A6EC699DE2
          6093D95388CF003E93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003F94003F
          94003F94003F94003F94003F94003F94003F94003F94003F94003F94003F9400
          3F94003F94003F94003F94003F94003F94FFFFFFFFFFFFFFFFFF}
        Margin = -1
      end
    end
    object BitBtn1: TBitBtn
      Left = 7
      Top = 5
      Width = 89
      Height = 34
      Caption = 'Accept'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF05793AEDF8F2FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E8245
        63CE9D108447EFF9F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF0D844472D1A76DD0A466CE9F0F8747E8F4ECFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF0D864480D7B07ED5AE76D2A96DD0A465CD9F108947EBF6EEFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF04823D8FDAB98FDAB986D8B37DD5AE74D2A86ACF
        A261CC9D0F8B48EEF7F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0C88469CDFC19FE0C398DDBF8EDBB8
        85D7B27AD4AB6FD1A665CE9F5CCB9A0F8D4AEEF7F1FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF098C47A5E1C6ADE4CCA7
        E2C89FDFC395DCBC8AD9B67ED6AE72D1A868CEA05ECB9A57C9970E904CCBE3CC
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF099048A7E2
        C8B8E7D2B5E6D0AEE4CCA4E1C699DDBF26B46688D9B475D2A96ACFA260CC9B57
        C99651C794048C41D5E9D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        079347A1E1C4B8E7D2BEE9D6B7E7D3AFE5CDA3E0C60D964AFFFFFF1FAD5F83D7
        B26BD0A260CC9C58C99651C89351C7930E974DDAECDBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF0291438FDBB9AEE4CCB4E6D0B8E7D2B5E6D0A7E2C80B974BFFFFFF
        FFFFFFFFFFFF1FAD5F7CD5AD60CC9C57CA9651C89350C79251C7920E984EDDEE
        DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF19A359A0E0C3AEE4CCB0E4CDA4E1C51D
        A35BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF23B16373D1A856C99650C7924FC791
        4FC79251C791119C51DEEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1CA75C9DDF
        C2A6E2C7109F51FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF23B1636B
        D0A24FC7924FC79250C79250C79250C791139E53E3F2E5FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF1AA85A16A557FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF24B36563CD9E50C7924FC79250C79250C79251C7920C9B4DFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF20AF615FCC9A4FC79250C79251C8
        93088D46FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1BAA5C
        5ACA9853C8940A964BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF11A052139F53FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object CanelBTN: TBitBtn
      Left = 112
      Top = 5
      Width = 89
      Height = 34
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF3B46E23A44E2FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A44E23B46E2FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3B46E2616BF9616BF93842E0FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3842E0616BF9
        616BF93B46E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A44E15660F1737C
        FE7E87FE626CF93842E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF38
        42E0626CF97E87FE737CFE5660F13A44E1FFFFFFFFFFFFFFFFFFFFFFFF3842E0
        4C54EA6169F66972FC757FFE848DFE636DFA3842E0FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF3842E0636DFA848DFE757FFE6972FC6169F64C54EA3842E0FFFFFFFF
        FFFFFFFFFF3741DF464FE75961F1626BF86B74FE7882FE828CFE616BF93943E1
        FFFFFFFFFFFFFFFFFF3943E1616BF9828CFE7882FE6B74FE626BF85961F1464F
        E73741DFFFFFFFFFFFFFFFFFFFFFFFFF3741DF4851E85C64F3646CF96A73FD74
        7DFE7B85FE5D67F73B46E2FFFFFF3B46E25D67F77B85FE747DFE6A73FD646CF9
        5C64F34851E83741DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3741DF4851
        E85A62F2616AF7666FFA6D76FE717BFE6B74FE3B46E26B74FE717BFE6D76FE66
        6FFA616AF75A62F24851E83741DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF3741DF4750E75860F15D65F4616AF7646DF96770FB6770FB6770
        FB646DF9616AF75D65F45860F14750E73741DFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3640DE424AE34E55E9575FF05A62F2
        5C64F35C64F35C64F35A62F2575FF04E55E9424AE33640DEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3640DE4E
        55E9575FF05A62F25C64F35C64F35C64F35A62F2575FF04E55E93640DEFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF3640DE575FF05A62F25C64F35C64F35C64F35A62F2575FF036
        40DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF3640DE4E55E9575FF05A62F25C64F35C64F35C64
        F35A62F2575FF04E55E93640DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3640DE424AE34E55E9575FF05A62F2
        5C64F35C64F35C64F35A62F2575FF04E55E9424AE33640DEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3741DF4750E75860F15D
        65F4616AF7646DF96770FB6770FB6770FB646DF9616AF75D65F45860F14750E7
        3741DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3741DF4851
        E85A62F2616AF7666FFA6D76FE717BFE6B74FE3B46E26B74FE717BFE6D76FE66
        6FFA616AF75A62F24851E83741DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        3741DF4851E85C64F3646CF96A73FD747DFE7B85FE5D67F73B46E2FFFFFF3B46
        E25D67F77B85FE747DFE6A73FD646CF95C64F34851E83741DFFFFFFFFFFFFFFF
        FFFFFFFFFF3741DF464FE75961F1626BF86B74FE7882FE828CFE616BF93943E1
        FFFFFFFFFFFFFFFFFF3943E1616BF9828CFE7882FE6B74FE626BF85961F1464F
        E73741DFFFFFFFFFFFFFFFFFFF3842E04C54EA6169F66972FC757FFE848DFE63
        6DFA3842E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3842E0636DFA848DFE757FFE
        6972FC6169F64C54EA3842E0FFFFFFFFFFFFFFFFFFFFFFFF3A44E15660F1737C
        FE7E87FE626CF93842E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF38
        42E0626CF97E87FE737CFE5660F13A44E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF3B46E2616BF9616BF93842E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF3842E0616BF9616BF93B46E2FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF3B46E23A44E2FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A44E23B46E2FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      TabOrder = 2
      OnClick = CanelBTNClick
    end
  end
  object TableSRC: TDataSource
    DataSet = TableSQL
    OnStateChange = TableSRCStateChange
    Left = 112
    Top = 9
  end
  object TableSQL: TIBCQuery
    KeyFields = 'SERIAL_NUMBER'
    KeyGenerator = 'GEN_SEMINAR_TYPE'
    SQLInsert.Strings = (
      'INSERT INTO SEMINAR_TYPE'
      
        '  (SERIAL_NUMBER, SEMINAR_NAME, SEMINAR_COST, ANAD_APPROVED, SEM' +
        'INAR_CATEGORY, DURATION_HOURS, DURATION_DAYS, COMMENTS, FEE_ESTI' +
        'MATE, MAX_CAPACITY, HAS_EXPIRY, EXPIRY_PERIOD, FEE_ACTUAL, FEE_W' +
        'ITH_ANAD_SUB, TYPE_MONO_POLY)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :SEMINAR_NAME, :SEMINAR_COST, :ANAD_APPROVED,' +
        ' :SEMINAR_CATEGORY, :DURATION_HOURS, :DURATION_DAYS, :COMMENTS, ' +
        ':FEE_ESTIMATE, :MAX_CAPACITY, :HAS_EXPIRY, :EXPIRY_PERIOD, :FEE_' +
        'ACTUAL, :FEE_WITH_ANAD_SUB, :TYPE_MONO_POLY)')
    SQLDelete.Strings = (
      'DELETE FROM SEMINAR_TYPE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE SEMINAR_TYPE'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, SEMINAR_NAME = :SEMINAR_NAME, ' +
        'SEMINAR_COST = :SEMINAR_COST, ANAD_APPROVED = :ANAD_APPROVED, SE' +
        'MINAR_CATEGORY = :SEMINAR_CATEGORY, DURATION_HOURS = :DURATION_H' +
        'OURS, DURATION_DAYS = :DURATION_DAYS, COMMENTS = :COMMENTS, FEE_' +
        'ESTIMATE = :FEE_ESTIMATE, MAX_CAPACITY = :MAX_CAPACITY, HAS_EXPI' +
        'RY = :HAS_EXPIRY, EXPIRY_PERIOD = :EXPIRY_PERIOD, FEE_ACTUAL = :' +
        'FEE_ACTUAL, FEE_WITH_ANAD_SUB = :FEE_WITH_ANAD_SUB, TYPE_MONO_PO' +
        'LY = :TYPE_MONO_POLY'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, SEMINAR_NAME, SEMINAR_COST, ANAD_APPROVED,' +
        ' SEMINAR_CATEGORY, DURATION_HOURS, DURATION_DAYS, COMMENTS, FEE_' +
        'ESTIMATE, MAX_CAPACITY, HAS_EXPIRY, EXPIRY_PERIOD, FEE_ACTUAL, F' +
        'EE_WITH_ANAD_SUB, TYPE_MONO_POLY FROM SEMINAR_TYPE'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM SEMINAR_TYPE'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM SEMINAR_TYPE'
      ''
      ') q')
    Connection = U_databaseFRM.DataConnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM'
      'SEMINAR_type ORDER BY SEMINAR_NAME')
    Active = True
    AfterScroll = TableSQLAfterScroll
    OnNewRecord = TableSQLNewRecord
    Left = 49
    Top = 5
    object TableSQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'A/A'
      DisplayWidth = 4
      FieldName = 'SERIAL_NUMBER'
    end
    object TableSQLSEMINAR_NAME: TWideStringField
      DisplayLabel = #928#949#961#953#947#961#945#966#942
      DisplayWidth = 28
      FieldName = 'SEMINAR_NAME'
      Required = True
      Size = 160
    end
    object TableSQLANAD_APPROVED: TWideStringField
      DisplayLabel = #913#925#913#916
      DisplayWidth = 6
      FieldName = 'ANAD_APPROVED'
      Required = True
      FixedChar = True
      Size = 1
    end
    object TableSQLTYPE_MONO_POLY: TWideStringField
      DisplayLabel = #928#959#955#965#917#960#967
      DisplayWidth = 9
      FieldName = 'TYPE_MONO_POLY'
      Required = True
      FixedChar = True
      Size = 1
    end
    object TableSQLSEMINAR_COST: TFloatField
      DisplayLabel = #922#972#963#964#959#962
      FieldName = 'SEMINAR_COST'
      Visible = False
      DisplayFormat = '0.00'
    end
    object TableSQLSEMINAR_CATEGORY: TWideStringField
      FieldName = 'SEMINAR_CATEGORY'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object TableSQLDURATION_HOURS: TIntegerField
      DisplayLabel = #911#961#949#962
      FieldName = 'DURATION_HOURS'
      Required = True
      Visible = False
    end
    object TableSQLDURATION_DAYS: TIntegerField
      DisplayLabel = #924#941#961#949#962
      FieldName = 'DURATION_DAYS'
      Required = True
      Visible = False
    end
    object TableSQLCOMMENTS: TWideStringField
      FieldName = 'COMMENTS'
      Visible = False
      Size = 160
    end
    object TableSQLFEE_ESTIMATE: TFloatField
      FieldName = 'FEE_ESTIMATE'
      Visible = False
    end
    object TableSQLMAX_CAPACITY: TIntegerField
      FieldName = 'MAX_CAPACITY'
      Required = True
      Visible = False
    end
    object TableSQLHAS_EXPIRY: TWideStringField
      FieldName = 'HAS_EXPIRY'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object TableSQLEXPIRY_PERIOD: TIntegerField
      FieldName = 'EXPIRY_PERIOD'
      Visible = False
    end
    object TableSQLFEE_ACTUAL: TFloatField
      FieldName = 'FEE_ACTUAL'
      Visible = False
    end
    object TableSQLFEE_WITH_ANAD_SUB: TFloatField
      FieldName = 'FEE_WITH_ANAD_SUB'
      Visible = False
    end
  end
  object WriteTrans: TIBCTransaction
    DefaultConnection = U_databaseFRM.DataConnection
    Left = 473
    Top = 77
  end
  object ReadTrans: TIBCTransaction
    DefaultConnection = U_databaseFRM.DataConnection
    IsolationLevel = iblReadOnlyReadCommitted
    Left = 560
    Top = 65
  end
  object seminarSubjectSQL: TIBCQuery
    KeyFields = 'SERIAL_NUMBER'
    KeyGenerator = 'GEN_SEMINAR_TYPE_SUBJECT'
    SQLInsert.Strings = (
      'INSERT INTO SEMINAR_TYPE_SUBJECT'
      '  (SERIAL_NUMBER, SUBJECT, FK_SEMINAR_TYPE_SERIAL)'
      'VALUES'
      '  (:SERIAL_NUMBER, :SUBJECT, :FK_SEMINAR_TYPE_SERIAL)')
    SQLDelete.Strings = (
      'DELETE FROM SEMINAR_TYPE_SUBJECT'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE SEMINAR_TYPE_SUBJECT'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, SUBJECT = :SUBJECT, FK_SEMINAR' +
        '_TYPE_SERIAL = :FK_SEMINAR_TYPE_SERIAL'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, SUBJECT, FK_SEMINAR_TYPE_SERIAL FROM SEMIN' +
        'AR_TYPE_SUBJECT'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM SEMINAR_TYPE_SUBJECT'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM SEMINAR_TYPE_SUBJECT'
      ''
      ') q')
    Connection = U_databaseFRM.DataConnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM'
      'SEMINAR_type_subject'
      'order by subject')
    MasterFields = 'SERIAL_NUMBER'
    DetailFields = 'FK_SEMINAR_TYPE_SERIAL'
    MasterSource = TableSRC
    Active = True
    Left = 361
    Top = 13
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
        Value = 3
      end>
    object seminarSubjectSQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'A/A'
      DisplayWidth = 10
      FieldName = 'SERIAL_NUMBER'
    end
    object seminarSubjectSQLSUBJECT: TWideStringField
      DisplayLabel = #920#941#956#945
      DisplayWidth = 55
      FieldName = 'SUBJECT'
      FixedChar = True
      Size = 60
    end
    object seminarSubjectSQLFK_SEMINAR_TYPE_SERIAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'FK_SEMINAR_TYPE_SERIAL'
      Required = True
      Visible = False
    end
  end
  object SeminarSubjectSRC: TDataSource
    DataSet = seminarSubjectSQL
    OnStateChange = TableSRCStateChange
    Left = 256
    Top = 17
  end
  object SeminarReminderSRC: TDataSource
    DataSet = SeminarReminderSQL
    OnStateChange = TableSRCStateChange
    Left = 504
    Top = 265
  end
  object SeminarReminderSQL: TIBCQuery
    KeyFields = 'SERIAL_NUMBER'
    KeyGenerator = 'GEN_SEMINAR_TYPE_REMINDER'
    SQLInsert.Strings = (
      'INSERT INTO SEMINAR_TYPE_REMINDER'
      
        '  (SERIAL_NUMBER, FK_SEMINAR_TYPE_SERIAL, DESCRIPTION, REMINDER_' +
        'MESSAGE, AFTER_OR_BEFORE, PERSON_OR_SEMINAR, START_OR_END, DAYS_' +
        'OR_MONTHS, NUMBER_OF_DAYS_MONTHS, IS_HIGH)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :FK_SEMINAR_TYPE_SERIAL, :DESCRIPTION, :REMIN' +
        'DER_MESSAGE, :AFTER_OR_BEFORE, :PERSON_OR_SEMINAR, :START_OR_END' +
        ', :DAYS_OR_MONTHS, :NUMBER_OF_DAYS_MONTHS, :IS_HIGH)')
    SQLDelete.Strings = (
      'DELETE FROM SEMINAR_TYPE_REMINDER'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE SEMINAR_TYPE_REMINDER'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, FK_SEMINAR_TYPE_SERIAL = :FK_S' +
        'EMINAR_TYPE_SERIAL, DESCRIPTION = :DESCRIPTION, REMINDER_MESSAGE' +
        ' = :REMINDER_MESSAGE, AFTER_OR_BEFORE = :AFTER_OR_BEFORE, PERSON' +
        '_OR_SEMINAR = :PERSON_OR_SEMINAR, START_OR_END = :START_OR_END, ' +
        'DAYS_OR_MONTHS = :DAYS_OR_MONTHS, NUMBER_OF_DAYS_MONTHS = :NUMBE' +
        'R_OF_DAYS_MONTHS, IS_HIGH = :IS_HIGH'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, FK_SEMINAR_TYPE_SERIAL, DESCRIPTION, REMIN' +
        'DER_MESSAGE, AFTER_OR_BEFORE, PERSON_OR_SEMINAR, START_OR_END, D' +
        'AYS_OR_MONTHS, NUMBER_OF_DAYS_MONTHS, IS_HIGH FROM SEMINAR_TYPE_' +
        'REMINDER'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM SEMINAR_TYPE_REMINDER'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM SEMINAR_TYPE_REMINDER'
      ''
      ') q')
    Connection = U_databaseFRM.DataConnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM'
      'SEMINAR_type_reminder'
      'order by Description')
    MasterFields = 'SERIAL_NUMBER'
    DetailFields = 'FK_SEMINAR_TYPE_SERIAL'
    MasterSource = TableSRC
    Active = True
    Left = 265
    Top = 165
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
        Value = 3
      end>
    object SeminarReminderSQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'A/A'
      DisplayWidth = 3
      FieldName = 'SERIAL_NUMBER'
    end
    object SeminarReminderSQLDESCRIPTION: TWideStringField
      DisplayLabel = #928#949#961#953#947#961#945#966#942
      DisplayWidth = 10
      FieldName = 'DESCRIPTION'
      Required = True
      Size = 160
    end
    object SeminarReminderSQLNUMBER_OF_DAYS_MONTHS: TIntegerField
      DisplayLabel = #931#949
      DisplayWidth = 5
      FieldName = 'NUMBER_OF_DAYS_MONTHS'
      Required = True
    end
    object SeminarReminderSQLDAYS_OR_MONTHS: TWideStringField
      DisplayLabel = #919#956#941#961#949#962'/'#924#942#957#949#962
      DisplayWidth = 10
      FieldName = 'DAYS_OR_MONTHS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SeminarReminderSQLAFTER_OR_BEFORE: TWideStringField
      DisplayLabel = #928#961#953#957'/'#924#949#964#940
      DisplayWidth = 8
      FieldName = 'AFTER_OR_BEFORE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SeminarReminderSQLSTART_OR_END: TWideStringField
      DisplayLabel = #919#956#949#961#959#956#951#957#943#945
      DisplayWidth = 16
      FieldName = 'START_OR_END'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SeminarReminderSQLFK_SEMINAR_TYPE_SERIAL: TIntegerField
      FieldName = 'FK_SEMINAR_TYPE_SERIAL'
      Required = True
      Visible = False
    end
    object SeminarReminderSQLREMINDER_MESSAGE: TWideStringField
      DisplayLabel = #924#942#957#965#956#945
      FieldName = 'REMINDER_MESSAGE'
      Required = True
      Visible = False
      Size = 160
    end
    object SeminarReminderSQLPERSON_OR_SEMINAR: TWideStringField
      DisplayLabel = #928#945#961#945#955#942#960#964#951#962
      FieldName = 'PERSON_OR_SEMINAR'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object SeminarReminderSQLIS_HIGH: TWideStringField
      FieldName = 'IS_HIGH'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object SeminarPictureSQL: TIBCQuery
    KeyFields = 'SERIAL_NUMBER'
    KeyGenerator = 'GEN_SEMINAR_TYPE_PICTURES'
    SQLInsert.Strings = (
      'INSERT INTO SEMINAR_TYPE_PICTURES'
      
        '  (SERIAL_NUMBER, FK_SEMINAR_TYPE_SERIAL, LANGUAGE_GREEK_OR_ENGL' +
        'ISH, PICTURE_SEMINAR, LINE_A1, LINE_A2, LINE_B1, LINE_B2, LINE_B' +
        '3)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :FK_SEMINAR_TYPE_SERIAL, :LANGUAGE_GREEK_OR_E' +
        'NGLISH, :PICTURE_SEMINAR, :LINE_A1, :LINE_A2, :LINE_B1, :LINE_B2' +
        ', :LINE_B3)')
    SQLDelete.Strings = (
      'DELETE FROM SEMINAR_TYPE_PICTURES'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE SEMINAR_TYPE_PICTURES'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, FK_SEMINAR_TYPE_SERIAL = :FK_S' +
        'EMINAR_TYPE_SERIAL, LANGUAGE_GREEK_OR_ENGLISH = :LANGUAGE_GREEK_' +
        'OR_ENGLISH, PICTURE_SEMINAR = :PICTURE_SEMINAR, LINE_A1 = :LINE_' +
        'A1, LINE_A2 = :LINE_A2, LINE_B1 = :LINE_B1, LINE_B2 = :LINE_B2, ' +
        'LINE_B3 = :LINE_B3'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, FK_SEMINAR_TYPE_SERIAL, LANGUAGE_GREEK_OR_' +
        'ENGLISH, PICTURE_SEMINAR, LINE_A1, LINE_A2, LINE_B1, LINE_B2, LI' +
        'NE_B3 FROM SEMINAR_TYPE_PICTURES'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM SEMINAR_TYPE_PICTURES'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM SEMINAR_TYPE_PICTURES'
      ''
      ') q')
    Connection = U_databaseFRM.DataConnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'SELECT STP.* '
      'FROM '
      'seminar_type_pictures STP'
      
        'where stp.FK_SEMINAR_TYPE_SERIAL = :SeminarSerial and stp.LANGUA' +
        'GE_GREEK_OR_ENGLISH = :language')
    Left = 121
    Top = 341
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SeminarSerial'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'language'
        Value = nil
      end>
    object SeminarPictureSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object SeminarPictureSQLPICTURE_SEMINAR: TBlobField
      FieldName = 'PICTURE_SEMINAR'
    end
    object SeminarPictureSQLLINE_A1: TWideStringField
      FieldName = 'LINE_A1'
      Size = 500
    end
    object SeminarPictureSQLLINE_A2: TWideStringField
      FieldName = 'LINE_A2'
      Size = 500
    end
    object SeminarPictureSQLLINE_B1: TWideStringField
      FieldName = 'LINE_B1'
      Size = 500
    end
    object SeminarPictureSQLLINE_B2: TWideStringField
      FieldName = 'LINE_B2'
      Size = 500
    end
    object SeminarPictureSQLLINE_B3: TWideStringField
      FieldName = 'LINE_B3'
      Size = 500
    end
    object SeminarPictureSQLFK_SEMINAR_TYPE_SERIAL: TIntegerField
      FieldName = 'FK_SEMINAR_TYPE_SERIAL'
      Required = True
    end
    object SeminarPictureSQLLANGUAGE_GREEK_OR_ENGLISH: TWideStringField
      FieldName = 'LANGUAGE_GREEK_OR_ENGLISH'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object SeminarPictureSRC: TDataSource
    DataSet = SeminarPictureSQL
    OnStateChange = TableSRCStateChange
    Left = 216
    Top = 329
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 416
    Top = 199
  end
end
