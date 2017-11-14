unit I_invoiceSeminar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL,G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl, vcl.Wwdbdatetimepicker,
  RzPopups, vcl.wwcheckbox, vcl.wwDialog, vcl.wwIDlg, vcl.wwmonthcalendar,
  vcl.wwlocate, VirtualTable;
type
  TI_InvoiceSeminarFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    TableSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    Label4: TLabel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    PanelX: TRzPanel;
    RzPanel3: TRzPanel;
    FirstGRP: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    SerialFLD: TRzDBLabel;
    Label5: TLabel;
    wwDBComboBox1: TwwDBComboBox;
    Nav1: TwwDBNavigator;
    Nav1Prior: TwwNavButton;
    Nav1Next: TwwNavButton;
    Nav1Button1: TwwNavButton;
    Nav1First: TwwNavButton;
    Nav1SearchDialog: TwwNavButton;
    Label1: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    TableSRC: TIBCDataSource;
    RzPanel2: TRzPanel;
    RzPanel4: TRzPanel;
    RzDBLabel1: TRzDBLabel;
    RzDBLabel2: TRzDBLabel;
    Label9: TLabel;
    RzPanel5: TRzPanel;
    RzPanel6: TRzPanel;
    SavePresBTN: TBitBtn;
    CanelBTN: TBitBtn;
    InvoiceSQL: TIBCQuery;
    InvoiceSRC: TIBCDataSource;
    wwDBNavigator2: TwwDBNavigator;
    Nav1Button: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    Nav1Insert: TwwNavButton;
    Nav1Delete: TwwNavButton;
    Nav1Post: TwwNavButton;
    Nav1Cancel: TwwNavButton;
    wwDBGrid1: TwwDBGrid;
    BitBtn1: TRzBitBtn;
    TableSQLSERIAL_NUMBER: TIntegerField;
    TableSQLFK_SEMINAR: TIntegerField;
    TableSQLSEMINAR_NAME: TWideStringField;
    TableSQLSEMINAR_CORP_TYPE: TWideStringField;
    TableSQLFK_INSTRUCTOR: TIntegerField;
    TableSQLFK_VENUE: TIntegerField;
    TableSQLDATE_STARTED: TDateField;
    TableSQLDATE_COMPLETED: TDateField;
    TableSQLDURATION_DAYS: TIntegerField;
    TableSQLDURATION_HOURS: TIntegerField;
    TableSQLFEE_ACTUAL: TFloatField;
    TableSQLAMOUNT_ANAD: TFloatField;
    TableSQLCOMMENTS: TWideStringField;
    TableSQLANAD_APPROVED: TWideStringField;
    TableSQLFEE_ESTIMATE: TFloatField;
    TableSQLSTATUS: TWideStringField;
    TableSQLIS_INVOICED: TWideStringField;
    TableSQLIS_CERTIFICATED: TWideStringField;
    TableSQLMAX_CAPACITY: TIntegerField;
    personSQL: TIBCQuery;
    personSQLFIRST_NAME: TWideStringField;
    personSQLLAST_NAME: TWideStringField;
    personSQLSERIAL_NUMBER: TIntegerField;
    InvoiceSQLSERIAL_NUMBER: TIntegerField;
    InvoiceSQLFK_SEMINAR_SERIAL: TIntegerField;
    InvoiceSQLFK_PERSON_SERIAL: TIntegerField;
    InvoiceSQLINVOICE_STATUS: TWideStringField;
    InvoiceSQLDATE_INVOICED: TDateField;
    InvoiceSQLVAT_RATE: TFloatField;
    InvoiceSQLDISCOUNT_BY_SAFE: TFloatField;
    InvoiceSQLDISCOUNT_CUSTOMER: TFloatField;
    InvoiceSQLAMOUNT_GROSS: TFloatField;
    InvoiceSQLAMOUNT_NET: TFloatField;
    InvoiceSQLAMOUNT_VAT: TFloatField;
    InvoiceSQLAMOUNT_WITH_VAT: TFloatField;
    InvoiceSQLFirstName: TStringField;
    InvoiceSQLLastName: TStringField;
    InvoiceSQLIS_ANAD: TWideStringField;
    Label6: TLabel;
    Label7: TLabel;
    wwCheckBox2: TwwCheckBox;
    TableSQLFK_COMPANY_PERSON_SERIAL: TIntegerField;
    TableSQLFEE_WITH_ANAD_SUB: TFloatField;
    AnadCheckFLD: TwwCheckBox;
    FirstFLD: TRzDBLabel;
    Companylbl: TLabel;
    TableSQLLAST_NAME: TWideStringField;
    RzDBLabel3: TRzDBLabel;
    wwDBEdit1: TRzDBLabel;
    wwDBEdit2: TRzDBLabel;
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure DateFLDClick(Sender: TObject);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure SavePresBTNClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CanelBTNClick(Sender: TObject);
    procedure AnadCheckFLDClick(Sender: TObject);
    procedure TableSQLAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    cn:TIBCConnection;
    procedure GenerateInvoices(Const SeminarSerial:integer);
    procedure GetInvoices();
  public
    { Public declarations }
    IN_ACTION:String;

  end;

