object P_MakePaymentFRM: TP_MakePaymentFRM
  Left = 200
  Top = 108
  BorderStyle = bsDialog
  Caption = 'About'
  ClientHeight = 317
  ClientWidth = 348
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TRzPanel
    Left = 0
    Top = 274
    Width = 348
    Height = 43
    Align = alBottom
    BorderOuter = fsFlatRounded
    TabOrder = 0
    ExplicitLeft = -654
    ExplicitTop = 210
    ExplicitWidth = 1048
    object RzPanel1: TRzPanel
      Left = 246
      Top = 2
      Width = 100
      Height = 39
      Align = alRight
      BorderOuter = fsNone
      TabOrder = 0
      ExplicitLeft = 946
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
  object Panel1: TRzPanel
    Left = 0
    Top = 0
    Width = 348
    Height = 53
    Align = alTop
    BorderOuter = fsFlatRounded
    Caption = #928#955#951#961#969#956#942
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    ExplicitLeft = -654
    ExplicitWidth = 1048
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 53
    Width = 348
    Height = 221
    Align = alClient
    BorderOuter = fsFlatRounded
    TabOrder = 2
    ExplicitWidth = 369
    object SecondGRP: TRzGroupBox
      Left = 34
      Top = 21
      Width = 295
      Height = 178
      Caption = #928#955#951#961#959#966#959#961#943#949#962
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 12
        Top = 82
        Width = 63
        Height = 14
        Caption = #919#956#949#961#959#956#951#957#943#945
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 46
        Top = 146
        Width = 29
        Height = 14
        Caption = #928#959#963#972
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 38
        Top = 55
        Width = 37
        Height = 14
        Caption = #908#957#959#956#945
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 34
        Top = 118
        Width = 41
        Height = 14
        Caption = #932#961#972#960#959#962
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RzDBLabel1: TRzDBLabel
        Left = 81
        Top = 54
        Width = 208
        Height = 22
        ParentColor = False
        Layout = tlCenter
        BorderOuter = fsFlat
        DataField = 'PERSON_NAME'
        DataSource = PaymentSrc
      end
      object Label3: TLabel
        Left = 54
        Top = 27
        Width = 21
        Height = 14
        Caption = 'A/A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object RzDBLabel2: TRzDBLabel
        Left = 81
        Top = 23
        Width = 90
        Height = 22
        Alignment = taRightJustify
        ParentColor = False
        Layout = tlCenter
        BorderOuter = fsFlat
        DataField = 'SERIAL_NUMBER'
        DataSource = PaymentSrc
      end
      object wwDBEdit2: TwwDBEdit
        Left = 81
        Top = 143
        Width = 90
        Height = 22
        DataField = 'AMOUNT_PAID'
        DataSource = PaymentSrc
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBDateTimePicker1: TwwDBDateTimePicker
        Left = 81
        Top = 79
        Width = 90
        Height = 22
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'Tahoma'
        CalendarAttributes.Font.Style = []
        DataField = 'DATE_PAYMENT'
        DataSource = PaymentSrc
        Epoch = 1950
        ShowButton = True
        TabOrder = 1
      end
      object PayTypeFLD: TwwDBComboBox
        Left = 81
        Top = 116
        Width = 90
        Height = 21
        ShowButton = True
        Style = csDropDownList
        MapList = True
        AllowClearKey = False
        AutoDropDown = True
        ShowMatchText = True
        DataField = 'PAYMENT_METHOD'
        DataSource = PaymentSrc
        DropDownCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemHeight = 0
        Items.Strings = (
          'Cash'#9'C'
          'Cheque'#9'Q'
          'Visa'#9'Visa')
        ItemIndex = 0
        ParentFont = False
        Sorted = False
        TabOrder = 2
        UnboundDataType = wwDefault
      end
    end
  end
  object PaymentSql: TIBCQuery
    KeyFields = 'SERIAL_NUMBER'
    KeyGenerator = 'GEN_INVOICE_PAYMENT'
    SQLInsert.Strings = (
      'INSERT INTO INVOICE_PAYMENT'
      
        '  (SERIAL_NUMBER, FK_INVOICE_SERIAL, AMOUNT_PAID, PAYMENT_METHOD' +
        ', DATE_PAYMENT, CHEQUE_NUMBER, FK_PAYMENT_PERSON, PERSON_NAME)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :FK_INVOICE_SERIAL, :AMOUNT_PAID, :PAYMENT_ME' +
        'THOD, :DATE_PAYMENT, :CHEQUE_NUMBER, :FK_PAYMENT_PERSON, :PERSON' +
        '_NAME)')
    SQLDelete.Strings = (
      'DELETE FROM INVOICE_PAYMENT'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE INVOICE_PAYMENT'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, FK_INVOICE_SERIAL = :FK_INVOIC' +
        'E_SERIAL, AMOUNT_PAID = :AMOUNT_PAID, PAYMENT_METHOD = :PAYMENT_' +
        'METHOD, DATE_PAYMENT = :DATE_PAYMENT, CHEQUE_NUMBER = :CHEQUE_NU' +
        'MBER, FK_PAYMENT_PERSON = :FK_PAYMENT_PERSON, PERSON_NAME = :PER' +
        'SON_NAME'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, FK_INVOICE_SERIAL, AMOUNT_PAID, PAYMENT_ME' +
        'THOD, DATE_PAYMENT, CHEQUE_NUMBER, FK_PAYMENT_PERSON, PERSON_NAM' +
        'E FROM INVOICE_PAYMENT'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM INVOICE_PAYMENT'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM INVOICE_PAYMENT'
      ''
      ') q')
    Connection = U_databaseFRM.DataConnection
    SQL.Strings = (
      'select * from Invoice_payment ')
    MasterFields = 'SERIAL_NUMBER'
    DetailFields = 'FK_INVOICE_SERIAL'
    Options.AutoClose = True
    Active = True
    Left = 9
    Top = 121
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SERIAL_NUMBER'
        Value = nil
      end>
    object PaymentSqlSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object PaymentSqlFK_INVOICE_SERIAL: TIntegerField
      FieldName = 'FK_INVOICE_SERIAL'
      Required = True
    end
    object PaymentSqlAMOUNT_PAID: TFloatField
      FieldName = 'AMOUNT_PAID'
      Required = True
    end
    object PaymentSqlPAYMENT_METHOD: TWideStringField
      FieldName = 'PAYMENT_METHOD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object PaymentSqlDATE_PAYMENT: TDateField
      FieldName = 'DATE_PAYMENT'
      Required = True
    end
    object PaymentSqlCHEQUE_NUMBER: TWideStringField
      FieldName = 'CHEQUE_NUMBER'
      FixedChar = True
      Size = 30
    end
    object PaymentSqlFK_PAYMENT_PERSON: TIntegerField
      FieldName = 'FK_PAYMENT_PERSON'
      Required = True
    end
    object PaymentSqlPERSON_NAME: TWideStringField
      FieldName = 'PERSON_NAME'
      Size = 80
    end
  end
  object PaymentSrc: TDataSource
    DataSet = PaymentSql
    Left = 8
    Top = 81
  end
  object WriteTrans: TIBCTransaction
    DefaultConnection = U_databaseFRM.DataConnection
    Left = 257
    Top = 5
  end
  object m: TIBCTransaction
    DefaultConnection = U_databaseFRM.DataConnection
    IsolationLevel = iblReadOnlyReadCommitted
    Left = 296
    Top = 9
  end
end
