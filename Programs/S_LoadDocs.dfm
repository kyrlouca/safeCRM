object S_LoadDocsFRM: TS_LoadDocsFRM
  Left = 365
  Top = 153
  Caption = 'Instructor'
  ClientHeight = 558
  ClientWidth = 701
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 701
    Height = 53
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 530
    object Label4: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 693
      Height = 45
      Align = alClient
      Alignment = taCenter
      Caption = 'Load Documents'
      Layout = tlCenter
      ExplicitWidth = 225
      ExplicitHeight = 32
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 515
    Width = 701
    Height = 43
    Align = alBottom
    TabOrder = 1
    ExplicitWidth = 530
    object RzPanel1: TRzPanel
      Left = 600
      Top = 1
      Width = 100
      Height = 41
      Align = alRight
      BorderOuter = fsNone
      TabOrder = 0
      ExplicitLeft = 429
      object RzBitBtn1: TRzBitBtn
        Left = 6
        Top = 3
        Width = 73
        Height = 34
        Caption = 'Close'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
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
    Width = 701
    Height = 39
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 530
    object Nav1: TwwDBNavigator
      Left = 1
      Top = 7
      Width = 200
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
        Width = 34
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
        Left = 34
        Top = 0
        Width = 34
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
        Index = 1
        Style = nbsNext
      end
      object Nav1Insert: TwwNavButton
        Left = 68
        Top = 0
        Width = 33
        Height = 26
        Hint = 'Insert new record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'Nav1Insert'
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 2
        Style = nbsInsert
      end
      object Nav1Delete: TwwNavButton
        Left = 101
        Top = 0
        Width = 33
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
        Index = 3
        Style = nbsDelete
      end
      object Nav1Post: TwwNavButton
        Left = 134
        Top = 0
        Width = 33
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
        Index = 4
        Style = nbsPost
      end
      object Nav1Cancel: TwwNavButton
        Left = 167
        Top = 0
        Width = 33
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
        Index = 5
        Style = nbsCancel
      end
    end
    object SearchFieldFLD: TwwIncrementalSearch
      Left = 224
      Top = 10
      Width = 265
      Height = 19
      Cursor = crHandPoint
      Frame.Enabled = True
      Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
      Frame.FocusStyle = efsFrameSingle
      Frame.NonFocusStyle = efsFrameSunken
      DataSource = TableSRC
      SearchField = 'STATION_ID'
      ShowMatchText = True
      SearchDelay = 100
      AutoSize = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 92
    Width = 701
    Height = 423
    Align = alClient
    TabOrder = 3
    ExplicitWidth = 530
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 699
      Height = 224
      Align = alTop
      BevelOuter = bvNone
      Locked = True
      TabOrder = 0
      ExplicitWidth = 528
      object GroupBox1: TGroupBox
        Left = 6
        Top = 5
        Width = 473
        Height = 164
        Caption = 'Details'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label2: TLabel
          Left = 9
          Top = 49
          Width = 56
          Height = 14
          Caption = 'Doc Name'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 37
          Top = 22
          Width = 28
          Height = 14
          Caption = 'Code'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 8
          Top = 73
          Width = 57
          Height = 14
          Caption = 'Poly/Mono'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object NameFLD: TwwDBEdit
          Left = 72
          Top = 46
          Width = 369
          Height = 21
          BorderStyle = bsNone
          DataField = 'DOC_NAME'
          DataSource = TableSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Enabled = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameSingle
          Frame.NonFocusStyle = efsFrameSunken
          ParentFont = False
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object StationIdFLD: TwwDBEdit
          Left = 72
          Top = 19
          Width = 52
          Height = 21
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'CODE_KEY'
          DataSource = TableSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Enabled = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameSingle
          Frame.NonFocusStyle = efsFrameSunken
          ParentFont = False
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit1: TwwDBEdit
          Left = 72
          Top = 73
          Width = 89
          Height = 21
          BorderStyle = bsNone
          DataField = 'POLY_MONO'
          DataSource = TableSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Enabled = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameSingle
          Frame.NonFocusStyle = efsFrameSunken
          ParentFont = False
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object SavetoDB: TRzBitBtn
          Left = 9
          Top = 116
          Width = 121
          Height = 37
          Caption = 'Select and Save'
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 3
          OnClick = SavetoDBClick
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
        object Button1: TButton
          Left = 168
          Top = 128
          Width = 137
          Height = 25
          Caption = 'Write to File'
          TabOrder = 4
          OnClick = Button1Click
        end
      end
      object wwButton1: TwwButton
        Left = 552
        Top = 121
        Width = 75
        Height = 25
        Caption = 'wwButton1'
        Color = clBtnFace
        DitherColor = clWhite
        DitherStyle = wwdsDither
        NumGlyphs = 0
        ShadeStyle = wwbsNormal
        TabOrder = 1
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = wwButton1Click
      end
    end
    object Grid1: TwwDBGrid
      Left = 1
      Top = 225
      Width = 699
      Height = 197
      Selected.Strings = (
        'CODE_KEY'#9'11'#9'CODE_KEY'
        'DOC_NAME'#9'32'#9'DOC_NAME'
        'POLY_MONO'#9'13'#9'POLY_MONO')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
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
      TitleButtons = False
      ExplicitWidth = 528
    end
  end
  object TableSRC: TDataSource
    DataSet = TableSQL
    Left = 112
    Top = 9
  end
  object TableSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO WORD_DOCS'
      '  (POLY_MONO, CODE_KEY, DOC_NAME, DOC_BLOB)'
      'VALUES'
      '  (:POLY_MONO, :CODE_KEY, :DOC_NAME, :DOC_BLOB)')
    SQLDelete.Strings = (
      'DELETE FROM WORD_DOCS'
      'WHERE'
      '  CODE_KEY = :Old_CODE_KEY')
    SQLUpdate.Strings = (
      'UPDATE WORD_DOCS'
      'SET'
      
        '  POLY_MONO = :POLY_MONO, CODE_KEY = :CODE_KEY, DOC_NAME = :DOC_' +
        'NAME, DOC_BLOB = :DOC_BLOB'
      'WHERE'
      '  CODE_KEY = :Old_CODE_KEY')
    SQLRefresh.Strings = (
      'SELECT POLY_MONO, CODE_KEY, DOC_NAME, DOC_BLOB FROM WORD_DOCS'
      'WHERE'
      '  CODE_KEY = :CODE_KEY')
    SQLLock.Strings = (
      'SELECT NULL FROM WORD_DOCS'
      'WHERE'
      'CODE_KEY = :Old_CODE_KEY'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM WORD_DOCS'
      ''
      ') q')
    Connection = U_databaseFRM.DataConnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM'
      'Word_docs'
      '')
    Active = True
    Left = 49
    Top = 5
    object TableSQLCODE_KEY: TWideStringField
      DisplayWidth = 11
      FieldName = 'CODE_KEY'
      Required = True
      Size = 10
    end
    object TableSQLDOC_NAME: TWideStringField
      DisplayWidth = 32
      FieldName = 'DOC_NAME'
      Size = 160
    end
    object TableSQLPOLY_MONO: TWideStringField
      DisplayWidth = 13
      FieldName = 'POLY_MONO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object TableSQLDOC_BLOB: TBlobField
      FieldName = 'DOC_BLOB'
      Visible = False
    end
  end
  object WriteTrans: TIBCTransaction
    DefaultConnection = U_databaseFRM.DataConnection
    Active = True
    Left = 297
    Top = 221
  end
  object ReadTrans: TIBCTransaction
    DefaultConnection = U_databaseFRM.DataConnection
    IsolationLevel = iblReadOnlyReadCommitted
    Active = True
    Left = 288
    Top = 169
  end
  object OD1: TOpenDialog
    Left = 328
    Top = 392
  end
end