var
  I_InvoiceSeminarFRM: TI_InvoiceSeminarFRM;

implementation

uses   U_Database, G_generalProcs;


{$R *.DFM}

procedure TI_InvoiceSeminarFRM.TableSQLAfterScroll(DataSet: TDataSet);
begin
  GetInvoices();
end;


procedure TI_InvoiceSeminarFRM.GetInvoices();
var
  SEminarSerial:Integer;
begin

  SEminarSerial := TableSQL.FieldByName('serial_number').AsInteger;
  if personSQL.Active then
    personSQL.Close;
  personSQL.ParamByName('SeminarSerial').Value:=seminarSerial;
  personSQL.Open;

  if invoiceSQL.Active then
    InvoiceSQL.Close;
  InvoiceSQL.ParamByName('SeminarSerial').Value:=seminarSerial;
  InvoiceSQL.Open;


end;

procedure TI_InvoiceSeminarFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TI_InvoiceSeminarFRM.wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
getInvoices();
end;

procedure TI_InvoiceSeminarFRM.RzBitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TI_InvoiceSeminarFRM.DateFLDClick(Sender: TObject);
var
  aDate:TDate;
begin

end;

procedure TI_InvoiceSeminarFRM.FormActivate(Sender: TObject);
begin
ksOpenTables([TableSQL]);
end;

procedure TI_InvoiceSeminarFRM.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin

  Canclose:= not InvoiceSQL.UpdatesPending;
  if not CanClose then
    showMessage('Save Or Cancel before Exit');
end;

procedure TI_InvoiceSeminarFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;



procedure TI_InvoiceSeminarFRM.SavePresBTNClick(Sender: TObject);
VAR
  dataset:TIBCQuery;
  str:String;
begin

  if InvoiceSQL.State in [dsEdit,dsInsert] then begin
    InvoiceSQL.Post;
  end;

  if not InvoiceSQL.UpdatesPending then begin
   showMessage('no updates');
   exit;
  end;

  //  if not InvoiceSQL.Connection.DefaultTransaction.Active then NOPEE!
  if not InvoiceSQL.Connection.InTransaction then
    InvoiceSQL.Connection.StartTransaction;

  try
    InvoiceSQL.Connection.ApplyUpdates;//it will commit because applyupdates is on the connection
  except
    InvoiceSQL.Connection.Rollback;
    InvoiceSQL.RestoreUpdates;
    raise;
  end;

end;



procedure TI_InvoiceSeminarFRM.GenerateInvoices(Const SeminarSerial:integer);
var
  qr:TksQuery;
  str:String;
  SerialNumber:integer;
  isMono:Boolean;
  PriceNormal,PriceAnad:Double;

  PersonSerial:Integer;
  amountVat:Double;
  AmountTotal:Double;
  DiscountNormal:Double;
  DiscountSafe:Double;

  vatRate:Double;
begin

  VatRate:=19;
  ksExecSQLVar(cn,'delete from invoice where fk_seminar_serial= :SeminarSerial',[SeminarSerial]);
