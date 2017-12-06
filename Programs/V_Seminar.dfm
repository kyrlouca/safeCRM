object V_SeminarFRM: TV_SeminarFRM
  Left = 365
  Top = 153
  Caption = '--'
  ClientHeight = 801
  ClientWidth = 923
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 923
    Height = 53
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object TitleLbl: TRzPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 915
      Height = 45
      Align = alClient
      AutoSize = True
      BorderOuter = fsNone
      Caption = #931#949#956#953#957#940#961#953#959
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3947580
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = True
      ParentFont = False
      TabOrder = 0
      Transparent = True
      WordWrap = False
      object RzDBLabel2: TRzDBLabel
        Left = 0
        Top = 0
        Width = 284
        Height = 45
        Align = alLeft
        Layout = tlCenter
        WordWrap = True
        DataField = 'ANAD_NUMBER'
        DataSource = SeminarSRC
      end
      object StatusFLD: TwwDBComboBox
        Left = 749
        Top = 0
        Width = 166
        Height = 45
        BevelInner = bvNone
        ShowButton = False
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        BorderStyle = bsNone
        Color = clBtnFace
        DataField = 'STATUS'
        DataSource = SeminarSRC
        DropDownCount = 8
        ItemHeight = 0
        Sorted = False
        TabOrder = 0
        UnboundDataType = wwDefault
        Align = alRight
        ExplicitHeight = 38
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 53
    Width = 923
    Height = 12
    Align = alTop
    TabOrder = 1
  end
  object Panel3x: TRzPanel
    Left = 0
    Top = 65
    Width = 923
    Height = 736
    Align = alClient
    BorderOuter = fsFlatRounded
    TabOrder = 2
    ExplicitHeight = 636
    object PageControlPC: TRzPageControl
      Left = 2
      Top = 2
      Width = 919
      Height = 689
      Hint = ''
      ActivePage = StudentsTS
      ActivePageDefault = SeminarTS
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabIndex = 2
      TabOrder = 0
      OnChanging = PageControlPCChanging
      ExplicitHeight = 589
      FixedDimension = 22
      object SeminarTS: TRzTabSheet
        OnShow = SeminarTSShow
        Caption = #931#949#956#953#957#940#961#953#959
        ExplicitHeight = 563
        object SecondGRP: TRzGroupBox
          Left = 404
          Top = 23
          Width = 321
          Height = 241
          Caption = #928#955#951#961#959#966#959#961#943#949#962
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label5: TLabel
            Left = 35
            Top = 22
            Width = 66
            Height = 14
            Caption = #917#954#960#945#953#948#949#965#964#942#962
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 27
            Top = 103
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
          object Label11: TLabel
            Left = 68
            Top = 68
            Width = 34
            Height = 14
            Caption = #935#974#961#959#962
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object InstructorBTN: TSpeedButton
            Left = 257
            Top = 18
            Width = 21
            Height = 19
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Glyph.Data = {
              D6000000424DD60000000000000076000000280000000C0000000C0000000100
              0400000000006000000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
              0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF
              0000F00FF00FF00F0000F00FF00FF00F0000FFFFFFFFFFFF0000FFFFFFFFFFFF
              0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000}
            Layout = blGlyphBottom
            ParentFont = False
            OnClick = InstructorBTNClick
          end
          object VenueBTN: TSpeedButton
            Left = 258
            Top = 68
            Width = 21
            Height = 19
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Glyph.Data = {
              D6000000424DD60000000000000076000000280000000C0000000C0000000100
              0400000000006000000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
              0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF
              0000F00FF00FF00F0000F00FF00FF00F0000FFFFFFFFFFFF0000FFFFFFFFFFFF
              0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000}
            Layout = blGlyphBottom
            ParentFont = False
            OnClick = VenueBTNClick
          end
          object Label22: TLabel
            Left = 4
            Top = 133
            Width = 97
            Height = 14
            Caption = #913#961#953#952#956#972#962' '#924#945#952#951#964#974#957
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label20: TLabel
            Left = 24
            Top = 164
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
          object Label21: TLabel
            Left = 53
            Top = 192
            Width = 48
            Height = 14
            Caption = #931#949' '#924#942#957#949#962
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 35
            Top = 47
            Width = 66
            Height = 14
            Caption = #913#958#953#959#955#959#947#951#964#942#962
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object SpeedButton1: TSpeedButton
            Left = 257
            Top = 43
            Width = 21
            Height = 19
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Glyph.Data = {
              D6000000424DD60000000000000076000000280000000C0000000C0000000100
              0400000000006000000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
              0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF
              0000F00FF00FF00F0000F00FF00FF00F0000FFFFFFFFFFFF0000FFFFFFFFFFFF
              0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF0000}
            Layout = blGlyphBottom
            ParentFont = False
            OnClick = InstructorBTNClick
          end
          object wwDBEdit1: TwwDBEdit
            Left = 108
            Top = 100
            Width = 90
            Height = 22
            DataField = 'DURATION_HOURS'
            DataSource = SeminarSRC
            TabOrder = 3
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object InstructorFLD: TwwDBComboBox
            Left = 108
            Top = 17
            Width = 144
            Height = 21
            ShowButton = True
            Style = csDropDownList
            MapList = True
            AllowClearKey = False
            AutoDropDown = True
            ShowMatchText = True
            DataField = 'FK_INSTRUCTOR'
            DataSource = SeminarSRC
            DropDownCount = 8
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 0
            ParentFont = False
            Sorted = False
            TabOrder = 0
            UnboundDataType = wwDefault
          end
          object VenueFLD: TwwDBComboBox
            Left = 108
            Top = 66
            Width = 144
            Height = 21
            ShowButton = True
            Style = csDropDownList
            MapList = True
            AllowClearKey = False
            AutoDropDown = True
            ShowMatchText = True
            DataField = 'FK_VENUE'
            DataSource = SeminarSRC
            DropDownCount = 8
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 0
            ParentFont = False
            Sorted = False
            TabOrder = 2
            UnboundDataType = wwDefault
            TwoColumnDisplay = True
          end
          object wwDBEdit5: TwwDBEdit
            Left = 108
            Top = 125
            Width = 90
            Height = 22
            DataField = 'MAX_CAPACITY'
            DataSource = SeminarSRC
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object CompletedFLD: TwwCheckBox
            Left = 108
            Top = 163
            Width = 37
            Height = 18
            DisableThemes = False
            AlwaysTransparent = False
            ValueChecked = 'Y'
            ValueUnchecked = 'N'
            DisplayValueChecked = 'Y'
            DisplayValueUnchecked = 'N'
            NullAndBlankState = cbUnchecked
            DataField = 'HAS_EXPIRY'
            DataSource = SeminarSRC
            ShowText = False
            TabOrder = 5
          end
          object wwDBEdit6: TwwDBEdit
            Left = 108
            Top = 187
            Width = 75
            Height = 22
            DataField = 'EXPIRY_PERIOD'
            DataSource = SeminarSRC
            TabOrder = 6
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBComboBox2: TwwDBComboBox
            Left = 108
            Top = 42
            Width = 144
            Height = 21
            ShowButton = True
            Style = csDropDownList
            MapList = True
            AllowClearKey = False
            AutoDropDown = True
            ShowMatchText = True
            DataField = 'FK_INSTRUCTOR'
            DataSource = SeminarSRC
            DropDownCount = 8
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 0
            ParentFont = False
            Sorted = False
            TabOrder = 1
            UnboundDataType = wwDefault
          end
        end
        object RzGroupBox3: TRzGroupBox
          Left = 404
          Top = 270
          Width = 321
          Height = 155
          Caption = #932#953#956#941#962
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object Label1: TLabel
            Left = 35
            Top = 85
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
          object Label19: TLabel
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
          object wwCheckBox1: TwwCheckBox
            AlignWithMargins = True
            Left = 156
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
            DataField = 'ANAD_APPROVED'
            DataSource = SeminarSRC
            ShowText = False
            TabOrder = 0
          end
          object wwDBEdit3: TwwDBEdit
            Left = 156
            Top = 77
            Width = 76
            Height = 22
            DataField = 'FEE_ACTUAL'
            DataSource = SeminarSRC
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
            DataField = 'FEE_WITH_ANAD_SUB'
            DataSource = SeminarSRC
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
        end
        object FirstGRP: TGroupBox
          Left = 28
          Top = 23
          Width = 370
          Height = 402
          Caption = #928#955#951#961#959#966#959#961#943#949#962
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object Label2: TLabel
            Left = 49
            Top = 173
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
            Left = 86
            Top = 24
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
          object SerialFLD: TRzDBLabel
            Left = 115
            Top = 20
            Width = 75
            Height = 20
            Alignment = taRightJustify
            BorderOuter = fsFlat
            BorderWidth = 1
            DataField = 'SERIAL_NUMBER'
            DataSource = SeminarSRC
          end
          object Label4: TLabel
            Left = 55
            Top = 148
            Width = 52
            Height = 14
            Caption = 'Template'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 72
            Top = 195
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
          object Companylbl: TLabel
            Left = 64
            Top = 356
            Width = 43
            Height = 14
            Caption = #917#964#945#953#961#949#943#945
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 66
            Top = 88
            Width = 41
            Height = 14
            Caption = #904#957#945#961#958#951
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 37
            Top = 113
            Width = 70
            Height = 14
            Caption = #927#955#959#954#955#942#961#969#963#951
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 53
            Top = 49
            Width = 54
            Height = 14
            Caption = #913#961'. '#913#925#913#916
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object DescFLD: TwwDBEdit
            Left = 113
            Top = 170
            Width = 252
            Height = 22
            DataField = 'SEMINAR_NAME'
            DataSource = SeminarSRC
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object SeminarTypeFLD: TwwDBComboBox
            Left = 113
            Top = 146
            Width = 144
            Height = 21
            ShowButton = True
            Style = csDropDownList
            MapList = True
            AllowClearKey = False
            AutoDropDown = True
            ShowMatchText = True
            DataField = 'FK_SEMINAR'
            DataSource = SeminarSRC
            DropDownCount = 8
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 0
            ParentFont = False
            Sorted = False
            TabOrder = 3
            UnboundDataType = wwDefault
            OnCloseUp = SeminarTypeFLDCloseUp
          end
          object RzDBRichEdit1: TRzDBRichEdit
            Left = 113
            Top = 195
            Width = 219
            Height = 49
            DataField = 'COMMENTS'
            DataSource = SeminarSRC
            Font.Charset = GREEK_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            TabOrder = 5
            Zoom = 100
          end
          object MonoRGP: TwwRadioGroup
            Left = 113
            Top = 262
            Width = 185
            Height = 62
            DisableThemes = False
            Caption = #917#960#953#967#949#953#961#953#963#953#945#954#972
            DataField = 'TYPE_MONO_POLY'
            DataSource = SeminarSRC
            Items.Strings = (
              #924#972#957#959'-'#917#960#953#967#949#953#961#953#963#953#945#954#972
              #928#972#955#965'-'#917#960#953#967#949#953#961#953#963#953#945#954#972)
            TabOrder = 6
            Values.Strings = (
              'M'
              'P')
            OnChange = MonoRGPChange
          end
          object CompanyFLD: TwwDBLookupCombo
            Left = 113
            Top = 354
            Width = 143
            Height = 22
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'LAST_NAME'#9'15'#9#908#957#959#956#945' '#917#964#945#953#961#949#943#945#962#9'F'
              'NATIONAL_ID'#9'20'#9#913#961'. '#917#947#947#961#945#966#942#962#9'F')
            DataField = 'FK_COMPANY_PERSON_SERIAL'
            DataSource = SeminarSRC
            LookupTable = CompanySQL
            LookupField = 'SERIAL_NUMBER'
            Options = [loRowLines, loTitles]
            TabOrder = 7
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = True
            ShowMatchText = True
          end
          object StartDateFLD: TwwDBDateTimePicker
            Left = 113
            Top = 85
            Width = 90
            Height = 23
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'Arial'
            CalendarAttributes.Font.Style = []
            DataField = 'DATE_STARTED'
            DataSource = SeminarSRC
            Epoch = 1950
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ShowButton = True
            TabOrder = 1
            DisplayFormat = 'dd/mm/yyyy'
          end
          object wwDBDateTimePicker1: TwwDBDateTimePicker
            Left = 113
            Top = 110
            Width = 90
            Height = 23
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'Arial'
            CalendarAttributes.Font.Style = []
            DataField = 'DATE_COMPLETED'
            DataSource = SeminarSRC
            Epoch = 1950
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ShowButton = True
            TabOrder = 2
            DisplayFormat = 'dd/mm/yyyy'
          end
          object AnadFLD: TwwDBEdit
            Left = 113
            Top = 46
            Width = 141
            Height = 22
            CharCase = ecUpperCase
            DataField = 'ANAD_NUMBER'
            DataSource = SeminarSRC
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
        end
      end
      object SubjectTS: TRzTabSheet
        OnShow = SubjectTSShow
        Caption = #920#941#956#945#964#945'/'#919#956#941#961#949#962
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitHeight = 563
        object RzPanel5: TRzPanel
          Left = 0
          Top = 0
          Width = 915
          Height = 25
          Align = alTop
          BorderOuter = fsNone
          TabOrder = 0
        end
        object RzPanel4: TRzPanel
          Left = 337
          Top = 25
          Width = 578
          Height = 638
          Align = alRight
          BorderOuter = fsNone
          TabOrder = 1
          ExplicitHeight = 538
          object RzPanel7: TRzPanel
            Left = 0
            Top = 0
            Width = 97
            Height = 638
            Align = alLeft
            BorderOuter = fsNone
            TabOrder = 0
            ExplicitLeft = 6
            ExplicitTop = -25
          end
          object GroupBox2: TGroupBox
            Left = 97
            Top = 0
            Width = 481
            Height = 638
            Align = alClient
            Caption = #924#941#961#949#962' '#916#953#949#958#945#947#969#947#942#962
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            ExplicitHeight = 538
            object RzPanel8: TRzPanel
              Left = 2
              Top = 16
              Width = 477
              Height = 33
              Align = alTop
              BorderOuter = fsNone
              TabOrder = 0
              object wwDBNavigator2: TwwDBNavigator
                Left = 0
                Top = 0
                Width = 175
                Height = 33
                DataSource = SeminarDaySRC
                RepeatInterval.InitialDelay = 500
                RepeatInterval.Interval = 100
                Align = alLeft
                object wwNavButton1: TwwNavButton
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
                object wwNavButton2: TwwNavButton
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
                  Enabled = False
                  DisabledTextColors.ShadeColor = clGray
                  DisabledTextColors.HighlightColor = clBtnHighlight
                  Index = 1
                  Style = nbsNext
                end
                object wwNavButton3: TwwNavButton
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
                object wwNavButton4: TwwNavButton
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
                  Enabled = False
                  DisabledTextColors.ShadeColor = clGray
                  DisabledTextColors.HighlightColor = clBtnHighlight
                  Index = 3
                  Style = nbsDelete
                end
                object wwNavButton5: TwwNavButton
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
                object wwNavButton6: TwwNavButton
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
                object wwNavButton7: TwwNavButton
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
            object wwDBGrid2: TwwDBGrid
              Left = 2
              Top = 49
              Width = 477
              Height = 587
              ControlType.Strings = (
                'SEMINAR_DAY;CustomEdit;SeminarDayFLD;F')
              Selected.Strings = (
                'SERIAL_NUMBER'#9'10'#9'A/A'
                'SEMINAR_DAY'#9'15'#9#919#956#949#961#959#956#951#957#943#945
                'DURATION_HOURS'#9'10'#9#916#953#940#961#954#949#953#945' ('#974#961#949#962')')
              IniAttributes.Delimiter = ';;'
              IniAttributes.UnicodeIniFile = False
              TitleColor = clBtnFace
              FixedCols = 1
              ShowHorzScrollBar = True
              Align = alClient
              DataSource = SeminarDaySRC
              TabOrder = 1
              TitleAlignment = taLeftJustify
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              TitleLines = 1
              TitleButtons = False
              ExplicitHeight = 495
              object SeminarDayFLD: TwwDBDateTimePicker
                Left = -16
                Top = 200
                Width = 121
                Height = 22
                CalendarAttributes.Font.Charset = DEFAULT_CHARSET
                CalendarAttributes.Font.Color = clWindowText
                CalendarAttributes.Font.Height = -11
                CalendarAttributes.Font.Name = 'Tahoma'
                CalendarAttributes.Font.Style = []
                DataField = 'SEMINAR_DAY'
                DataSource = SeminarDaySRC
                Epoch = 1950
                ShowButton = True
                TabOrder = 0
                DisplayFormat = 'dd/mm/yyyy'
              end
            end
          end
        end
        object GroupBox1: TGroupBox
          Left = 0
          Top = 25
          Width = 337
          Height = 638
          Align = alClient
          Caption = #920#941#956#945#964#945
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          ExplicitHeight = 538
          object RzPanel6: TRzPanel
            Left = 2
            Top = 16
            Width = 333
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
                Enabled = False
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
                Enabled = False
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
            Width = 333
            Height = 587
            Selected.Strings = (
              'SERIAL_NUMBER'#9'10'#9'A/A'
              'SUBJECT'#9'55'#9#920#941#956#945)
            IniAttributes.Delimiter = ';;'
            IniAttributes.UnicodeIniFile = False
            TitleColor = clBtnFace
            FixedCols = 1
            ShowHorzScrollBar = True
            Align = alClient
            DataSource = SeminarSubjectSRC
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
      object StudentsTS: TRzTabSheet
        OnShow = StudentsTSShow
        Caption = #917#954#960#945#953#948#949#965#972#956#949#957#959#953
        ExplicitHeight = 563
        object RzPanel2: TRzPanel
          Left = 0
          Top = 0
          Width = 915
          Height = 18
          Align = alTop
          BorderOuter = fsNone
          TabOrder = 0
        end
        object RzGroupBox1: TRzGroupBox
          Left = 0
          Top = 18
          Width = 425
          Height = 645
          Align = alLeft
          Caption = #931#965#956#956#949#964#941#967#959#957#964#949#962
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          ExplicitHeight = 545
          object RzSizePanel2: TRzSizePanel
            Left = 1
            Top = 15
            Width = 423
            Height = 29
            Align = alTop
            TabOrder = 0
          end
          object wwDBGrid4: TwwDBGrid
            Left = 1
            Top = 44
            Width = 423
            Height = 600
            ControlType.Strings = (
              'IS_GUEST;CheckBox;Y;N')
            Selected.Strings = (
              'SERIAL_NUMBER'#9'8'#9'A/A'
              'LAST_NAME'#9'19'#9#917#960#943#952#949#964#959
              'FIRST_NAME'#9'15'#9#908#957#959#956#945
              'IS_GUEST'#9'7'#9#917#954#964#945#954#964#959#962)
            IniAttributes.Delimiter = ';;'
            IniAttributes.UnicodeIniFile = False
            TitleColor = clBtnFace
            FixedCols = 3
            ShowHorzScrollBar = True
            Align = alClient
            BorderStyle = bsNone
            DataSource = AttendingSRC
            TabOrder = 1
            TitleAlignment = taLeftJustify
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
            ExplicitHeight = 500
          end
        end
        object RzPanel3: TRzPanel
          Left = 425
          Top = 18
          Width = 94
          Height = 645
          Align = alLeft
          BorderOuter = fsNone
          TabOrder = 2
          ExplicitHeight = 545
          object ToRightBTN: TBitBtn
            Left = 3
            Top = 141
            Width = 37
            Height = 37
            Cancel = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
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
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFC1C1C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF202020ABABABFDFDFDFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFD4D4D4E8E8E8FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000001111119F9F9F
              F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6363634E4E4EADADADF9F9F9FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
              0000000000080808727272E5E5E5FFFFFFFFFFFFFFFFFFFFFFFFBFBFBF535353
              111111434343B6B6B6FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF0000000000000000000505054E4E4EE8E8E8FFFFFFFFFFFFFF
              FFFFFCFCFCBBBBBB1A1A1A0000000101012323236868689E9E9EBEBEBECACACA
              C7C7C7B4B4B48F8F8F5E5E5E2424240000000000000000000000000000003030
              30D5D5D5FCFCFCFFFFFFFFFFFFFCFCFC9494940A0A0A00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000252525AAAAAAFAFAFAFFFFFFFFFFFFFBFBFB9A9A9A0C0C
              0C00000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000010101141414929292FFFFFFFFFFFF
              FFFFFFFCFCFCA5A5A52727270505050000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000001010113131392
              9292FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D78181813B3B3B090909000000
              0000000000000000000000000000000000000000000000000000000000000000
              00242424ABABABFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCE9
              E9E9CFCFCF8F8F8F5C5C5C3636361B1B1B0C0C0C060606000000000000000000
              000000000000323232D6D6D6FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
              00000000000000000606064F4F4FE8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000000000080808737373E5E5E5FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000111111A0A0A0F6F6F6FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF202020AAAAAAFDFDFD
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2
              C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
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
            TabOrder = 0
            OnClick = ToRightBTNClick
          end
          object ToLeftBTN: TBitBtn
            Left = 49
            Top = 216
            Width = 39
            Height = 37
            Cancel = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
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
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2C2C2FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDACACAC202020FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6A0A0A011
              1111000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFEFEFEE8E8E8AAAAAAFFFFFFFFFFFFFFFFFFFFFFFFE5E5
              E5717171080808000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9ADADAD4D4D4DB9B9B9FFFFFFFFFFFF
              FFFFFFE8E8E84E4E4E060606000000000000000000FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBB7B7B7424242111111515151F0
              F0F0FFFFFFFDFDFDD5D5D5303030000000000000000000000000000000242424
              5E5E5E8F8F8FB3B3B3C6C6C6CACACABEBEBE9F9F9F6868682323230101010000
              00191919BABABAFFFFFFF6F6F6AAAAAA25252500000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000A0A0A939393FCFCFCFFFFFF9393931414140101010000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000C0C0C999999FAFAFAFFFFFFFFFFFF434343141414
              0101010000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000050505262626A3A3A3FCFCFCFFFFFFFFFFFFFF
              FFFFE5E5E5ACACAC252525000000000000000000000000000000000000000000
              0000000000000000000000000000000909093A3A3A818181D7D7D7FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDD7D7D732323200000000000000000000
              00000000000606060B0B0B1B1B1B3636365C5C5C8F8F8FCFCFCFE8E8E8FCFCFC
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E94F4F
              4F060606000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFE5E5E5737373080808000000000000FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6A0A0A0111111000000FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDAB
              ABAB202020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
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
            OnClick = ToLeftBTNClick
          end
        end
        object RzGroupBox2: TRzGroupBox
          Left = 519
          Top = 18
          Width = 391
          Height = 645
          Align = alLeft
          Caption = #922#945#964#940#955#959#947#959#962
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          ExplicitHeight = 545
          object AllPersonsGRD: TwwDBGrid
            Left = 1
            Top = 57
            Width = 389
            Height = 587
            Selected.Strings = (
              'SERIAL_NUMBER'#9'10'#9'A/A'
              'LAST_NAME'#9'21'#9#917#960#943#952#949#964#959
              'FIRST_NAME'#9'10'#9#908#957#959#956#945
              'NATIONAL_ID'#9'13'#9#932#945#965#964#972#964#951#964#945)
            IniAttributes.Delimiter = ';;'
            IniAttributes.UnicodeIniFile = False
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alClient
            BorderStyle = bsNone
            Color = clBtnFace
            DataSource = NonAttendSRC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyOptions = []
            Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleAlignment = taLeftJustify
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'Arial'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = True
            OnDblClick = AllPersonsGRDDblClick
            OnKeyDown = AllPersonsGRDKeyDown
            ExplicitHeight = 487
          end
          object RzSizePanel1: TRzSizePanel
            Left = 1
            Top = 15
            Width = 389
            Height = 42
            Align = alTop
            TabOrder = 1
            object SearchPersonFLD: TwwIncrementalSearch
              Left = 8
              Top = 7
              Width = 128
              Height = 22
              DataSource = NonAttendSRC
              SearchField = 'last_name'
              ShowMatchText = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnKeyDown = SearchPersonFLDKeyDown
            end
          end
        end
      end
      object CostTS: TRzTabSheet
        OnShow = CostTSShow
        Caption = #922#972#963#964#959#962
        ExplicitHeight = 563
        object RzPanel10: TRzPanel
          Left = 0
          Top = 0
          Width = 915
          Height = 25
          Align = alTop
          BorderOuter = fsNone
          TabOrder = 0
        end
        object GroupBox3: TGroupBox
          Left = 0
          Top = 25
          Width = 593
          Height = 638
          Align = alLeft
          Caption = #922#972#963#964#959#962
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          ExplicitHeight = 538
          object RzPanel11: TRzPanel
            Left = 2
            Top = 16
            Width = 589
            Height = 33
            Align = alTop
            BorderOuter = fsNone
            TabOrder = 0
            object wwDBNavigator3: TwwDBNavigator
              Left = 0
              Top = 0
              Width = 175
              Height = 33
              DataSource = SeminarCostItemSRC
              RepeatInterval.InitialDelay = 500
              RepeatInterval.Interval = 100
              Align = alLeft
              object wwNavButton8: TwwNavButton
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
              object wwNavButton9: TwwNavButton
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
                Enabled = False
                DisabledTextColors.ShadeColor = clGray
                DisabledTextColors.HighlightColor = clBtnHighlight
                Index = 1
                Style = nbsNext
              end
              object wwNavButton10: TwwNavButton
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
              object wwNavButton11: TwwNavButton
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
                Enabled = False
                DisabledTextColors.ShadeColor = clGray
                DisabledTextColors.HighlightColor = clBtnHighlight
                Index = 3
                Style = nbsDelete
              end
              object wwNavButton12: TwwNavButton
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
              object wwNavButton13: TwwNavButton
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
              object wwNavButton14: TwwNavButton
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
          object CostGRD: TwwDBGrid
            Left = 2
            Top = 49
            Width = 589
            Height = 587
            ControlType.Strings = (
              'FK_COST_ITEM;CustomEdit;CostTypeFLD;T')
            Selected.Strings = (
              'SERIAL_NUMBER'#9'10'#9'A/A'#9#9
              'FK_COST_ITEM'#9'10'#9#932#973#960#959#962' '#922#972#963#964#959#965#962#9#9
              'NUMBER_OF_ITEMS'#9'15'#9#913#961#953#952#956#972#962' '#924#959#957#940#948#969#957#9#9
              'AMOUNT_PER_ITEM'#9'14'#9#922#972#963#964#959#962'/'#924#959#957#940#948#945#9#9
              'TotalAmnt'#9'10'#9#931#973#957#959#955#959#9#9)
            IniAttributes.Delimiter = ';;'
            IniAttributes.UnicodeIniFile = False
            TitleColor = clBtnFace
            FixedCols = 1
            ShowHorzScrollBar = True
            Align = alClient
            DataSource = SeminarCostItemSRC
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
            TabOrder = 1
            TitleAlignment = taLeftJustify
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
            OnUpdateFooter = CostGRDUpdateFooter
            StyleElements = [seFont, seClient]
            ExplicitHeight = 487
            object CostTypeFLD: TwwDBLookupCombo
              Left = 183
              Top = 88
              Width = 88
              Height = 22
              DropDownAlignment = taLeftJustify
              Selected.Strings = (
                'COST_NAME'#9'20'#9'COST_NAME'#9'F'
                'AMOUNT'#9'10'#9'AMOUNT'#9'F'#9)
              DataField = 'FK_COST_ITEM'
              DataSource = SeminarCostItemSRC
              LookupTable = CostItemTBL
              LookupField = 'SERIAL_NUMBER'
              Options = [loFixedDropDownHeight]
              TabOrder = 0
              AutoDropDown = False
              ShowButton = True
              PreciseEditRegion = False
              AllowClearKey = False
              OnDropDown = CostTypeFLDDropDown
              OnCloseUp = CostTypeFLDCloseUp
            end
          end
        end
      end
      object ReminderTS: TRzTabSheet
        OnShow = ReminderTSShow
        Caption = #917#961#947#945#963#943#949#962
        ExplicitHeight = 563
        object GroupBox4: TGroupBox
          Left = 0
          Top = 25
          Width = 915
          Height = 638
          Align = alClient
          Caption = #933#960#949#957#952#965#956#943#963#949#953#962
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          ExplicitHeight = 538
          object RzPanel12: TRzPanel
            Left = 1
            Top = 15
            Width = 913
            Height = 10
            Align = alTop
            BorderOuter = fsNone
            TabOrder = 0
          end
          object wwDBGrid3: TwwDBGrid
            Left = 1
            Top = 25
            Width = 592
            Height = 612
            ControlType.Strings = (
              'AFTER_OR_BEFORE;CustomEdit;AfterFLD;F'
              'DAYS_OR_MONTHS;CustomEdit;NamePersonFLD;F'
              'START_OR_END;CustomEdit;StartEndLD;F')
            Selected.Strings = (
              'SERIAL_NUMBER'#9'3'#9'A/A'
              'DESCRIPTION'#9'18'#9#928#949#961#953#947#961#945#966#942
              'NUMBER_OF_DAYS_MONTHS'#9'5'#9#931#949
              'DAYS_OR_MONTHS'#9'10'#9#919#956#941#961#949#962'/'#924#942#957#949#962
              'AFTER_OR_BEFORE'#9'8'#9#928#961#953#957'/'#924#949#964#940
              'START_OR_END'#9'11'#9#913#960#972' '
              'DATE_TARGETED'#9'12'#9#923#942#958#951)
            IniAttributes.Delimiter = ';;'
            IniAttributes.UnicodeIniFile = False
            TitleColor = clBtnFace
            FixedCols = 1
            ShowHorzScrollBar = True
            Align = alLeft
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
            ExplicitHeight = 512
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
              Sorted = False
              TabOrder = 2
              UnboundDataType = wwDefault
            end
          end
        end
        object GroupBox5: TGroupBox
          Left = 607
          Top = 40
          Width = 338
          Height = 482
          Caption = #928#955#951#961#959#966#959#961#943#949#962
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object Label14: TLabel
            Left = 35
            Top = 102
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
          object Label15: TLabel
            Left = 72
            Top = 77
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
            Left = 99
            Top = 73
            Width = 75
            Height = 20
            Alignment = taRightJustify
            BorderOuter = fsFlat
            BorderWidth = 1
            DataField = 'SERIAL_NUMBER'
            DataSource = SeminarReminderSRC
          end
          object Label17: TLabel
            Left = 50
            Top = 127
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
          object Label16: TLabel
            Left = 32
            Top = 205
            Width = 63
            Height = 14
            Alignment = taRightJustify
            Caption = #919#956#949#961#959#956#951#957#943#945
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 10
            Top = 241
            Width = 81
            Height = 14
            Caption = #927#955#959#954#955#951#961#974#952#951#954#949
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object REminderDescFLD: TwwDBEdit
            Left = 99
            Top = 99
            Width = 219
            Height = 22
            DataField = 'DESCRIPTION'
            DataSource = SeminarReminderSRC
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object RzDBRichEdit2: TRzDBRichEdit
            Left = 99
            Top = 127
            Width = 219
            Height = 49
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
          object Date1FLD: TwwDBDateTimePicker
            Left = 101
            Top = 202
            Width = 121
            Height = 22
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'Tahoma'
            CalendarAttributes.Font.Style = []
            CalendarAttributes.PopupYearOptions.StartYear = 2017
            DataField = 'DATE_TARGETED'
            DataSource = SeminarReminderSRC
            Epoch = 1950
            ShowButton = True
            TabOrder = 2
          end
          object RzDBCheckBox1: TRzDBCheckBox
            Left = 96
            Top = 240
            Width = 19
            Height = 15
            DataField = 'IS_COMPLETED'
            DataSource = SeminarReminderSRC
            ReadOnly = True
            ValueChecked = 'Y'
            ValueUnchecked = 'N'
            Alignment = taLeftJustify
            TabOrder = 3
          end
          object RzPanel13: TRzPanel
            Left = 2
            Top = 16
            Width = 334
            Height = 39
            Align = alTop
            BorderOuter = fsFlatRounded
            BorderSides = [sdRight, sdBottom]
            TabOrder = 4
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
              object wwNavButton15: TwwNavButton
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
              object wwNavButton16: TwwNavButton
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
              object wwNavButton17: TwwNavButton
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
                Enabled = False
                DisabledTextColors.ShadeColor = clGray
                DisabledTextColors.HighlightColor = clBtnHighlight
                Index = 2
                Style = nbsNext
              end
              object wwNavButton18: TwwNavButton
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
                Enabled = False
                DisabledTextColors.ShadeColor = clGray
                DisabledTextColors.HighlightColor = clBtnHighlight
                Index = 3
                Style = nbsLast
              end
              object wwNavButton19: TwwNavButton
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
                OnClick = wwNavButton19Click
                Index = 4
                Style = nbsInsert
              end
              object wwNavButton20: TwwNavButton
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
                Enabled = False
                DisabledTextColors.ShadeColor = clGray
                DisabledTextColors.HighlightColor = clBtnHighlight
                Index = 5
                Style = nbsDelete
              end
              object wwNavButton21: TwwNavButton
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
              object wwNavButton22: TwwNavButton
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
        end
        object Button1: TButton
          Left = 41
          Top = 432
          Width = 75
          Height = 25
          Caption = 'Button1'
          TabOrder = 2
          Visible = False
        end
        object RzPanel14: TRzPanel
          Left = 0
          Top = 0
          Width = 915
          Height = 25
          Align = alTop
          BorderOuter = fsNone
          TabOrder = 3
        end
      end
      object CertificationTS: TRzTabSheet
        OnShow = CertificationTSShow
        Caption = #928#959#953#963#964#959#960#959#953#951#964#953#954#940
        OnExit = CertificationTSExit
        ExplicitHeight = 563
        object PictureGRP: TRzGroupBox
          Left = 24
          Top = 102
          Width = 1002
          Height = 558
          Caption = #928#955#951#961#959#966#959#961#943#949#962
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnMouseDown = PICTURE_TOP_L1MouseDown
          object SelTopLeftBTN: TRzBitBtn
            Left = 21
            Top = 100
            Width = 121
            Height = 37
            Caption = 'Select Picture'
            DoubleBuffered = True
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentDoubleBuffered = False
            ParentFont = False
            TabOrder = 0
            Visible = False
            OnClick = SelTopLeftBTNClick
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
          object ClearTopLeftBTN: TRzBitBtn
            Left = 21
            Top = 143
            Width = 121
            Height = 37
            Caption = 'Clear Picture'
            DoubleBuffered = True
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentDoubleBuffered = False
            ParentFont = False
            TabOrder = 1
            Visible = False
            OnClick = ClearTopLeftBTNClick
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
          object TopFLD: TwwDBRichEdit
            Left = 226
            Top = 21
            Width = 600
            Height = 52
            AutoURLDetect = False
            DataField = 'LINE_A1'
            DataSource = SeminarPictureSRC
            Enabled = False
            Font.Charset = GREEK_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            GutterWidth = 3
            HideSelection = False
            ParentFont = False
            PrintJobName = 'Safe_CRM - RAD Studio 10.2 - V_Seminar'
            TabOrder = 2
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
              7F0000007B5C727466315C616E73695C616E7369637067313235335C64656666
              305C6465666C616E67313033327B5C666F6E7474626C7B5C66305C666E696C5C
              6663686172736574313631205461686F6D613B7D7D0D0A5C766965776B696E64
              345C7563315C706172645C66305C6673313820546F70464C445C7061720D0A7D
              0D0A00}
          end
          object MiddleFLD: TwwDBRichEdit
            Left = 229
            Top = 197
            Width = 599
            Height = 140
            AutoURLDetect = False
            DataField = 'LINE_A2'
            DataSource = SeminarPictureSRC
            Enabled = False
            Font.Charset = GREEK_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            GutterWidth = 3
            HideSelection = False
            ParentFont = False
            Title = 'PICTURE_TOP_L1'
            PrintJobName = 'Safe_CRM - RAD Studio 10.2 - V_Seminar'
            TabOrder = 3
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
              820000007B5C727466315C616E73695C616E7369637067313235335C64656666
              305C6465666C616E67313033327B5C666F6E7474626C7B5C66305C666E696C5C
              6663686172736574313631205461686F6D613B7D7D0D0A5C766965776B696E64
              345C7563315C706172645C66305C66733138204D6964646C65464C445C706172
              0D0A7D0D0A00}
          end
          object CertDirectorFLD: TwwDBRichEdit
            Left = 620
            Top = 352
            Width = 208
            Height = 84
            AutoURLDetect = False
            DataField = 'LINE_B2'
            DataSource = SeminarPictureSRC
            Enabled = False
            Font.Charset = GREEK_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            GutterWidth = 3
            HideSelection = False
            ParentFont = False
            PrintJobName = 'Safe_CRM - RAD Studio 10.2 - V_Seminar'
            TabOrder = 4
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
              880000007B5C727466315C616E73695C616E7369637067313235335C64656666
              305C6465666C616E67313033327B5C666F6E7474626C7B5C66305C666E696C5C
              6663686172736574313631205461686F6D613B7D7D0D0A5C766965776B696E64
              345C7563315C706172645C66305C6673313820436572744469726563746F7246
              4C445C7061720D0A7D0D0A00}
          end
          object CertInstructorFLD: TwwDBRichEdit
            Left = 228
            Top = 349
            Width = 208
            Height = 84
            AutoURLDetect = False
            DataField = 'LINE_B1'
            DataSource = SeminarPictureSRC
            Enabled = False
            Font.Charset = GREEK_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            GutterWidth = 3
            HideSelection = False
            ParentFont = False
            PrintJobName = 'Safe_CRM - RAD Studio 10.2 - V_Seminar'
            TabOrder = 5
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
              8A0000007B5C727466315C616E73695C616E7369637067313235335C64656666
              305C6465666C616E67313033327B5C666F6E7474626C7B5C66305C666E696C5C
              6663686172736574313631205461686F6D613B7D7D0D0A5C766965776B696E64
              345C7563315C706172645C66305C667331382043657274496E7374727563746F
              72464C445C7061720D0A7D0D0A00}
          end
          object BottomFLD: TwwDBRichEdit
            Left = 229
            Top = 476
            Width = 597
            Height = 42
            AutoURLDetect = False
            DataField = 'LINE_B3'
            DataSource = SeminarPictureSRC
            Enabled = False
            Font.Charset = GREEK_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            GutterWidth = 3
            HideSelection = False
            ParentFont = False
            PrintJobName = 'Safe_CRM - RAD Studio 10.2 - V_Seminar'
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
              820000007B5C727466315C616E73695C616E7369637067313235335C64656666
              305C6465666C616E67313033327B5C666F6E7474626C7B5C66305C666E696C5C
              6663686172736574313631205461686F6D613B7D7D0D0A5C766965776B696E64
              345C7563315C706172645C66305C6673313820426F74746F6D464C445C706172
              0D0A7D0D0A00}
          end
          object BottomLeftFLD: TwwDBRichEdit
            Left = 47
            Top = 353
            Width = 146
            Height = 80
            AutoURLDetect = False
            DataField = 'LINE_C1'
            DataSource = SeminarPictureSRC
            Enabled = False
            Font.Charset = GREEK_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            GutterWidth = 3
            HideSelection = False
            ParentFont = False
            PrintJobName = 'Safe_CRM - RAD Studio 10.2 - V_Seminar'
            TabOrder = 7
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
              345C7563315C706172645C66305C6673313820426F74746F6D4C656674464C44
              5C7061720D0A7D0D0A00}
          end
          object RzPanel15: TRzPanel
            Left = 403
            Top = 79
            Width = 82
            Height = 79
            BorderOuter = fsGroove
            Enabled = False
            TabOrder = 8
            object PICTURE_TOP_L1: TImage
              Left = 2
              Top = 2
              Width = 78
              Height = 75
              ParentCustomHint = False
              Align = alClient
              Center = True
              Enabled = False
              Proportional = True
              Stretch = True
              OnDblClick = PICTURE_TOP_L1DblClick
              OnMouseDown = PICTURE_TOP_L1MouseDown
              ExplicitLeft = 0
              ExplicitTop = 4
            end
          end
          object RzPanel16: TRzPanel
            Left = 545
            Top = 79
            Width = 82
            Height = 79
            BorderOuter = fsGroove
            Enabled = False
            TabOrder = 9
            object PICTURE_TOP_R1: TImage
              Left = 2
              Top = 2
              Width = 78
              Height = 75
              ParentCustomHint = False
              Align = alClient
              Center = True
              Enabled = False
              Proportional = True
              Stretch = True
              OnDblClick = PICTURE_TOP_L1DblClick
              OnMouseDown = PICTURE_TOP_L1MouseDown
              ExplicitTop = 0
            end
          end
          object RzPanel17: TRzPanel
            Left = 47
            Top = 437
            Width = 82
            Height = 79
            BorderOuter = fsGroove
            Enabled = False
            TabOrder = 10
            object PICTURE_BOT_L1: TImage
              Left = 2
              Top = 2
              Width = 78
              Height = 75
              ParentCustomHint = False
              Align = alClient
              Center = True
              Enabled = False
              Proportional = True
              Stretch = True
              OnDblClick = PICTURE_TOP_L1DblClick
              OnMouseDown = PICTURE_TOP_L1MouseDown
              ExplicitLeft = 14
              ExplicitTop = 4
            end
          end
          object RzPanel18: TRzPanel
            Left = 864
            Top = 440
            Width = 82
            Height = 79
            BorderOuter = fsGroove
            Enabled = False
            TabOrder = 11
            object PICTURE_BOT_R1: TImage
              Left = 2
              Top = 2
              Width = 78
              Height = 75
              ParentCustomHint = False
              Align = alClient
              Center = True
              Enabled = False
              Proportional = True
              Stretch = True
              OnDblClick = PICTURE_TOP_L1DblClick
              OnMouseDown = PICTURE_TOP_L1MouseDown
              ExplicitLeft = 10
              ExplicitTop = 4
            end
          end
          object wwDBEdit9: TwwDBEdit
            Left = 516
            Top = 79
            Width = 25
            Height = 22
            DataField = 'TR_Y'
            DataSource = SeminarPictureSRC
            Enabled = False
            TabOrder = 12
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit8: TwwDBEdit
            Left = 547
            Top = 162
            Width = 25
            Height = 22
            DataField = 'TR_X'
            DataSource = SeminarPictureSRC
            Enabled = False
            TabOrder = 13
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit2: TwwDBEdit
            Left = 372
            Top = 79
            Width = 25
            Height = 22
            DataField = 'TL_Y'
            DataSource = SeminarPictureSRC
            Enabled = False
            TabOrder = 14
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit7: TwwDBEdit
            Left = 405
            Top = 164
            Width = 25
            Height = 22
            DataField = 'TL_X'
            DataSource = SeminarPictureSRC
            Enabled = False
            TabOrder = 15
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit10: TwwDBEdit
            Left = 16
            Top = 442
            Width = 25
            Height = 22
            DataField = 'BL_Y'
            DataSource = SeminarPictureSRC
            Enabled = False
            TabOrder = 16
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit11: TwwDBEdit
            Left = 50
            Top = 520
            Width = 25
            Height = 22
            DataField = 'BL_X'
            DataSource = SeminarPictureSRC
            Enabled = False
            TabOrder = 17
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit12: TwwDBEdit
            Left = 833
            Top = 442
            Width = 25
            Height = 22
            DisableThemes = True
            DataField = 'BR_Y'
            DataSource = SeminarPictureSRC
            Enabled = False
            TabOrder = 18
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit13: TwwDBEdit
            Left = 866
            Top = 523
            Width = 25
            Height = 22
            DataField = 'BR_X'
            DataSource = SeminarPictureSRC
            Enabled = False
            TabOrder = 19
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
        end
        object LanguageRGP: TwwRadioGroup
          Left = 24
          Top = 16
          Width = 105
          Height = 65
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
        object certificatesHelpRE: TwwDBRichEdit
          Left = 339
          Top = 3
          Width = 121
          Height = 49
          AutoURLDetect = False
          Font.Charset = GREEK_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          GutterWidth = 3
          HideSelection = False
          ParentFont = False
          PrintJobName = 'TariffsProject - RAD Studio 10.2 - LN_ListDutyEntries2 [Built]'
          ReadOnly = True
          TabOrder = 2
          Visible = False
          EditorOptions = [reoShowPrint, reoShowPrintPreview, reoShowPageSetup, reoShowFormatBar, reoShowToolBar, reoShowStatusBar, reoShowHints, reoShowRuler, reoShowInsertObject, reoCloseOnEscape, reoFlatButtons, reoShowSpellCheck, reoShowMainMenuIcons, reoShowZoomCombo]
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
            291400007B5C727466315C616E73695C616E7369637067313235335C64656666
            305C6465666C616E67313033327B5C666F6E7474626C7B5C66305C666E696C5C
            666368617273657430205461686F6D613B7D7B5C66315C666E696C5C66636861
            72736574313631205461686F6D613B7D7B5C66325C6673776973735C66636861
            727365743020417269616C3B7D7B5C66335C666E696C5C666368617273657432
            2053796D626F6C3B7D7D0D0A5C766965776B696E64345C7563315C706172645C
            6C616E67313033335C625C66305C6673323420485C6C616E67313033325C6631
            20205C2765355C2765615C2766345C2766645C2766305C2766395C2766335C27
            6537205C2766345C2766395C276564205C2764305C2765395C2766335C276634
            5C2765665C2766305C2765665C2765395C2765375C2766345C2765395C276561
            5C2766655C2765645C6C616E67313033335C663020205C6C616E67313033325C
            66315C2766375C2766315C2765375C2766335C2765395C2765635C2766305C27
            65665C2765395C2765355C276466205C6C616E67313033335C663020544F4B45
            4E535C6C616E67313033325C663120205C2766345C276531205C2765665C2766
            305C2765665C2764665C276531205C2765315C2765645C2766345C2765395C27
            65615C2765315C2765385C2765395C2766335C2766345C2765665C2766645C27
            65645C2766345C276535205C2765635C276535205C2766345C2765395C276563
            5C2764645C276632205C2765315C2766305C276663205C2766345C276566205C
            2764305C2765395C2766335C2766345C2765665C2766305C2765665C2765395C
            2765375C2766345C2765395C2765615C2766635C6C616E67313033335C663020
            205C6C616E67313033325C66315C2766305C2765665C276635205C2765355C27
            65615C2766345C2766355C2766305C2766655C2765645C2765355C2766345C27
            65315C2765395C6C616E67313033335C663020205C7061720D0A5C62305C6632
            5C667331365C7061720D0A5C7061720D0A5C6C616E67313033325C66315C6673
            32345C2764345C276531205C2766305C2765395C276566205C2765615C276463
            5C2766345C276639205C6C616E67313033335C663020546F6B656E73205C6C61
            6E67313033325C66315C2765385C276531205C2765315C2765645C2766345C27
            65395C2765615C2765315C2766345C2765315C2766335C2766345C2765315C27
            65385C2765665C2766645C276564205C2765315C2766355C2766345C2766635C
            2765635C2765315C2766345C276531205C2765635C276535205C2766345C2765
            395C276632205C2766345C2765395C2765635C2764645C276632205C2766305C
            2765665C276635205C2766365C2765315C2764665C2765645C2765665C276564
            5C2766345C2765315C276539205C2765345C2764665C2766305C2765625C2765
            315C6C616E67313033335C66305C7061720D0A5C706172647B5C706E74657874
            5C66335C2742375C7461627D7B5C2A5C706E5C706E6C766C626C745C706E6633
            5C706E696E64656E74307B5C706E747874625C2742377D7D5C66692D3732305C
            6C69373230205B4E616D655D205C6C616E67313033325C663120202D205C2766
            635C2765645C2765665C2765635C276531205C2763355C2765615C2766305C27
            65315C2765395C2765345C2765355C2766355C2766635C2765635C2765355C27
            65645C2765665C2766355C6C616E67313033335C66305C7061720D0A5C706172
            647B5C706E746578745C66335C2742375C7461627D7B5C2A5C706E5C706E6C76
            6C626C745C706E66335C706E696E64656E74307B5C706E747874625C2742377D
            7D5C66692D3730355C6C69373035205B49645D205C6C616E67313033325C6631
            5C746162202020202D205C2764345C2765315C2766355C2766345C2766635C27
            66345C2765375C2766345C276531205C2765355C2765615C2766305C2765315C
            2765395C2765345C2765355C2766355C2766635C2765635C2765355C2765645C
            2765665C2766355C6C616E67313033335C66305C7061720D0A5C706172647B5C
            706E746578745C66335C2742375C7461627D7B5C2A5C706E5C706E6C766C626C
            745C706E66335C706E696E64656E74307B5C706E747874625C2742377D7D5C66
            692D3732305C6C69373230205B446174655D205C6C616E67313033325C663120
            20205C6C616E67313033335C663020205C6C616E67313033325C6631202D2020
            5C2763375C2765635C2765355C2766315C2765665C2765635C2765375C276564
            5C2764665C276531205C2762385C2765615C2765345C2765665C2766335C2765
            375C276632205C2766345C2765665C276635205C2766305C2765395C2766335C
            2766345C2765665C2766305C2765665C2765395C2765375C2766345C2765395C
            2765615C2765665C2766645C6C616E67313033335C663020205C7061720D0A7B
            5C706E746578745C66335C2742375C7461627D5B5345585D20202020202D205C
            6C616E67313033325C66315C2764365C2766645C2765625C276566205C276535
            5C2765615C2766305C2765315C2765395C2765345C2765355C2766355C276663
            5C2765635C2765355C2765645C2765665C2766355C6C616E67313033335C6630
            5C7061720D0A5C6C616E67313033325C66317B5C706E746578745C66335C2742
            375C7461627D5B5C6C616E67313033335C663020486F7572735C6C616E673130
            33325C6631205D5C6C616E67313033335C66302020202D205C6C616E67313033
            325C66315C2762665C2766315C2765355C276632205C2766345C2765665C2766
            35205C2764335C2765355C2765635C2765395C2765645C2765315C2766315C27
            64665C2765665C2766355C6C616E67313033335C66305C7061720D0A7B5C706E
            746578745C66335C2742375C7461627D5B416E61645D2020202D205C6C616E67
            313033325C66315C2763315C2766315C2765395C2765385C2765635C2766635C
            276632205C2763315C2763645C2763315C2763345C6C616E67313033335C6630
            5C7061720D0A5C706172645C7061720D0A5C6C616E67313033325C66315C2763
            665C276539205C2765315C2765645C2766345C2764665C2766335C2766345C27
            65665C2765395C2766375C2765355C276632205C2766345C2765395C2765635C
            2764645C276632205C2766345C2766395C276564205C6C616E67313033335C66
            3020546F6B656E73205C6C616E67313033325C66315C2765335C2766315C2764
            635C2766365C2765665C2765645C2766345C2765315C276539205C2765315C27
            65645C2765315C2765625C2766635C2765335C2766395C276632205C2765635C
            276535205C2765615C2765355C2766365C2765315C2765625C2765315C276466
            5C276531205C276465205C2765635C2765395C2765615C2766315C276463205C
            2765335C2766315C2764635C2765635C2765635C2765315C2766345C27653120
            5C2765315C2765615C2765665C2765625C2765665C2766355C2765385C276665
            5C2765645C2766345C2765315C276632205C2766345C2765665C2766355C2766
            32205C2766305C2765395C276566205C2765615C2764635C2766345C27663920
            5C2765615C2765315C2765645C2766635C2765645C2765355C2766325C706172
            0D0A5C7061720D0A5C2763355C2764635C276564205C2766345C276566205C6C
            616E67313033335C663020746F6B656E205C6C616E67313033325C66315C2765
            335C2766315C2765315C2766365C2766345C2765355C276466205C7061720D0A
            5C2765635C276535205C2766635C2765625C276531205C2765615C2765355C27
            66365C2765315C2765625C2765315C2764665C276531205C2766345C2766635C
            2766345C276535205C2765615C2765315C276539205C2766345C276566205C27
            65315C2765645C2766345C2764665C2766335C2766345C2765665C2765395C27
            66375C276566205C2766305C2765355C2765345C2764665C276566205C276538
            5C276531205C2765335C2766315C2765315C2766365C2766345C2764645C2765
            39205C2765635C276535205C2765615C2765355C2766365C2765315C2765625C
            2765315C2764665C2765315C7061720D0A5C2765635C276535205C2766635C27
            65625C276531205C2765635C2765395C2765615C2766315C276463205C276634
            5C2766635C2766345C276535205C2766345C276566205C2765315C2765645C27
            66345C2764665C2766335C2766345C2765665C2765395C2766375C276566205C
            2766305C2765355C2765345C2764665C276566205C2765385C276531205C2765
            335C2766315C2765315C2766365C2766345C2765355C276466205C2765635C27
            6535205C2765635C2765395C2765615C2766315C2764635C7061720D0A5C2765
            635C276535205C2765635C2765355C2766315C2765395C2765615C276463205C
            2765615C2765355C2766365C2765315C2765625C2765315C2764665C27653120
            5C2765615C2765315C276539205C2765635C2765355C2766315C2765395C2765
            615C276463205C2765635C2765395C2765615C2766315C276463205C2766345C
            2766635C2766345C276535205C2765385C276531205C2765335C2766315C2765
            315C2766365C2766345C2765355C276466205C2766635C2766305C2766395C27
            6632205C2765355C2764665C2765645C2765315C2765395C7061720D0A5C7061
            720D0A5C2763335C2765395C276531205C2766305C2765315C2766315C276463
            5C2765345C2765355C2765395C2765335C2765635C276531205C2765315C2765
            64205C2766345C276566205C2766635C2765645C2765665C2765635C27653120
            5C2766345C2765665C276635205C2765355C2765615C2766305C2765315C2765
            395C2765345C2765355C2766355C2766635C2765635C2765355C2765645C2765
            665C276635205C2765355C2764665C2765645C2765315C276539205C2763335C
            2765395C2766655C2766315C2765335C2765665C276632205C2763335C276535
            5C2766395C2766315C2765335C2764665C2765665C276635205C2766345C2766
            635C2766345C2765355C7061720D0A5C6C616E67313033335C6630205B5C6C61
            6E67313033325C66315C2763645C2763315C2763635C2763355C6C616E673130
            33335C6630205D5C6C616E67313033325C663120203D205C2763335C2763395C
            2764395C2764315C2763335C2763665C276433205C2763335C2763355C276439
            5C2763335C2763395C2763665C2764355C7061720D0A5C6C616E67313033335C
            6630205B6E616D655D5C6C616E67313033325C663120205C6C616E6731303333
            5C663020205C6C616E67313033325C6631203D5C6C616E67313033335C663020
            205C6C616E67313033325C66315C2765335C2765395C2766655C2766315C2765
            335C2765665C276632205C2765335C2765355C2766395C2766315C2765335C27
            64665C2765665C2766355C7061720D0A5C6C616E67313033335C6630205B5C6C
            616E67313033325C66315C2763645C6C616E67313033335C663020616D655D5C
            6C616E67313033325C663120205C6C616E67313033335C663020205C6C616E67
            313033325C6631203D205C2763335C2765395C2766655C2766315C2765335C27
            65665C276632205C2763335C2765355C2766395C2766315C2765335C2764665C
            2765665C2766355C7061720D0A5C7061720D0A5C625C2763355C2765395C2765
            615C2766635C2765645C2765355C2766325C7061720D0A5C706172647B5C706E
            746578745C66335C2742375C7461627D7B5C2A5C706E5C706E6C766C626C745C
            706E66335C706E696E64656E74307B5C706E747874625C2742377D7D5C66692D
            3732305C6C693732305C6C616E67313033335C62305C663020446F75626C6520
            436C69636B205C6C616E67313033325C663120205C2766305C2764635C276564
            5C276639205C2766335C2766345C2765375C276564205C2765355C2765395C27
            65615C2766635C2765645C276531205C6C616E67313033335C6630202D205C6C
            616E67313033325C66315C2763355C2766305C2765395C2765625C2765665C27
            65335C276465205C2763355C2765395C2765615C2766635C2765645C2765355C
            2766325C7061720D0A5C6C616E67313033335C66307B5C706E746578745C6633
            5C2742375C7461627D436F6E74726F6C20436C69636B205C6C616E6731303332
            5C66315C2766305C2764635C2765645C276639205C2766335C2766345C276537
            5C276564205C2765355C2765395C2765615C2766635C2765645C276531202D20
            5C2763345C2765395C2765315C2765335C2766315C2765315C2766365C276465
            205C2763355C2765395C2765615C2766635C2765645C2765315C276632205C70
            61720D0A5C706172645C625C7061720D0A5C2763385C2764645C2766335C2765
            37205C2763355C2765395C2765615C2766635C2765645C2765315C2766325C62
            305C7061720D0A5C276337205C2765385C2764645C2766335C276537205C2765
            615C2765315C2765385C276535205C2765355C2765395C2765615C2766635C27
            65645C2765315C276632205C2765615C2765315C2765385C2765665C2766315C
            2764665C2765365C2765355C2766345C2765315C276539205C2766335C276535
            205C6C616E67313033335C6630206D6D205C6C616E67313033325C66315C2766
            305C2765665C276635205C2765315C2765645C2766345C2765395C2766335C27
            66345C2765665C2765395C2766375C2765665C2766645C276564205C2766335C
            2766345C2765665C276564205C2764355C6C616E67313033335C663020617869
            73205C6C616E67313033325C66315C2765615C2765315C276539205C27643720
            5C6C616E67313033335C663020617869205C6C616E67313033325C66315C2766
            335C2766345C276531205C2766345C2765355C2766345C2766315C2765315C27
            65335C2766395C2765645C2764635C2765615C2765395C276531205C2765345C
            2764665C2766305C2765625C276531205C2765315C2766305C276663205C2766
            345C2765375C276564205C2765355C2765395C2765615C2766635C2765645C27
            65312E5C7061720D0A7D0D0A00}
        end
      end
    end
    object Panel4: TRzPanel
      Left = 2
      Top = 691
      Width = 919
      Height = 43
      Align = alBottom
      BorderOuter = fsFlatRounded
      TabOrder = 1
      ExplicitTop = 591
      object RzPanel1: TRzPanel
        Left = 817
        Top = 2
        Width = 100
        Height = 39
        Align = alRight
        BorderOuter = fsNone
        TabOrder = 0
        object CLoseBTN: TRzBitBtn
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
          OnClick = CLoseBTNClick
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
      object AcceptBTN: TBitBtn
        Left = 11
        Top = 6
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
        OnClick = AcceptBTNClick
      end
      object CanelBTN: TBitBtn
        Left = 106
        Top = 6
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
  end
  object SeminarSRC: TDataSource
    DataSet = SeminarSQL
    OnStateChange = SeminarSRCStateChange
    Left = 296
    Top = 9
  end
  object SeminarSQL: TIBCQuery
    KeyFields = 'SERIAL_NUMBER'
    KeyGenerator = 'GEN_SEMINAR'
    SQLInsert.Strings = (
      'INSERT INTO SEMINAR'
      
        '  (SERIAL_NUMBER, ANAD_NUMBER, FK_SEMINAR, FK_INSTRUCTOR, FK_EXA' +
        'MINER, FK_VENUE, FK_COMPANY_PERSON_SERIAL, SEMINAR_NAME, DATE_ST' +
        'ARTED, DATE_COMPLETED, DURATION_DAYS, DURATION_HOURS, FEE_ACTUAL' +
        ', AMOUNT_ANAD, COMMENTS, ANAD_APPROVED, FEE_ESTIMATE, STATUS, IS' +
        '_INVOICED, IS_CERTIFICATED, MAX_CAPACITY, FEE_WITH_ANAD_SUB, HAS' +
        '_EXPIRY, EXPIRY_PERIOD, TYPE_MONO_POLY, SEM_CATEGORY)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :ANAD_NUMBER, :FK_SEMINAR, :FK_INSTRUCTOR, :F' +
        'K_EXAMINER, :FK_VENUE, :FK_COMPANY_PERSON_SERIAL, :SEMINAR_NAME,' +
        ' :DATE_STARTED, :DATE_COMPLETED, :DURATION_DAYS, :DURATION_HOURS' +
        ', :FEE_ACTUAL, :AMOUNT_ANAD, :COMMENTS, :ANAD_APPROVED, :FEE_EST' +
        'IMATE, :STATUS, :IS_INVOICED, :IS_CERTIFICATED, :MAX_CAPACITY, :' +
        'FEE_WITH_ANAD_SUB, :HAS_EXPIRY, :EXPIRY_PERIOD, :TYPE_MONO_POLY,' +
        ' :SEM_CATEGORY)')
    SQLDelete.Strings = (
      'DELETE FROM SEMINAR'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE SEMINAR'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, ANAD_NUMBER = :ANAD_NUMBER, FK' +
        '_SEMINAR = :FK_SEMINAR, FK_INSTRUCTOR = :FK_INSTRUCTOR, FK_EXAMI' +
        'NER = :FK_EXAMINER, FK_VENUE = :FK_VENUE, FK_COMPANY_PERSON_SERI' +
        'AL = :FK_COMPANY_PERSON_SERIAL, SEMINAR_NAME = :SEMINAR_NAME, DA' +
        'TE_STARTED = :DATE_STARTED, DATE_COMPLETED = :DATE_COMPLETED, DU' +
        'RATION_DAYS = :DURATION_DAYS, DURATION_HOURS = :DURATION_HOURS, ' +
        'FEE_ACTUAL = :FEE_ACTUAL, AMOUNT_ANAD = :AMOUNT_ANAD, COMMENTS =' +
        ' :COMMENTS, ANAD_APPROVED = :ANAD_APPROVED, FEE_ESTIMATE = :FEE_' +
        'ESTIMATE, STATUS = :STATUS, IS_INVOICED = :IS_INVOICED, IS_CERTI' +
        'FICATED = :IS_CERTIFICATED, MAX_CAPACITY = :MAX_CAPACITY, FEE_WI' +
        'TH_ANAD_SUB = :FEE_WITH_ANAD_SUB, HAS_EXPIRY = :HAS_EXPIRY, EXPI' +
        'RY_PERIOD = :EXPIRY_PERIOD, TYPE_MONO_POLY = :TYPE_MONO_POLY, SE' +
        'M_CATEGORY = :SEM_CATEGORY'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, ANAD_NUMBER, FK_SEMINAR, FK_INSTRUCTOR, FK' +
        '_EXAMINER, FK_VENUE, FK_COMPANY_PERSON_SERIAL, SEMINAR_NAME, DAT' +
        'E_STARTED, DATE_COMPLETED, DURATION_DAYS, DURATION_HOURS, FEE_AC' +
        'TUAL, AMOUNT_ANAD, COMMENTS, ANAD_APPROVED, FEE_ESTIMATE, STATUS' +
        ', IS_INVOICED, IS_CERTIFICATED, MAX_CAPACITY, FEE_WITH_ANAD_SUB,' +
        ' HAS_EXPIRY, EXPIRY_PERIOD, TYPE_MONO_POLY, SEM_CATEGORY FROM SE' +
        'MINAR'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM SEMINAR'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM SEMINAR'
      ''
      ') q')
    Connection = U_databaseFRM.DataConnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM'
      ' seminar '
      'where '
      ' serial_number= :SerialNumber'
      '')
    Active = True
    OnNewRecord = SeminarSQLNewRecord
    Left = 49
    Top = 213
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SerialNumber'
        Value = nil
      end>
    object SeminarSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
    end
    object SeminarSQLFK_SEMINAR: TIntegerField
      FieldName = 'FK_SEMINAR'
    end
    object SeminarSQLSEMINAR_NAME: TWideStringField
      FieldName = 'SEMINAR_NAME'
      Size = 160
    end
    object SeminarSQLFK_INSTRUCTOR: TIntegerField
      FieldName = 'FK_INSTRUCTOR'
    end
    object SeminarSQLFK_VENUE: TIntegerField
      FieldName = 'FK_VENUE'
    end
    object SeminarSQLDATE_STARTED: TDateField
      FieldName = 'DATE_STARTED'
    end
    object SeminarSQLDATE_COMPLETED: TDateField
      FieldName = 'DATE_COMPLETED'
    end
    object SeminarSQLDURATION_DAYS: TIntegerField
      FieldName = 'DURATION_DAYS'
    end
    object SeminarSQLDURATION_HOURS: TIntegerField
      FieldName = 'DURATION_HOURS'
    end
    object SeminarSQLFEE_ACTUAL: TFloatField
      FieldName = 'FEE_ACTUAL'
    end
    object SeminarSQLAMOUNT_ANAD: TFloatField
      FieldName = 'AMOUNT_ANAD'
    end
    object SeminarSQLCOMMENTS: TWideStringField
      FieldName = 'COMMENTS'
      Size = 160
    end
    object SeminarSQLANAD_APPROVED: TWideStringField
      FieldName = 'ANAD_APPROVED'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SeminarSQLFEE_ESTIMATE: TFloatField
      FieldName = 'FEE_ESTIMATE'
    end
    object SeminarSQLSTATUS: TWideStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object SeminarSQLIS_INVOICED: TWideStringField
      FieldName = 'IS_INVOICED'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SeminarSQLIS_CERTIFICATED: TWideStringField
      FieldName = 'IS_CERTIFICATED'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SeminarSQLMAX_CAPACITY: TIntegerField
      FieldName = 'MAX_CAPACITY'
      Required = True
    end
    object SeminarSQLFK_COMPANY_PERSON_SERIAL: TIntegerField
      FieldName = 'FK_COMPANY_PERSON_SERIAL'
    end
    object SeminarSQLFEE_WITH_ANAD_SUB: TFloatField
      FieldName = 'FEE_WITH_ANAD_SUB'
    end
    object SeminarSQLHAS_EXPIRY: TWideStringField
      FieldName = 'HAS_EXPIRY'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SeminarSQLEXPIRY_PERIOD: TIntegerField
      FieldName = 'EXPIRY_PERIOD'
    end
    object SeminarSQLANAD_NUMBER: TWideStringField
      FieldName = 'ANAD_NUMBER'
      Required = True
      FixedChar = True
      Size = 30
    end
    object SeminarSQLFK_EXAMINER: TIntegerField
      FieldName = 'FK_EXAMINER'
    end
    object SeminarSQLTYPE_MONO_POLY: TWideStringField
      FieldName = 'TYPE_MONO_POLY'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SeminarSQLSEM_CATEGORY: TWideStringField
      FieldName = 'SEM_CATEGORY'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object WriteTrans: TIBCTransaction
    DefaultConnection = U_databaseFRM.DataConnection
    Left = 217
    Top = 13
  end
  object ReadTrans: TIBCTransaction
    DefaultConnection = U_databaseFRM.DataConnection
    IsolationLevel = iblReadOnlyReadCommitted
    Left = 336
    Top = 1
  end
  object DbImages: TImageList
    Left = 210
    Top = 101
    Bitmap = {
      494C010110008800B80210001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000005000000001002000000000000050
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000993300009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC9966009933000099330000CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B2009999990099999900B2B2B2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC66000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      000099330000CC660000CC660000993300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      990099999900CCCCCC00CCCCCC00999999000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000993300000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00999999000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC6600009933000099330000CC9966000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990099999900B2B2B2000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC009999990000000000000000000000
      00000000000000000000000000000000000000000000CC99660099330000CC66
      000099330000CC99660000000000000000009933000099330000993300009933
      00009933000099330000993300000000000000000000B2B2B20099999900CCCC
      CC0099999900B2B2B20000000000000000009999990099999900999999009999
      9900999999009999990099999900000000000000000099330000CC660000CC66
      00009933000099330000CC660000CC660000CC66000099330000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC009999990099999900CCCCCC00CCCCCC00CCCCCC0099999900000000000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000CC99660000000000000000000000000099330000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC009999
      9900B2B2B20000000000000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC6600009933
      0000000000000000000099330000CC660000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000099999900CCCCCC009999
      9900000000000000000099999900CCCCCC00CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC009999
      9900000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000993300000000
      000000000000000000000000000099330000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000099999900999999000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000099330000CC6600009933
      0000CC99660000000000000000000000000000000000CC99660099330000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC009999
      9900B2B2B20000000000000000000000000000000000B2B2B20099999900CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      00000000000000000000000000000000000099330000CC660000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC009999990000000000000000000000000000000000CC99660099330000CC66
      000099330000CC99660000000000CC9966009933000099330000CC6600009933
      0000CC660000CC660000993300000000000000000000B2B2B20099999900CCCC
      CC0099999900B2B2B20000000000B2B2B2009999990099999900CCCCCC009999
      9900CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000CC6600009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00999999000000000000000000000000000000000099330000CC66
      0000CC660000993300009933000099330000CC660000CC66000099330000CC99
      660099330000CC6600009933000000000000000000000000000099999900CCCC
      CC00CCCCCC00999999009999990099999900CCCCCC00CCCCCC0099999900B2B2
      B20099999900CCCCCC0099999900000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC6600009933000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000009933
      000099330000CC660000CC660000CC6600009933000099330000000000000000
      0000000000009933000099330000000000000000000000000000000000009999
      990099999900CCCCCC00CCCCCC00CCCCCC009999990099999900000000000000
      0000000000009999990099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC6600009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC009999990000000000000000000000000000000000000000000000
      0000CC996600993300009933000099330000CC99660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B200999999009999990099999900B2B2B20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000993300009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000993300009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000999999009999990099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099330000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099330000CC660000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900CCCCCC00CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC6600009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC009999990099999900999999009999
      9900999999009999990099999900000000000000000099330000993300009933
      000099330000993300009933000099330000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000099999900999999009999
      990099999900999999009999990099999900CCCCCC00CCCCCC00CCCCCC00CCCC
      CC0099999900000000000000000000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC6600009933000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC6600009933000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC009999990000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC6600009933000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC6600009933000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC6600009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC009999990099999900999999009999
      9900999999009999990099999900000000000000000099330000993300009933
      000099330000993300009933000099330000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000099999900999999009999
      990099999900999999009999990099999900CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000000000
      000099330000CC660000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900CCCCCC00CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000000000000000000000000
      00000000000099330000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000993300009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000999999009999990099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC9966009933000099330000CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B2009999990099999900B2B2B2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000993300009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      000099330000CC660000CC660000993300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      990099999900CCCCCC00CCCCCC00999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC66000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC6600009933000099330000CC9966000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990099999900B2B2B2000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000993300000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00999999000000000000000000000000000000
      00000000000000000000000000000000000000000000CC99660099330000CC66
      000099330000CC99660000000000000000009933000099330000993300009933
      00009933000099330000993300000000000000000000B2B2B20099999900CCCC
      CC0099999900B2B2B20000000000000000009999990099999900999999009999
      9900999999009999990099999900000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000CC99660000000000000000000000000099330000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC009999
      9900B2B2B20000000000000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC660000CC66
      00009933000099330000CC660000CC660000CC66000099330000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC009999990099999900CCCCCC00CCCCCC00CCCCCC0099999900000000000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC009999
      9900000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC6600009933
      0000000000000000000099330000CC660000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000099999900CCCCCC009999
      9900000000000000000099999900CCCCCC00CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000CC99660000000000000000000000000000000000CC99660099330000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC009999
      9900B2B2B20000000000000000000000000000000000B2B2B20099999900CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000993300000000
      000000000000000000000000000099330000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000099999900999999000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00CCCCCC009999
      99000000000000000000000000000000000000000000CC99660099330000CC66
      000099330000CC99660000000000CC9966009933000099330000CC6600009933
      0000CC660000CC660000993300000000000000000000B2B2B20099999900CCCC
      CC0099999900B2B2B20000000000B2B2B2009999990099999900CCCCCC009999
      9900CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      00000000000000000000000000000000000099330000CC660000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC0099999900000000000000000000000000000000000000000099330000CC66
      0000CC660000993300009933000099330000CC660000CC66000099330000CC99
      660099330000CC6600009933000000000000000000000000000099999900CCCC
      CC00CCCCCC00999999009999990099999900CCCCCC00CCCCCC0099999900B2B2
      B20099999900CCCCCC0099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000CC6600009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000009933
      000099330000CC660000CC660000CC6600009933000099330000000000000000
      0000000000009933000099330000000000000000000000000000000000009999
      990099999900CCCCCC00CCCCCC00CCCCCC009999990099999900000000000000
      0000000000009999990099999900000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC6600009933000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000000000
      0000CC996600993300009933000099330000CC99660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B200999999009999990099999900B2B2B20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC6600009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000993300009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000993300009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000999999009999990099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099330000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099330000CC660000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900CCCCCC00CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC6600009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC009999990099999900999999009999
      9900999999009999990099999900000000000000000099330000993300009933
      000099330000993300009933000099330000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000099999900999999009999
      990099999900999999009999990099999900CCCCCC00CCCCCC00CCCCCC00CCCC
      CC0099999900000000000000000000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC6600009933000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC6600009933000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC009999990000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC6600009933000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC6600009933000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC6600009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC009999990099999900999999009999
      9900999999009999990099999900000000000000000099330000993300009933
      000099330000993300009933000099330000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000099999900999999009999
      990099999900999999009999990099999900CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000000000
      000099330000CC660000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900CCCCCC00CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000000000000000000000000
      00000000000099330000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000993300009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000999999009999990099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000500000000100010000000000800200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      F3FFF3FFF0FFF0FFE1FFE1FFE0FFE0FFC0FFC0FFC0FFC0FF807F807F83018301
      803F803F870187018C1F8C1F8F818F819E0F9E0F87818781FF07FF0782018201
      FF83FF83C001C001FFC3FFC3E039E039FFE3FFE3F07FF07FFFF3FFF3FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFC7FFC7FFE3FFE3FF87FF87FFE1FFE1FF07FF07FFE0FFE0F
      E001E00180078007C001C001800380038001800180018001C001C00180038003
      E001E00180078007F07FF07FFE0FFE0FF87FF87FFE1FFE1FFC7FFC7FFE3FFE3F
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      F0FFF0FFF3FFF3FFE0FFE0FFE1FFE1FFC0FFC0FFC0FFC0FF83018301807F807F
      87018701803F803F8F818F818C1F8C1F878187819E0F9E0F82018201FF07FF07
      C001C001FF83FF83E039E039FFC3FFC3F07FF07FFFE3FFE3FFFFFFFFFFF3FFF3
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFC7FFC7FFE3FFE3FF87FF87FFE1FFE1FF07FF07FFE0FFE0F
      E001E00180078007C001C001800380038001800180018001C001C00180038003
      E001E00180078007F07FF07FFE0FFE0FF87FF87FFE1FFE1FFC7FFC7FFE3FFE3F
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object AttendingSQL: TIBCQuery
    UpdatingTable = 'SEMINAR_PERSON'
    SQLInsert.Strings = (
      'INSERT INTO SEMINAR_PERSON'
      
        '  (FK_SEMINAR_SERIAL, FK_PERSON_SERIAL, ATTENDANCE_STATUS, IS_GU' +
        'EST)'
      'VALUES'
      
        '  (:FK_SEMINAR_SERIAL, :FK_PERSON_SERIAL, :ATTENDANCE_STATUS, :I' +
        'S_GUEST)')
    SQLDelete.Strings = (
      'DELETE FROM SEMINAR_PERSON'
      'WHERE'
      
        '  FK_SEMINAR_SERIAL = :Old_FK_SEMINAR_SERIAL AND FK_PERSON_SERIA' +
        'L = :Old_FK_PERSON_SERIAL')
    SQLUpdate.Strings = (
      'UPDATE SEMINAR_PERSON'
      'SET'
      
        '  FK_SEMINAR_SERIAL = :FK_SEMINAR_SERIAL, FK_PERSON_SERIAL = :FK' +
        '_PERSON_SERIAL, ATTENDANCE_STATUS = :ATTENDANCE_STATUS, IS_GUEST' +
        ' = :IS_GUEST'
      'WHERE'
      
        '  FK_SEMINAR_SERIAL = :Old_FK_SEMINAR_SERIAL AND FK_PERSON_SERIA' +
        'L = :Old_FK_PERSON_SERIAL')
    SQLRefresh.Strings = (
      
        'SELECT FK_SEMINAR_SERIAL, FK_PERSON_SERIAL, ATTENDANCE_STATUS, I' +
        'S_GUEST FROM SEMINAR_PERSON'
      'WHERE'
      
        '  FK_SEMINAR_SERIAL = :FK_SEMINAR_SERIAL AND FK_PERSON_SERIAL = ' +
        ':FK_PERSON_SERIAL')
    SQLLock.Strings = (
      'SELECT NULL FROM SEMINAR_PERSON'
      'WHERE'
      
        'FK_SEMINAR_SERIAL = :Old_FK_SEMINAR_SERIAL AND FK_PERSON_SERIAL ' +
        '= :Old_FK_PERSON_SERIAL'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM SEMINAR_PERSON'
      ''
      ') q')
    Connection = U_databaseFRM.DataConnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'select'
      
        ' pe.serial_number, pe.first_name,pe.last_name , sp.fk_seminar_se' +
        'rial, sp.fk_person_serial, sp.attendance_status,sp.IS_Guest'
      'from'
      'seminar_person   sp'
      'left outer join'
      'person pe on pe.serial_number=sp.fk_person_serial;')
    MasterFields = 'SERIAL_NUMBER'
    DetailFields = 'FK_SEMINAR_SERIAL'
    MasterSource = SeminarSRC
    Active = True
    Left = 114
    Top = 393
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object AttendingSQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'A/A'
      DisplayWidth = 8
      FieldName = 'SERIAL_NUMBER'
      ReadOnly = True
    end
    object AttendingSQLLAST_NAME: TWideStringField
      DisplayLabel = #917#960#943#952#949#964#959
      DisplayWidth = 19
      FieldName = 'LAST_NAME'
      ReadOnly = True
      FixedChar = True
      Size = 30
    end
    object AttendingSQLFIRST_NAME: TWideStringField
      DisplayLabel = #908#957#959#956#945
      DisplayWidth = 15
      FieldName = 'FIRST_NAME'
      ReadOnly = True
      FixedChar = True
      Size = 30
    end
    object AttendingSQLIS_GUEST: TWideStringField
      DisplayLabel = #917#954#964#945#954#964#959#962
      DisplayWidth = 7
      FieldName = 'IS_GUEST'
      Required = True
      FixedChar = True
      Size = 1
    end
    object AttendingSQLATTENDANCE_STATUS: TWideStringField
      DisplayLabel = 'Status'
      DisplayWidth = 8
      FieldName = 'ATTENDANCE_STATUS'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object AttendingSQLFK_SEMINAR_SERIAL: TIntegerField
      FieldName = 'FK_SEMINAR_SERIAL'
      Required = True
      Visible = False
    end
    object AttendingSQLFK_PERSON_SERIAL: TIntegerField
      FieldName = 'FK_PERSON_SERIAL'
      Required = True
      Visible = False
    end
  end
  object AttendingSRC: TDataSource
    DataSet = AttendingSQL
    OnStateChange = SeminarSRCStateChange
    Left = 64
    Top = 169
  end
  object NonAttendSQL: TIBCQuery
    UpdatingTable = 'person'
    SQLInsert.Strings = (
      'INSERT INTO SEMINAR_PERSON'
      '  (FK_SEMINAR_SERIAL, FK_PERSON_SERIAL, ATTENDANCE_STATUS)'
      'VALUES'
      '  (:FK_SEMINAR_SERIAL, :FK_PERSON_SERIAL, :ATTENDANCE_STATUS)')
    SQLDelete.Strings = (
      'DELETE FROM SEMINAR_PERSON'
      'WHERE'
      
        '  FK_SEMINAR_SERIAL = :Old_FK_SEMINAR_SERIAL AND FK_PERSON_SERIA' +
        'L = :Old_FK_PERSON_SERIAL')
    SQLUpdate.Strings = (
      'UPDATE SEMINAR_PERSON'
      'SET'
      
        '  FK_SEMINAR_SERIAL = :FK_SEMINAR_SERIAL, FK_PERSON_SERIAL = :FK' +
        '_PERSON_SERIAL, ATTENDANCE_STATUS = :ATTENDANCE_STATUS'
      'WHERE'
      
        '  FK_SEMINAR_SERIAL = :Old_FK_SEMINAR_SERIAL AND FK_PERSON_SERIA' +
        'L = :Old_FK_PERSON_SERIAL')
    SQLRefresh.Strings = (
      
        'SELECT FK_SEMINAR_SERIAL, FK_PERSON_SERIAL, ATTENDANCE_STATUS FR' +
        'OM SEMINAR_PERSON'
      'WHERE'
      
        '  FK_SEMINAR_SERIAL = :FK_SEMINAR_SERIAL AND FK_PERSON_SERIAL = ' +
        ':FK_PERSON_SERIAL')
    SQLLock.Strings = (
      'SELECT NULL FROM SEMINAR_PERSON'
      'WHERE'
      
        'FK_SEMINAR_SERIAL = :Old_FK_SEMINAR_SERIAL AND FK_PERSON_SERIAL ' +
        '= :Old_FK_PERSON_SERIAL'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM person'
      ''
      ') q')
    Connection = U_databaseFRM.DataConnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      ' select'
      
        '     pout.serial_number,pout.last_name,pout.first_name, pout.nat' +
        'ional_id'
      ' from'
      ' person pout left outer join'
      '('
      'select'
      '    pe.serial_number, sp.fk_person_serial, sp.attendance_status'
      'from'
      '    person pe inner join'
      '    seminar_person sp on pe.serial_number=sp.fk_person_serial'
      '    where sp.fk_seminar_serial= :seminarSerial'
      ') as PeFound'
      'on pout.serial_number= peFound.serial_number'
      'where pefound.serial_number is null')
    DetailFields = 'FK_SEMINAR_SERIAL'
    ReadOnly = True
    Active = True
    Left = 298
    Top = 569
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'seminarSerial'
        Value = nil
      end>
    object NonAttendSQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'A/A'
      DisplayWidth = 10
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object NonAttendSQLLAST_NAME: TWideStringField
      DisplayLabel = #917#960#943#952#949#964#959
      DisplayWidth = 21
      FieldName = 'LAST_NAME'
      FixedChar = True
      Size = 30
    end
    object NonAttendSQLFIRST_NAME: TWideStringField
      DisplayLabel = #908#957#959#956#945
      DisplayWidth = 10
      FieldName = 'FIRST_NAME'
      FixedChar = True
      Size = 30
    end
    object NonAttendSQLNATIONAL_ID: TWideStringField
      DisplayLabel = #932#945#965#964#972#964#951#964#945
      DisplayWidth = 13
      FieldName = 'NATIONAL_ID'
      FixedChar = True
    end
  end
  object NonAttendSRC: TDataSource
    DataSet = NonAttendSQL
    OnStateChange = SeminarSRCStateChange
    Left = 328
    Top = 513
  end
  object seminarSubjectSQL: TIBCQuery
    KeyFields = 'SERIAL_NUMBER'
    KeyGenerator = 'GEN_SEMINAR_SUBJECT'
    SQLInsert.Strings = (
      'INSERT INTO SEMINAR_SUBJECT'
      '  (SERIAL_NUMBER, FK_SEMINAR_SERIAL, SUBJECT)'
      'VALUES'
      '  (:SERIAL_NUMBER, :FK_SEMINAR_SERIAL, :SUBJECT)')
    SQLDelete.Strings = (
      'DELETE FROM SEMINAR_SUBJECT'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE SEMINAR_SUBJECT'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, FK_SEMINAR_SERIAL = :FK_SEMINA' +
        'R_SERIAL, SUBJECT = :SUBJECT'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, FK_SEMINAR_SERIAL, SUBJECT FROM SEMINAR_SU' +
        'BJECT'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM SEMINAR_SUBJECT'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM SEMINAR_SUBJECT'
      ''
      ') q')
    Connection = U_databaseFRM.DataConnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM'
      'SEMINAR_subject')
    MasterFields = 'SERIAL_NUMBER'
    DetailFields = 'FK_SEMINAR_SERIAL'
    MasterSource = SeminarSRC
    Active = True
    Left = 281
    Top = 461
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
        Value = nil
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
    object seminarSubjectSQLFK_SEMINAR_SERIAL: TIntegerField
      FieldName = 'FK_SEMINAR_SERIAL'
      Required = True
      Visible = False
    end
  end
  object SeminarSubjectSRC: TDataSource
    DataSet = seminarSubjectSQL
    Left = 232
    Top = 353
  end
  object SeminarDaySQL: TIBCQuery
    KeyFields = 'SERIAL_NUMBER'
    KeyGenerator = 'GEN_SEMINAR_SUBJECT_DAY'
    SQLInsert.Strings = (
      'INSERT INTO SEMINAR_SUBJECT_DAY'
      
        '  (SERIAL_NUMBER, FK_SEMINAR_SUBJECT_SERIAL, SEMINAR_DAY, DURATI' +
        'ON_HOURS)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :FK_SEMINAR_SUBJECT_SERIAL, :SEMINAR_DAY, :DU' +
        'RATION_HOURS)')
    SQLDelete.Strings = (
      'DELETE FROM SEMINAR_SUBJECT_DAY'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE SEMINAR_SUBJECT_DAY'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, FK_SEMINAR_SUBJECT_SERIAL = :F' +
        'K_SEMINAR_SUBJECT_SERIAL, SEMINAR_DAY = :SEMINAR_DAY, DURATION_H' +
        'OURS = :DURATION_HOURS'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, FK_SEMINAR_SUBJECT_SERIAL, SEMINAR_DAY, DU' +
        'RATION_HOURS FROM SEMINAR_SUBJECT_DAY'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM SEMINAR_SUBJECT_DAY'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM SEMINAR_SUBJECT_DAY'
      ''
      ') q')
    Connection = U_databaseFRM.DataConnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM'
      'SEMINAR_subject_day')
    MasterFields = 'SERIAL_NUMBER'
    DetailFields = 'FK_SEMINAR_SUBJECT_SERIAL'
    MasterSource = SeminarSubjectSRC
    Active = True
    BeforeInsert = SeminarDaySQLBeforeInsert
    Left = 25
    Top = 397
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object SeminarDaySQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'A/A'
      DisplayWidth = 10
      FieldName = 'SERIAL_NUMBER'
    end
    object SeminarDaySQLSEMINAR_DAY: TDateField
      DisplayLabel = #919#956#949#961#959#956#951#957#943#945
      DisplayWidth = 15
      FieldName = 'SEMINAR_DAY'
    end
    object SeminarDaySQLDURATION_HOURS: TIntegerField
      DisplayLabel = #916#953#940#961#954#949#953#945' ('#974#961#949#962')'
      DisplayWidth = 10
      FieldName = 'DURATION_HOURS'
    end
    object SeminarDaySQLFK_SEMINAR_SUBJECT_SERIAL: TIntegerField
      FieldName = 'FK_SEMINAR_SUBJECT_SERIAL'
      Required = True
      Visible = False
    end
  end
  object SeminarDaySRC: TDataSource
    DataSet = SeminarDaySQL
    Left = 184
    Top = 465
  end
  object SeminarCostItemSQL: TIBCQuery
    KeyFields = 'SERIAL_NUMBER'
    KeyGenerator = 'GEN_SEMINAR_COST_ITEM'
    SQLInsert.Strings = (
      'INSERT INTO SEMINAR_COST_ITEM'
      
        '  (SERIAL_NUMBER, FK_COST_ITEM, AMOUNT_PER_ITEM, NUMBER_OF_ITEMS' +
        ', FK_SEMINAR_SERIAL)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :FK_COST_ITEM, :AMOUNT_PER_ITEM, :NUMBER_OF_I' +
        'TEMS, :FK_SEMINAR_SERIAL)')
    SQLDelete.Strings = (
      'DELETE FROM SEMINAR_COST_ITEM'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE SEMINAR_COST_ITEM'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, FK_COST_ITEM = :FK_COST_ITEM, ' +
        'AMOUNT_PER_ITEM = :AMOUNT_PER_ITEM, NUMBER_OF_ITEMS = :NUMBER_OF' +
        '_ITEMS, FK_SEMINAR_SERIAL = :FK_SEMINAR_SERIAL'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, FK_COST_ITEM, AMOUNT_PER_ITEM, NUMBER_OF_I' +
        'TEMS, FK_SEMINAR_SERIAL FROM SEMINAR_COST_ITEM'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM SEMINAR_COST_ITEM'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM SEMINAR_COST_ITEM'
      ''
      ') q')
    Connection = U_databaseFRM.DataConnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM'
      'SEMINAR_cost_item')
    MasterFields = 'SERIAL_NUMBER'
    DetailFields = 'FK_SEMINAR_SERIAL'
    MasterSource = SeminarSRC
    Active = True
    OnCalcFields = SeminarCostItemSQLCalcFields
    OnNewRecord = SeminarCostItemSQLNewRecord
    Left = 121
    Top = 293
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object SeminarCostItemSQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'A/A'
      DisplayWidth = 10
      FieldName = 'SERIAL_NUMBER'
    end
    object SeminarCostItemSQLFK_COST_ITEM: TIntegerField
      DisplayLabel = #932#973#960#959#962' '#922#972#963#964#959#965#962
      DisplayWidth = 10
      FieldName = 'FK_COST_ITEM'
      Required = True
    end
    object SeminarCostItemSQLNUMBER_OF_ITEMS: TIntegerField
      DisplayLabel = #913#961#953#952#956#972#962' '#924#959#957#940#948#969#957
      DisplayWidth = 15
      FieldName = 'NUMBER_OF_ITEMS'
    end
    object SeminarCostItemSQLAMOUNT_PER_ITEM: TFloatField
      DisplayLabel = #922#972#963#964#959#962'/'#924#959#957#940#948#945
      DisplayWidth = 14
      FieldName = 'AMOUNT_PER_ITEM'
      DisplayFormat = '0.00'
    end
    object SeminarCostItemSQLTotalAmnt: TFloatField
      DisplayLabel = #931#973#957#959#955#959
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'TotalAmnt'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object SeminarCostItemSQLFK_SEMINAR_SERIAL: TIntegerField
      FieldName = 'FK_SEMINAR_SERIAL'
      Required = True
      Visible = False
    end
  end
  object SeminarCostItemSRC: TDataSource
    DataSet = SeminarCostItemSQL
    Left = 568
    Top = 409
  end
  object CostItemTBL: TIBCTable
    TableName = 'COST_ITEM_TYPE'
    ReadOnly = True
    Connection = U_databaseFRM.DataConnection
    Transaction = ReadTrans
    IndexFieldNames = 'COST_NAME'
    Left = 372
    Top = 406
    object CostItemTBLCOST_NAME: TWideStringField
      DisplayWidth = 20
      FieldName = 'COST_NAME'
      FixedChar = True
      Size = 60
    end
    object CostItemTBLAMOUNT: TFloatField
      DisplayWidth = 10
      FieldName = 'AMOUNT'
    end
    object CostItemTBLSERIAL_NUMBER: TIntegerField
      DisplayWidth = 10
      FieldName = 'SERIAL_NUMBER'
      Required = True
      Visible = False
    end
  end
  object SeminarReminderSRC: TDataSource
    DataSet = SeminarReminderSQL
    Left = 176
    Top = 545
  end
  object SeminarReminderSQL: TIBCQuery
    KeyFields = 'SERIAL_NUMBER'
    KeyGenerator = 'GEN_SEMINAR_REMINDER'
    SQLInsert.Strings = (
      'INSERT INTO SEMINAR_REMINDER'
      
        '  (SERIAL_NUMBER, FK_SEMINAR_SERIAL, DESCRIPTION, REMINDER_MESSA' +
        'GE, AFTER_OR_BEFORE, PERSON_OR_SEMINAR, START_OR_END, DAYS_OR_MO' +
        'NTHS, NUMBER_OF_DAYS_MONTHS, REMINDER_TYPE, IS_COMPLETED, DATE_T' +
        'ARGETED, DATE_COMPLETED)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :FK_SEMINAR_SERIAL, :DESCRIPTION, :REMINDER_M' +
        'ESSAGE, :AFTER_OR_BEFORE, :PERSON_OR_SEMINAR, :START_OR_END, :DA' +
        'YS_OR_MONTHS, :NUMBER_OF_DAYS_MONTHS, :REMINDER_TYPE, :IS_COMPLE' +
        'TED, :DATE_TARGETED, :DATE_COMPLETED)')
    SQLDelete.Strings = (
      'DELETE FROM SEMINAR_REMINDER'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE SEMINAR_REMINDER'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, FK_SEMINAR_SERIAL = :FK_SEMINA' +
        'R_SERIAL, DESCRIPTION = :DESCRIPTION, REMINDER_MESSAGE = :REMIND' +
        'ER_MESSAGE, AFTER_OR_BEFORE = :AFTER_OR_BEFORE, PERSON_OR_SEMINA' +
        'R = :PERSON_OR_SEMINAR, START_OR_END = :START_OR_END, DAYS_OR_MO' +
        'NTHS = :DAYS_OR_MONTHS, NUMBER_OF_DAYS_MONTHS = :NUMBER_OF_DAYS_' +
        'MONTHS, REMINDER_TYPE = :REMINDER_TYPE, IS_COMPLETED = :IS_COMPL' +
        'ETED, DATE_TARGETED = :DATE_TARGETED, DATE_COMPLETED = :DATE_COM' +
        'PLETED'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, FK_SEMINAR_SERIAL, DESCRIPTION, REMINDER_M' +
        'ESSAGE, AFTER_OR_BEFORE, PERSON_OR_SEMINAR, START_OR_END, DAYS_O' +
        'R_MONTHS, NUMBER_OF_DAYS_MONTHS, REMINDER_TYPE, IS_COMPLETED, DA' +
        'TE_TARGETED, DATE_COMPLETED FROM SEMINAR_REMINDER'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM SEMINAR_REMINDER'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM SEMINAR_REMINDER'
      ''
      ') q')
    Connection = U_databaseFRM.DataConnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM'
      'SEMINAR_reminder'
      'order by Description')
    MasterFields = 'SERIAL_NUMBER'
    DetailFields = 'FK_SEMINAR_SERIAL'
    MasterSource = SeminarSRC
    Active = True
    OnNewRecord = SeminarReminderSQLNewRecord
    Left = 89
    Top = 541
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SERIAL_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object SeminarReminderSQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'A/A'
      DisplayWidth = 3
      FieldName = 'SERIAL_NUMBER'
    end
    object SeminarReminderSQLDESCRIPTION: TWideStringField
      DisplayLabel = #928#949#961#953#947#961#945#966#942
      DisplayWidth = 18
      FieldName = 'DESCRIPTION'
      Required = True
      Size = 160
    end
    object SeminarReminderSQLNUMBER_OF_DAYS_MONTHS: TIntegerField
      DisplayLabel = #931#949
      DisplayWidth = 5
      FieldName = 'NUMBER_OF_DAYS_MONTHS'
    end
    object SeminarReminderSQLDAYS_OR_MONTHS: TWideStringField
      DisplayLabel = #919#956#941#961#949#962'/'#924#942#957#949#962
      DisplayWidth = 10
      FieldName = 'DAYS_OR_MONTHS'
      FixedChar = True
      Size = 1
    end
    object SeminarReminderSQLAFTER_OR_BEFORE: TWideStringField
      DisplayLabel = #928#961#953#957'/'#924#949#964#940
      DisplayWidth = 8
      FieldName = 'AFTER_OR_BEFORE'
      FixedChar = True
      Size = 1
    end
    object SeminarReminderSQLSTART_OR_END: TWideStringField
      DisplayLabel = #913#960#972' '
      DisplayWidth = 11
      FieldName = 'START_OR_END'
      FixedChar = True
      Size = 1
    end
    object SeminarReminderSQLDATE_TARGETED: TDateField
      DisplayLabel = #923#942#958#951
      DisplayWidth = 12
      FieldName = 'DATE_TARGETED'
    end
    object SeminarReminderSQLFK_SEMINAR_SERIAL: TIntegerField
      FieldName = 'FK_SEMINAR_SERIAL'
      Visible = False
    end
    object SeminarReminderSQLREMINDER_MESSAGE: TWideStringField
      FieldName = 'REMINDER_MESSAGE'
      Required = True
      Visible = False
      Size = 160
    end
    object SeminarReminderSQLPERSON_OR_SEMINAR: TWideStringField
      FieldName = 'PERSON_OR_SEMINAR'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object SeminarReminderSQLREMINDER_TYPE: TWideStringField
      FieldName = 'REMINDER_TYPE'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object SeminarReminderSQLIS_COMPLETED: TWideStringField
      FieldName = 'IS_COMPLETED'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object SeminarReminderSQLDATE_COMPLETED: TDateField
      FieldName = 'DATE_COMPLETED'
      Visible = False
    end
  end
  object CompanySQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO PERSON'
      '  (SERIAL_NUMBER, NATIONAL_ID, FIRST_NAME, LAST_NAME)'
      'VALUES'
      '  (:SERIAL_NUMBER, :NATIONAL_ID, :FIRST_NAME, :LAST_NAME)')
    SQLDelete.Strings = (
      'DELETE FROM PERSON'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE PERSON'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, NATIONAL_ID = :NATIONAL_ID, FI' +
        'RST_NAME = :FIRST_NAME, LAST_NAME = :LAST_NAME'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, NATIONAL_ID, FIRST_NAME, LAST_NAME FROM PE' +
        'RSON'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM PERSON'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM PERSON'
      ''
      ') q')
    Connection = U_databaseFRM.DataConnection
    Transaction = ReadTrans
    SQL.Strings = (
      'select'
      'per.serial_number, per.first_name,per.last_name ,per.national_id'
      'from'
      'person per'
      'where'
      'per.is_company='#39'Y'#39)
    ReadOnly = True
    Left = 483
    Top = 509
    object CompanySQLLAST_NAME: TWideStringField
      DisplayLabel = #908#957#959#956#945' '#917#964#945#953#961#949#943#945#962
      DisplayWidth = 15
      FieldName = 'LAST_NAME'
      FixedChar = True
      Size = 30
    end
    object CompanySQLNATIONAL_ID: TWideStringField
      DisplayLabel = #913#961'. '#917#947#947#961#945#966#942#962
      DisplayWidth = 20
      FieldName = 'NATIONAL_ID'
      FixedChar = True
    end
    object CompanySQLFIRST_NAME: TWideStringField
      DisplayWidth = 30
      FieldName = 'FIRST_NAME'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object CompanySQLSERIAL_NUMBER: TIntegerField
      DisplayWidth = 10
      FieldName = 'SERIAL_NUMBER'
      Required = True
      Visible = False
    end
  end
  object SeminarPictureSQL: TIBCQuery
    KeyFields = 'SERIAL_NUMBER'
    KeyGenerator = 'GEN_SEMINAR_TYPE_PICTURES'
    SQLInsert.Strings = (
      'INSERT INTO SEMINAR_PICTURES'
      
        '  (SERIAL_NUMBER, FK_SEMINAR_SERIAL, LANGUAGE_GREEK_OR_ENGLISH, ' +
        'PICTURE_SEMINAR, LINE_A1, LINE_A2, LINE_B1, LINE_B2, LINE_B3, LI' +
        'NE_C1, PICTURE_TOP_L1, PICTURE_TOP_R1, PICTURE_BOT_L1, PICTURE_B' +
        'OT_R1, TL_X, TL_Y, TR_X, TR_Y, BL_X, BL_Y, BR_X, BR_Y)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :FK_SEMINAR_SERIAL, :LANGUAGE_GREEK_OR_ENGLIS' +
        'H, :PICTURE_SEMINAR, :LINE_A1, :LINE_A2, :LINE_B1, :LINE_B2, :LI' +
        'NE_B3, :LINE_C1, :PICTURE_TOP_L1, :PICTURE_TOP_R1, :PICTURE_BOT_' +
        'L1, :PICTURE_BOT_R1, :TL_X, :TL_Y, :TR_X, :TR_Y, :BL_X, :BL_Y, :' +
        'BR_X, :BR_Y)')
    SQLDelete.Strings = (
      'DELETE FROM SEMINAR_PICTURES'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE SEMINAR_PICTURES'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, FK_SEMINAR_SERIAL = :FK_SEMINA' +
        'R_SERIAL, LANGUAGE_GREEK_OR_ENGLISH = :LANGUAGE_GREEK_OR_ENGLISH' +
        ', PICTURE_SEMINAR = :PICTURE_SEMINAR, LINE_A1 = :LINE_A1, LINE_A' +
        '2 = :LINE_A2, LINE_B1 = :LINE_B1, LINE_B2 = :LINE_B2, LINE_B3 = ' +
        ':LINE_B3, LINE_C1 = :LINE_C1, PICTURE_TOP_L1 = :PICTURE_TOP_L1, ' +
        'PICTURE_TOP_R1 = :PICTURE_TOP_R1, PICTURE_BOT_L1 = :PICTURE_BOT_' +
        'L1, PICTURE_BOT_R1 = :PICTURE_BOT_R1, TL_X = :TL_X, TL_Y = :TL_Y' +
        ', TR_X = :TR_X, TR_Y = :TR_Y, BL_X = :BL_X, BL_Y = :BL_Y, BR_X =' +
        ' :BR_X, BR_Y = :BR_Y'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, FK_SEMINAR_SERIAL, LANGUAGE_GREEK_OR_ENGLI' +
        'SH, PICTURE_SEMINAR, LINE_A1, LINE_A2, LINE_B1, LINE_B2, LINE_B3' +
        ', LINE_C1, PICTURE_TOP_L1, PICTURE_TOP_R1, PICTURE_BOT_L1, PICTU' +
        'RE_BOT_R1, TL_X, TL_Y, TR_X, TR_Y, BL_X, BL_Y, BR_X, BR_Y FROM S' +
        'EMINAR_PICTURES'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM SEMINAR_PICTURES'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM SEMINAR_PICTURES'
      ''
      ') q')
    Connection = U_databaseFRM.DataConnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'SELECT STP.* '
      'FROM '
      'seminar_pictures STP'
      
        'where stp.FK_SEMINAR_SERIAL = :SeminarSerial  and stp.LANGUAGE_G' +
        'REEK_OR_ENGLISH = :language')
    Left = 681
    Top = 225
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
      Size = 1500
    end
    object SeminarPictureSQLLINE_A2: TWideStringField
      FieldName = 'LINE_A2'
      Size = 1500
    end
    object SeminarPictureSQLLINE_B1: TWideStringField
      FieldName = 'LINE_B1'
      Size = 1500
    end
    object SeminarPictureSQLLINE_B2: TWideStringField
      FieldName = 'LINE_B2'
      Size = 1500
    end
    object SeminarPictureSQLLINE_B3: TWideStringField
      FieldName = 'LINE_B3'
      Size = 1500
    end
    object SeminarPictureSQLFK_SEMINAR_SERIAL: TIntegerField
      FieldName = 'FK_SEMINAR_SERIAL'
      Required = True
    end
    object SeminarPictureSQLLANGUAGE_GREEK_OR_ENGLISH: TWideStringField
      FieldName = 'LANGUAGE_GREEK_OR_ENGLISH'
      FixedChar = True
      Size = 1
    end
    object SeminarPictureSQLLINE_C1: TWideStringField
      FieldName = 'LINE_C1'
      Size = 1500
    end
    object SeminarPictureSQLPICTURE_TOP_L1: TBlobField
      FieldName = 'PICTURE_TOP_L1'
    end
    object SeminarPictureSQLPICTURE_TOP_R1: TBlobField
      FieldName = 'PICTURE_TOP_R1'
    end
    object SeminarPictureSQLPICTURE_BOT_L1: TBlobField
      FieldName = 'PICTURE_BOT_L1'
    end
    object SeminarPictureSQLPICTURE_BOT_R1: TBlobField
      FieldName = 'PICTURE_BOT_R1'
    end
    object SeminarPictureSQLTL_X: TIntegerField
      FieldName = 'TL_X'
    end
    object SeminarPictureSQLTL_Y: TIntegerField
      FieldName = 'TL_Y'
    end
    object SeminarPictureSQLTR_X: TIntegerField
      FieldName = 'TR_X'
    end
    object SeminarPictureSQLTR_Y: TIntegerField
      FieldName = 'TR_Y'
    end
    object SeminarPictureSQLBL_X: TIntegerField
      FieldName = 'BL_X'
    end
    object SeminarPictureSQLBL_Y: TIntegerField
      FieldName = 'BL_Y'
    end
    object SeminarPictureSQLBR_X: TIntegerField
      FieldName = 'BR_X'
    end
    object SeminarPictureSQLBR_Y: TIntegerField
      FieldName = 'BR_Y'
    end
  end
  object SeminarPictureSRC: TDataSource
    DataSet = SeminarPictureSQL
    Left = 832
    Top = 201
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 416
    Top = 199
  end
  object MainMenu1: TMainMenu
    Left = 20
    Top = 124
    object Help1: TMenuItem
      Caption = 'Help'
      object Certifcates1: TMenuItem
        Caption = 'Certifcates'
        OnClick = Certifcates1Click
      end
    end
  end
end
