unit P_makePayment;

interface

uses WinApi.Windows, System.SysUtils, System.Classes, Vcl.Graphics,
  Vcl.Forms, Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, RzPanel,
  Data.DB, MemDS, DBAccess, IBC, vcl.Wwdotdot, vcl.Wwdbcomb,
  vcl.Wwdbdatetimepicker, vcl.wwcheckbox, Vcl.Mask, vcl.Wwdbedit, RzLabel,
  RzDBLbl;

type
  TP_MakePaymentFRM = class(TForm)
    Panel4: TRzPanel;
    RzPanel1: TRzPanel;
    BitBtn1: TBitBtn;
    CanelBTN: TBitBtn;
    Panel1: TRzPanel;
    RzPanel2: TRzPanel;
    PaymentSql: TIBCQuery;
    PaymentSrc: TDataSource;
    WriteTrans: TIBCTransaction;
    m: TIBCTransaction;
    SecondGRP: TRzGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    wwDBEdit2: TwwDBEdit;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    PayTypeFLD: TwwDBComboBox;
    RzDBLabel1: TRzDBLabel;
    PaymentSqlSERIAL_NUMBER: TIntegerField;
    PaymentSqlFK_INVOICE_SERIAL: TIntegerField;
    PaymentSqlAMOUNT_PAID: TFloatField;
    PaymentSqlPAYMENT_METHOD: TWideStringField;
    PaymentSqlDATE_PAYMENT: TDateField;
    PaymentSqlCHEQUE_NUMBER: TWideStringField;
    PaymentSqlFK_PAYMENT_PERSON: TIntegerField;
    PaymentSqlPERSON_NAME: TWideStringField;
    Label3: TLabel;
    RzDBLabel2: TRzDBLabel;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CanelBTNClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  procedure MakePayment(const InvoiceSerial:Integer);
  public
    { Public declarations }
    IN_INVOICE_SERIAL:integer;
  end;

var
  P_MakePaymentFRM: TP_MakePaymentFRM;

implementation

{$R *.dfm}

uses U_Database, G_KyrSQL;

procedure TP_MakePaymentFRM.BitBtn1Click(Sender: TObject);
begin
IF PaymentSql.State in [dsInsert] then begin
  paymentSQL.Post;
  close;
end;

end;

procedure TP_MakePaymentFRM.CanelBTNClick(Sender: TObject);
begin
  paymentSQL.cancel;
  close;
end;

procedure TP_MakePaymentFRM.FormActivate(Sender: TObject);
begin
  if IN_INVOICE_SERIAL<1 then begin
    close;
  end;
  MakePayment(IN_INVOICE_SERIAL);
end;

procedure TP_MakePaymentFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;

end;

procedure TP_MakePaymentFRM.MakePayment(const InvoiceSerial:Integer);
var
  i:integer;
  qr:TksQuery;
  str:string;
begin
  str:=
  ' select inv.amount_with_vat, per.*'
  +'  from'
  +'  invoice inv left outer join'
  +'  person_view per on inv.fk_person_serial= per.serial_number';
  try
    qr:=TksQuery.Create(cn,str);
    qr.ParamByName('invoiceSerial').Value:=InvoiceSerial;
    qr.Open;
    PaymentSQL.Close;
    PaymentSQL.Open;
    PaymentSQL.Insert;
    PaymentSQL.FieldByName('fk_invoice_serial').AsInteger:=IN_INVOICE_SERIAL;
    PaymentSQL.FieldByName('DATE_PAYMENT').AsInteger:=DATE;
    PaymentSQL.FieldByName('person_name').value:=qr.FieldByName('FIRST_last_name').AsString;
    PaymentSQL.FieldByName('amount_paid').value:=qr.FieldByName('AMOUNT_WITH_VAT').AsFloat;


  finally
    qr.Free;
  end;



end;


end.