//  invoiceSQL.Refresh;

  qr:= TksQuery.Create(cn,'select * from seminar where serial_number= :SeminarSerial');
  try
    qr.ParamByName('seminarSerial').value:=SeminarSerial;
    qr.open;
    isMono:=qr.FieldByName('SEMINAR_CORP_TYPE').Value='M';
    PriceNormal:=qr.FieldByName('fee_actual').AsFloat;
    PriceANAD:=qr.FieldByName('fee_with_ANAD_Sub').AsFloat;
  finally
    qr.Free;
  end;

  //////////////////////////////////////////////////////////////////
  ///
  if isMono then begin
    str:= 'select sem.fk_company_person_serial as companySerial from seminar sem where sem.serial_number= :SeminarSerial';
  end else begin
    str:= 'select * from seminar_person sp where sp.fk_seminar_serial= :SeminarSerial and sp.is_guest<>''Y'' ';

  end;

  /////////////////////////////////////////////////////////////////

  qr:= TksQuery.Create(cn,str);
  try
    qr.ParamByName('seminarSerial').value:=SeminarSerial;
    qr.open;

    if not INvoiceSQL.Active then
      InvoiceSql.Open;

    while not qr.Eof do begin
        if isMono then
          PersonSerial:=qr.FieldByName('CompanySerial').AsInteger
        else
          PersonSerial:=qr.FieldByName('fk_person_serial').AsInteger;

        SerialNumber:=ksGenerateSerial(cn,'GEN_INVOICE');

        InvoiceSQL.Insert;
        InvoiceSQL.FieldByName('serial_number').Value:=SerialNumber;
        InvoiceSQL.FieldByName('fk_seminar_serial').Value:=SEminarSerial;
        InvoiceSQL.FieldByName('fk_PERSON_serial').Value:=PersonSerial;
        InvoiceSQL.FieldByName('AMOUNT_GROSS').Value:=PriceAnad;
        InvoiceSQL.FieldByName('Discount_Customer').Value:=0;
        InvoiceSQL.FieldByName('Discount_by_safe').Value:=0;;
        InvoiceSQL.FieldByName('AMOUNT_GROSS').Value:=PriceAnad;
        AmountVat:= PriceAnad* vatRate/100;
        AmountTotal:=PriceAnad+amountVat;
        InvoiceSQL.FieldByName('AMOUNT_VAT').Value:=AmountVAT;
        InvoiceSQL.FieldByName('AMOUNT_With_vat').Value:=AmountTotal;
        InvoiceSQL.FieldByName('IS_ANAD').Value:='Y';
        InvoiceSQL.FieldByName('Invoice_status').Value:='U';
        InvoiceSQL.FieldByName('DATE_INVOICED').Value:=NOW;
        InvoiceSQL.Post;
        qr.Next;
    end;
  finally
    qr.Free;
  end;





end;


procedure TI_InvoiceSeminarFRM.AnadCheckFLDClick(Sender: TObject);
var
  seminar:integer;
  amountActual,amountAnad:double;
  amount:double;

begin
//ShowMessage(InvoiceSQL.FieldByName('is_anad').AsString);
  if InvoiceSQL.State in [dsInactive] then
    exit;

amountActual:=TableSQL.FieldByName('fee_actual').AsFloat;
amountAnad:=TableSQL.FieldByName('fee_with_anad_sub').AsFloat;
  if InvoiceSQL.State in [dsBrowse] then InvoiceSQL.Edit;

  if AnadCheckfld.Checked then
    InvoiceSQL.FieldByName('amount_gross').Value:=AmountAnad
  else
    InvoiceSQL.FieldByName('amount_gross').Value:=AmountActual;

//  InvoiceSQL.Post;

end;

procedure TI_InvoiceSeminarFRM.BitBtn1Click(Sender: TObject);
var
  SeminarSerial:Integer;
begin

  SeminarSerial:=TableSQL.FieldByName('serial_number').AsInteger;

 personSQL.Close;
 personSQL.ParamByName('seminarSerial').Value:=SeminarSErial;
 personSQL.Open;

   if not InvoiceSQL.Connection.InTransaction then
    InvoiceSQL.Connection.StartTransaction;

  GenerateInvoices(seminarSerial);
//  InvoiceSQL.Refresh;
end;

procedure TI_InvoiceSeminarFRM.Button1Click(Sender: TObject);
var
  seminarSerial:Integer;
begin
end;

procedure TI_InvoiceSeminarFRM.CanelBTNClick(Sender: TObject);
begin


  InvoiceSQL.Cancel;
  if  InvoiceSQL.UpdatesPending then begin
//    InvoiceSQL.CancelUpdates;

    if InvoiceSQL.Connection.InTransaction then
//      InvoiceSQL.Connection.StartTransaction;
      INvoiceSQL.Connection.Rollback;

  end;

end;

End.
