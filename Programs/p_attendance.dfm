object P_attendanceFRM: TP_attendanceFRM
  Left = 365
  Top = 153
  Caption = '--'
  ClientHeight = 558
  ClientWidth = 915
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 915
    Height = 53
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 918
    object Label4: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 907
      Height = 45
      Align = alClient
      Alignment = taCenter
      Caption = #928#945#961#959#965#963#953#959#955#972#947#953#959
      Layout = tlCenter
      ExplicitWidth = 200
      ExplicitHeight = 32
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 515
    Width = 915
    Height = 43
    Align = alBottom
    TabOrder = 3
    ExplicitLeft = 232
    ExplicitTop = 531
    object RzPanel1: TRzPanel
      Left = 814
      Top = 1
      Width = 100
      Height = 41
      Align = alRight
      BorderOuter = fsNone
      TabOrder = 0
      ExplicitLeft = 817
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 53
    Width = 915
    Height = 39
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 918
    object wwIncrementalSearch1: TwwIncrementalSearch
      Left = 255
      Top = 6
      Width = 128
      Height = 22
      DataSource = TableSRC
      SearchField = 'seminar_name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Nav1: TwwDBNavigator
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
      object Nav1Prior: TwwNavButton
        Left = 0
        Top = 0
        Width = 27
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
        Index = 0
        Style = nbsPrior
      end
      object Nav1Next: TwwNavButton
        Left = 27
        Top = 0
        Width = 27
        Height = 26
        Hint = 'Move to next record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'Nav1Next'
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 1
        Style = nbsNext
      end
      object Nav1Button1: TwwNavButton
        Left = 54
        Top = 0
        Width = 26
        Height = 26
        Hint = 'Move to last record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'Nav1Button1'
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 2
        Style = nbsLast
      end
      object Nav1Insert: TwwNavButton
        Left = 80
        Top = 0
        Width = 26
        Height = 26
        Hint = 'Insert new record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'Nav1Insert'
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 3
        Style = nbsInsert
      end
      object Nav1Delete: TwwNavButton
        Left = 106
        Top = 0
        Width = 26
        Height = 26
        Hint = 'Delete current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'Nav1Delete'
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 4
        Style = nbsDelete
      end
      object Nav1Post: TwwNavButton
        Left = 132
        Top = 0
        Width = 26
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
        Index = 5
        Style = nbsPost
      end
      object Nav1SearchDialog: TwwNavButton
        Left = 158
        Top = 0
        Width = 26
        Height = 26
        Hint = 'Search the dataset'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'Nav1SearchDialog'
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Dialog = Sd1
        Index = 6
        Style = nbsSearchDialog
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 92
    Width = 915
    Height = 423
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 918
    object Panel5: TPanel
      Left = 501
      Top = 1
      Width = 413
      Height = 421
      Align = alRight
      BevelOuter = bvNone
      Locked = True
      TabOrder = 1
      ExplicitLeft = 504
      object wwDBGrid1: TwwDBGrid
        Left = 0
        Top = 36
        Width = 413
        Height = 385
        Selected.Strings = (
          'Name'#9'20'#9'Name'
          'percentage'#9'10'#9'percentage'
          'PersonSerial'#9'10'#9'PersonSerial')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = vPresenceSRC
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -10
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        ExplicitTop = 35
      end
      object RzPanel2: TRzPanel
        Left = 0
        Top = 0
        Width = 413
        Height = 36
        Align = alTop
        BorderOuter = fsNone
        TabOrder = 1
        object wwDBNavigator1: TwwDBNavigator
          Left = 0
          Top = 0
          Width = 184
          Height = 36
          AutosizeStyle = asSizeNavButtons
          DataSource = TableSRC
          RepeatInterval.InitialDelay = 500
          RepeatInterval.Interval = 100
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ExplicitLeft = 2
          ExplicitTop = 2
          ExplicitHeight = 71
          object wwNavButton1: TwwNavButton
            Left = 0
            Top = 0
            Width = 31
            Height = 36
            Hint = 'Move to prior record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'Nav1Prior'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 0
            Style = nbsPrior
          end
          object wwNavButton2: TwwNavButton
            Left = 31
            Top = 0
            Width = 31
            Height = 36
            Hint = 'Move to next record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'Nav1Next'
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 1
            Style = nbsNext
          end
          object wwNavButton3: TwwNavButton
            Left = 62
            Top = 0
            Width = 31
            Height = 36
            Hint = 'Move to last record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'Nav1Button1'
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 2
            Style = nbsLast
          end
          object wwNavButton4: TwwNavButton
            Left = 93
            Top = 0
            Width = 31
            Height = 36
            Hint = 'Insert new record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'Nav1Insert'
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 3
            Style = nbsInsert
          end
          object wwNavButton5: TwwNavButton
            Left = 124
            Top = 0
            Width = 30
            Height = 36
            Hint = 'Delete current record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'Nav1Delete'
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 4
            Style = nbsDelete
          end
          object wwNavButton6: TwwNavButton
            Left = 154
            Top = 0
            Width = 30
            Height = 36
            Hint = 'Post changes of current record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'Nav1Post'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 5
            Style = nbsPost
          end
        end
      end
    end
    object PanelX: TRzPanel
      Left = 1
      Top = 1
      Width = 424
      Height = 421
      Align = alLeft
      BorderOuter = fsNone
      TabOrder = 0
      object Label6: TLabel
        Left = 52
        Top = 59
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
      object Label7: TLabel
        Left = 60
        Top = 67
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
      object RzPanel3: TRzPanel
        Left = 0
        Top = 0
        Width = 424
        Height = 9
        Align = alTop
        BorderOuter = fsNone
        TabOrder = 0
        ExplicitWidth = 328
      end
      object wwDBLookupCombo1: TwwDBLookupCombo
        Left = 112
        Top = 15
        Width = 121
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'SEMINAR_NAME'#9'25'#9#928#949#961#953#947#961#945#966#942#9'F'
          'DATE_STARTED'#9'10'#9#904#957#945#961#958#951#9'F'
          'SERIAL_NUMBER'#9'10'#9#913'/'#913#9'F')
        LookupTable = TableSQL
        LookupField = 'SEMINAR_NAME'
        Options = [loRowLines]
        TabOrder = 1
        AutoDropDown = True
        ShowButton = True
        OrderByDisplay = False
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = wwDBLookupCombo1Change
        OnCloseUp = wwDBLookupCombo1CloseUp
      end
      object BitBtn2: TBitBtn
        Left = 101
        Top = 194
        Width = 110
        Height = 34
        Caption = #928#945#961#959#965#963#943#949#962
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
          9265449265449266449266449266439266439265449266449266449265439266
          43926543926644926543926543926644926643926643926643926643FFFFFFFF
          FFFFFFFFFFFFFFFF936644E9D7C0E8D7C0E8D6C0E9D7C0E8D6C0E8D6C1E9D7C0
          E8D6C0E8D6C0E8D7C0E9D7C0E9D6C0E8D7C0E8D6C0E8D6C0E8D6C0E8D6C0E8D7
          C0926644FFFFFFFFFFFFFFFFFFFFFFFF946844E8D8C2E9D8C2E8D7C1E9D8C2E9
          D7C2E8D7C2E8D8C2E8D8C1E9D7C1E8D7C2E9D8C2E8D7C2E9D8C2E9D7C2E8D8C2
          E8D7C1E8D8C1E9D7C2946745FFFFFFFFFFFFFFFFFFFFFFFF966845E9D9C3E9D8
          C43232D73232D73232D7E9D9C3E9D8C4E9D9C4E9D9C3E9D9C3E9D8C3E9D9C3E9
          D8C3E9D9C4E9D9C3E9D9C4E9D9C3E9D9C3966845FFFFFFFFFFFFFFFFFFFFFFFF
          976945E9DAC5EADAC5EADAC5EADAC51A1ADEEADAC5EADAC5EAD9C5E9DAC5EADA
          C5E9DAC5EAD9C5EADAC5EADAC5E9DAC5EADAC5EADAC5E9D9C5976945FFFFFFFF
          FFFFFFFFFFFFFFFF996A46EADCC8EBDBC8EADBC80808E4EADBC8EADBC8DDC7AF
          DDC7AFDDC7AFDEC7AFDDC7AFDDC7AFDDC7AFDDC7AFDDC7AFDDC7AFEADCC8EBDB
          C8996A46FFFFFFFFFFFFFFFFFFFFFFFF996B47EADCCAEADDCAEBDCCAEBDDCA08
          08E4EBDCCBA8744DA8744DA8744DA8744DA8744DA8744DA8744DA8744DA8744D
          A8744DEBDDCAEADCCA9A6B47FFFFFFFFFFFFFFFFFFFFFFFF9B6D47EBDECCEBDE
          CC0808E40808E40808E4EBDECCECDECCECDECDEBDECCEBDECDECDECCEBDECDEB
          DECCECDECDEBDDCCEBDECDECDECDECDECC9C6C48FFFFFFFFFFFFFFFFFFFFFFFF
          9E6D48ECDFCFECDFCFECE0CFECDFCEECDFCFECDFCFECDFCFECDFCFEBE0CEEBDF
          CFEBE0CEECDFCFECDFCFECDFCFECE0CFECE0CFECDFCFECE0CF9E6C48FFFFFFFF
          FFFFFFFFFFFFFFFF9F6E49ECE1D1EDE1D1EDE1D1ECE1D1EDE1D1ECE1D1EDE1D1
          ECE1D1ECE1D2EDE1D1ECE1D1EDE1D2ECE1D2ECE1D1EDE1D1ECE2D2EDE1D2ECE1
          D19F6E48FFFFFFFFFFFFFFFFFFFFFFFFA1704AEDE3D4EDE3D33232D73232D732
          32D7EDE3D4EDE2D4EDE3D4EDE3D3EDE3D4EDE2D4EEE3D4EDE2D4EDE3D4EDE2D4
          EDE3D4EDE3D4EDE3D4A17049FFFFFFFFFFFFFFFFFFFFFFFFA2714AEEE4D6EEE4
          D61A1ADEEEE5D6EEE4D6EEE5D6EEE5D7EDE5D6EEE4D6EEE5D7EEE4D7EEE5D6EE
          E4D6EEE4D7EDE4D7EEE4D7EEE4D6EEE4D6A3714AFFFFFFFFFFFFFFFFFFFFFFFF
          A4734AEFE6D8EEE6D8EEE5D90808E4EEE6D9EEE6D9E1CFBCE1CFBCE0CFBCE0CF
          BCE1CFBBE1CFBBE0CFBCE1CFBCE0CFBBE0CFBBEEE5D9EEE6D8A5714AFFFFFFFF
          FFFFFFFFFFFFFFFFA7734BEFE8DCEFE7DBEFE7DBF0E8DC0808E4EFE7DCA8744D
          A8744DA8744DA8744DA8744DA8744DA8744DA8744DA8744DA8744DEFE8DBF0E7
          DCA6734BFFFFFFFFFFFFFFFFFFFFFFFFA8744CEFE9DDF0E9DE0808E40808E408
          08E4F0E9DDF0E9DEF0E9DEF0E9DEF0E9DDF0E9DEF0E9DEF0E9DEEFE9DEF0E9DE
          F0E9DEF0E9DEF0E9DDA8754CFFFFFFFFFFFFFFFFFFFFFFFFA9764DF0EBE0F1EB
          E0F1EAE0F0EBE0F0EBE0F0EAE0F1EBE0F0EAE0F0EAE0F1EBE0F0EAE0F1EAE0F1
          EBE0F0EBE0F0EBDFF1EADFF0EAE0F0EAE0AA764DFFFFFFFFFFFFFFFFFFFFFFFF
          AC774EF1ECE2F1ECE2F1ECE2F1ECE2F1ECE2F1ECE2F1EBE2F1ECE2F1ECE2F1EC
          E2F1EBE2F1EBE2F1ECE2F1ECE2F0ECE2F1EBE2F0ECE2F1EBE2AC764EFFFFFFFF
          FFFFFFFFFFFFFFFFAE784EF1EDE4F1EDE4F2EDE43232D7F2EDE4F1EDE4F1EDE4
          F1EEE4F1EDE4F2EDE4F1EDE4F1EDE4F1EDE4F2EDE4F1EDE4F1EDE4F2EEE4F1ED
          E4AD784EFFFFFFFFFFFFFFFFFFFFFFFFAE794FF2EFE5F2EEE6F2EEE61A1ADEF2
          EEE5F2EEE6F2EEE6F2EFE6F1EEE6F1EEE6F2EEE6F2EEE6F1EEE5F2EEE6F2EEE5
          F2EEE6F2EFE6F2EFE6AE794FFFFFFFFFFFFFFFFFFFFFFFFFB07A50F2EFE7F2EF
          E7F2F0E70808E4F3EFE7F2EFE7E3D7C9E3D7C8E3D7C8E3D7C8E3D7C8E3D7C8E3
          D7C9E3D7C9E3D7C8E3D7C9F3EFE8F3EFE8B07950FFFFFFFFFFFFFFFFFFFFFFFF
          B17B50F3F0E8F3F0E90808E40808E4F3F0E8F2F0E9A8744DA8744DA8744DA874
          4DA8744DA8744DA8744DA8744DA8744DA8744DF3F0E9F3F1E9B17A50FFFFFFFF
          FFFFFFFFFFFFFFFFB27C51F3F1EAF3F1EAF3F1EA0808E4F3F1EAF3F1EAF3F1EA
          F3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1
          EAB27B50FFFFFFFFFFFFFFFFFFFFFFFFB47C51F3F1EAF3F1EAF3F1EAF3F1EAF3
          F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EA
          F3F1EAF3F1EAF3F1EAB47B50FFFFFFFFFFFFFFFFFFFFFFFFB47C51B47C51B47C
          51B47C51B47C51B47C51B47D51B47C51B47C51B47C51B47C51B47C51B47C51B4
          7C51B47C51B47C51B47C51B47C51B47C51B47C51FFFFFFFFFFFF}
        ParentFont = False
        TabOrder = 2
        OnClick = BitBtn2Click
      end
      object RzPanel4: TRzPanel
        Left = 0
        Top = 271
        Width = 424
        Height = 150
        Align = alBottom
        TabOrder = 3
        ExplicitWidth = 253
        object Grid1: TwwDBGrid
          Left = 2
          Top = 2
          Width = 361
          Height = 146
          Selected.Strings = (
            'SUBJECT'#9'16'#9#920#941#956#945
            'SEMINAR_DAY'#9'10'#9#924#941#961#945
            'DURATION_HOURS'#9'10'#9#911#961#949#962)
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alLeft
          Color = 12713983
          DataSource = DaySRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyOptions = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
        end
      end
    end
    object FirstGRP: TGroupBox
      Left = 4
      Top = 60
      Width = 250
      Height = 194
      Caption = #928#955#951#961#959#966#959#961#943#949#962
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label2: TLabel
        Left = 11
        Top = 51
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
        Left = 48
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
        Left = 75
        Top = 20
        Width = 75
        Height = 20
        Alignment = taRightJustify
        BorderOuter = fsFlat
        BorderWidth = 1
        DataField = 'SERIAL_NUMBER'
        DataSource = TableSRC
      end
      object Label5: TLabel
        Left = 2
        Top = 79
        Width = 67
        Height = 14
        Caption = #917#960#953#967#949#953#961#953#963#953#945#954#972
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 21
        Top = 107
        Width = 48
        Height = 14
        Caption = #928#949#961#943#959#948#959#962
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 11
        Top = 155
        Width = 28
        Height = 14
        Caption = #920#941#956#945
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RzDBLabel1: TRzDBLabel
        Left = 75
        Top = 109
        Width = 75
        Height = 20
        BorderOuter = fsFlat
        BorderWidth = 1
        DataField = 'DATE_STARTED'
        DataSource = TableSRC
      end
      object RzDBLabel2: TRzDBLabel
        Left = 172
        Top = 109
        Width = 75
        Height = 20
        BorderOuter = fsFlat
        BorderWidth = 1
        DataField = 'DATE_COMPLETED'
        DataSource = TableSRC
      end
      object FirstFLD: TwwDBEdit
        Left = 75
        Top = 46
        Width = 162
        Height = 22
        TabStop = False
        Color = clBtnFace
        DataField = 'SEMINAR_NAME'
        DataSource = TableSRC
        Enabled = False
        ReadOnly = True
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwCheckBox1: TwwCheckBox
        Left = 157
        Top = 74
        Width = 51
        Height = 17
        DisableThemes = False
        AlwaysTransparent = False
        ValueChecked = 'Y'
        ValueUnchecked = 'N'
        DisplayValueChecked = 'Y'
        DisplayValueUnchecked = 'N'
        NullAndBlankState = cbUnchecked
        Alignment = taLeftJustify
        Caption = #913#925#913#916
        Checked = True
        DataField = 'ANAD_APPROVED'
        DataSource = TableSRC
        State = cbChecked
        TabOrder = 2
        ReadOnly = True
      end
      object wwDBComboBox1: TwwDBComboBox
        Left = 75
        Top = 72
        Width = 76
        Height = 22
        ShowButton = False
        Style = csDropDownList
        MapList = True
        AllowClearKey = False
        AutoDropDown = True
        DataField = 'SEMINAR_CORP_TYPE'
        DataSource = TableSRC
        DropDownCount = 8
        ItemHeight = 0
        Items.Strings = (
          #924#972#957#959'-'#917#960#967'.'#9'M'
          #928#972#955#965'-'#917#960#967'.'#9'P')
        ItemIndex = 1
        Sorted = False
        TabOrder = 1
        UnboundDataType = wwDefault
      end
      object wwDBEdit1: TwwDBEdit
        Left = 75
        Top = 150
        Width = 162
        Height = 22
        TabStop = False
        Color = clBtnFace
        DataField = 'SEMINAR_NAME'
        DataSource = TableSRC
        Enabled = False
        ReadOnly = True
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object Button1: TButton
      Left = 400
      Top = 272
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object TableSQL: TIBCQuery
    KeyFields = 'SERIAL_NUMBER'
    KeyGenerator = 'GEN_COMPANY'
    SQLInsert.Strings = (
      'INSERT INTO SEMINAR'
      
        '  (SERIAL_NUMBER, FK_SEMINAR, SEMINAR_NAME, SEMINAR_CORP_TYPE, F' +
        'K_INSTRUCTOR, FK_VENUE, DATE_STARTED, DATE_COMPLETED, DURATION_D' +
        'AYS, DURATION_HOURS, COST_ACTUAL, AMOUNT_ANAD, COMMENTS, ANAD_AP' +
        'PROVED, COST_ESTIMATE, STATUS_ACTIVITY)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :FK_SEMINAR, :SEMINAR_NAME, :SEMINAR_CORP_TYP' +
        'E, :FK_INSTRUCTOR, :FK_VENUE, :DATE_STARTED, :DATE_COMPLETED, :D' +
        'URATION_DAYS, :DURATION_HOURS, :COST_ACTUAL, :AMOUNT_ANAD, :COMM' +
        'ENTS, :ANAD_APPROVED, :COST_ESTIMATE, :STATUS_ACTIVITY)')
    SQLDelete.Strings = (
      'DELETE FROM SEMINAR'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE SEMINAR'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, FK_SEMINAR = :FK_SEMINAR, SEMI' +
        'NAR_NAME = :SEMINAR_NAME, SEMINAR_CORP_TYPE = :SEMINAR_CORP_TYPE' +
        ', FK_INSTRUCTOR = :FK_INSTRUCTOR, FK_VENUE = :FK_VENUE, DATE_STA' +
        'RTED = :DATE_STARTED, DATE_COMPLETED = :DATE_COMPLETED, DURATION' +
        '_DAYS = :DURATION_DAYS, DURATION_HOURS = :DURATION_HOURS, COST_A' +
        'CTUAL = :COST_ACTUAL, AMOUNT_ANAD = :AMOUNT_ANAD, COMMENTS = :CO' +
        'MMENTS, ANAD_APPROVED = :ANAD_APPROVED, COST_ESTIMATE = :COST_ES' +
        'TIMATE, STATUS_ACTIVITY = :STATUS_ACTIVITY'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, FK_SEMINAR, SEMINAR_NAME, SEMINAR_CORP_TYP' +
        'E, FK_INSTRUCTOR, FK_VENUE, DATE_STARTED, DATE_COMPLETED, DURATI' +
        'ON_DAYS, DURATION_HOURS, COST_ACTUAL, AMOUNT_ANAD, COMMENTS, ANA' +
        'D_APPROVED, COST_ESTIMATE, STATUS_ACTIVITY FROM SEMINAR'
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
      'Seminar '
      'where status='#39'A'#39
      'order by '
      'seminar_name asc, date_started desc')
    Active = True
    AfterScroll = TableSQLAfterScroll
    Left = 49
    Top = 5
    object TableSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
    end
    object TableSQLFK_SEMINAR: TIntegerField
      FieldName = 'FK_SEMINAR'
    end
    object TableSQLSEMINAR_NAME: TWideStringField
      FieldName = 'SEMINAR_NAME'
      Size = 160
    end
    object TableSQLSEMINAR_CORP_TYPE: TWideStringField
      FieldName = 'SEMINAR_CORP_TYPE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object TableSQLFK_INSTRUCTOR: TIntegerField
      FieldName = 'FK_INSTRUCTOR'
    end
    object TableSQLFK_VENUE: TIntegerField
      FieldName = 'FK_VENUE'
    end
    object TableSQLDATE_STARTED: TDateField
      FieldName = 'DATE_STARTED'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object TableSQLDATE_COMPLETED: TDateField
      FieldName = 'DATE_COMPLETED'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object TableSQLDURATION_DAYS: TIntegerField
      FieldName = 'DURATION_DAYS'
    end
    object TableSQLDURATION_HOURS: TIntegerField
      FieldName = 'DURATION_HOURS'
    end
    object TableSQLCOST_ACTUAL: TFloatField
      FieldName = 'COST_ACTUAL'
    end
    object TableSQLAMOUNT_ANAD: TFloatField
      FieldName = 'AMOUNT_ANAD'
    end
    object TableSQLCOMMENTS: TWideStringField
      FieldName = 'COMMENTS'
      Size = 160
    end
    object TableSQLANAD_APPROVED: TWideStringField
      FieldName = 'ANAD_APPROVED'
      Required = True
      FixedChar = True
      Size = 1
    end
    object TableSQLCOST_ESTIMATE: TFloatField
      FieldName = 'COST_ESTIMATE'
    end
    object TableSQLSTATUS: TWideStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
  end
  object WriteTrans: TIBCTransaction
    DefaultConnection = U_databaseFRM.DataConnection
    Left = 481
    Top = 485
  end
  object ReadTrans: TIBCTransaction
    DefaultConnection = U_databaseFRM.DataConnection
    IsolationLevel = iblReadOnlyReadCommitted
    Left = 368
    Top = 497
  end
  object DaySQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO SEMINAR_SUBJECT'
      '  (SERIAL_NUMBER, SUBJECT, FK_SEMINAR_SERIAL)'
      'VALUES'
      '  (:SERIAL_NUMBER, :SUBJECT, :FK_SEMINAR_SERIAL)')
    SQLDelete.Strings = (
      'DELETE FROM SEMINAR_SUBJECT'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE SEMINAR_SUBJECT'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, SUBJECT = :SUBJECT, FK_SEMINAR' +
        '_SERIAL = :FK_SEMINAR_SERIAL'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, SUBJECT, FK_SEMINAR_SERIAL FROM SEMINAR_SU' +
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
      
        'ss.serial_number as SubjectSerial,ss.fk_seminar_serial, ss.subje' +
        'ct,'
      
        'ssd.serial_number as daySerial, ssd.seminar_day,ssd.duration_hou' +
        'rs'
      'FROM'
      '    seminar_subject ss left outer join '
      
        '    seminar_subject_day ssd on  ss.serial_number = ssd.fk_semina' +
        'r_subject_serial'
      'where '
      'ss.fk_seminar_serial= :SeminarSerial')
    DetailFields = 'FK_SEMINAR_SERIAL'
    Active = True
    Left = 289
    Top = 149
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SeminarSerial'
        Value = nil
      end>
    object DaySQLSUBJECT: TWideStringField
      DisplayLabel = #920#941#956#945
      DisplayWidth = 16
      FieldName = 'SUBJECT'
      FixedChar = True
      Size = 60
    end
    object DaySQLSEMINAR_DAY: TDateField
      DisplayLabel = #924#941#961#945
      DisplayWidth = 10
      FieldName = 'SEMINAR_DAY'
      ReadOnly = True
    end
    object DaySQLDURATION_HOURS: TIntegerField
      DisplayLabel = #911#961#949#962
      DisplayWidth = 10
      FieldName = 'DURATION_HOURS'
      ReadOnly = True
    end
    object DaySQLSUBJECTSERIAL: TIntegerField
      FieldName = 'SUBJECTSERIAL'
      Required = True
      Visible = False
    end
    object DaySQLFK_SEMINAR_SERIAL: TIntegerField
      FieldName = 'FK_SEMINAR_SERIAL'
      Required = True
      Visible = False
    end
    object DaySQLDAYSERIAL: TIntegerField
      FieldName = 'DAYSERIAL'
      ReadOnly = True
      Visible = False
    end
  end
  object Sd1: TwwSearchDialog
    Selected.Strings = (
      'SEMINAR_NAME'#9'20'#9#928#949#961#953#947#961#945#966#942#9#9
      'DATE_STARTED'#9'10'#9#904#957#945#961#958#951#9#9
      'SERIAL_NUMBER'#9'10'#9#913'/'#913#9#9)
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    SearchTable = TableSQL
    ShadowSearchTable = DaySQL
    Caption = 'Search'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    OnSyncDataSets = Sd1SyncDataSets
    Left = 193
    Top = 61
  end
  object vPresenceSRC: TIBCDataSource
    DataSet = VPresenceSQL
    Left = 448
    Top = 412
  end
  object TableSRC: TIBCDataSource
    DataSet = TableSQL
    OnStateChange = TableSRCStateChange
    Left = 112
    Top = 9
  end
  object DaySRC: TIBCDataSource
    DataSet = DaySQL
    OnStateChange = TableSRCStateChange
    Left = 336
    Top = 153
  end
  object VPresenceSQL: TVirtualTable
    Active = True
    FieldDefs = <
      item
        Name = 'Name'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'percentage'
        DataType = ftInteger
      end
      item
        Name = 'PersonSerial'
        DataType = ftInteger
      end>
    Left = 320
    Top = 228
    Data = {
      0400030004004E616D6501001400000000000A0070657263656E746167650300
      0000000000000C00506572736F6E53657269616C030000000000000000000000
      0000}
    object VPresenceSQLName: TStringField
      DisplayWidth = 20
      FieldName = 'Name'
    end
    object VPresenceSQLpercentage: TIntegerField
      DisplayWidth = 10
      FieldName = 'percentage'
    end
    object VPresenceSQLPersonSerial: TIntegerField
      DisplayWidth = 10
      FieldName = 'PersonSerial'
    end
  end
end
