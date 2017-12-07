unit I_invoiceSeminar;

interface

uses
  Windows, Messages, SysUtils,Math, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL,G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl, vcl.Wwdbdatetimepicker,
  RzPopups, vcl.wwcheckbox, vcl.wwDialog, vcl.wwIDlg, vcl.wwmonthcalendar,
  vcl.wwlocate, VirtualTable, Vcl.Menus;
type
  TI_InvoiceSeminarFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    Label4: TLabel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    PanelX: TRzPanel;
    RzPanel3: TRzPanel;
    RzPanel2: TRzPanel;
    RzPanel4: TRzPanel;
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
    InvoiceGRD: TwwDBGrid;
    InvoiceBTN: TRzBitBtn;
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
    AnadCheckFLD: TwwCheckBox;
    Read1: TIBCTransaction;
    write1: TIBCTransaction;
    TableSQL: TIBCQuery;
    TableSRC: TIBCDataSource;
    TableSQLSERIAL_NUMBER: TIntegerField;
    TableSQLFK_SEMINAR: TIntegerField;
    TableSQLFK_INSTRUCTOR: TIntegerField;
    TableSQLFK_VENUE: TIntegerField;
    TableSQLFK_COMPANY_PERSON_SERIAL: TIntegerField;
    TableSQLSEMINAR_NAME: TWideStringField;
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
    TableSQLFEE_WITH_ANAD_SUB: TFloatField;
    TableSQLHAS_EXPIRY: TWideStringField;
    TableSQLEXPIRY_PERIOD: TIntegerField;
    TableSQLANAD_NUMBER: TWideStringField;
    TableSQLFK_EXAMINER: TIntegerField;
    TableSQLTYPE_MONO_POLY: TWideStringField;
    TableSQLSEM_CATEGORY: TWideStringField;
    MainMenu1: TMainMenu;
    Reports1: TMenuItem;
    N3: TMenuItem;
    FirstGRP: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    SerialFLD: TRzDBLabel;
    Label5: TLabel;
    Label1: TLabel;
    RzDBLabel1: TRzDBLabel;
    RzDBLabel2: TRzDBLabel;
    Label6: TLabel;
    Label7: TLabel;
    Companylbl: TLabel;
    RzDBLabel3: TRzDBLabel;
    wwDBEdit1: TRzDBLabel;
    wwDBEdit2: TRzDBLabel;
    Label9: TLabel;
    RzDBLabel4: TRzDBLabel;
    RzDBLabel5: TRzDBLabel;
    wwDBComboBox1: TwwDBComboBox;
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure DateFLDClick(Sender: TObject);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure SavePresBTNClick(Sender: TObject);
    procedure InvoiceBTNClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CanelBTNClick(Sender: TObject);
    procedure AnadCheckFLDClick(Sender: TObject);
    procedure TableSQLAfterScroll(DataSet: TDataSet);
    procedure InvoiceGRDColEnter(Sender: TObject);
    procedure InvoiceSQLBeforePost(DataSet: TDataSet);
    procedure InvoiceGRDCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
    VatRate:Double;
    cn:TIBCConnection;
    procedure GenerateInvoices(Const SeminarSerial:integer);
    procedure GetInvoices();
  public
    { Public declarations }
    IN_ACTION:String;
    IN_seminar_serial:Integer;
  end;

var
  I_InvoiceSeminarFRM: TI_InvoiceSeminarFRM;

implementation

uses   U_Database, G_generalProcs, R_invoices;


{$R *.DFM}

procedure TI_InvoiceSeminarFRM.TableSQLAfterScroll(DataSet: TDataSet);
var
  isInvoiced:Boolean;
  isApproved:boolean;
begin
    isAPproved:=Dataset.FieldByName('status').AsString='A';
    invoiceBTN.Enabled:=isApproved;
    GetInvoices();
end;


procedure TI_InvoiceSeminarFRM.GetInvoices();
var
  SEminarSerial:Integer;
begin

  SEminarSerial := IN_seminar_serial;
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


procedure TI_InvoiceSeminarFRM.InvoiceGRDCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if (field.FieldName='AMOUNT_VAT')OR (field.FieldName='AMOUNT_WITH_VAT') then begin
    Abrush.Color:=clBtnFace;
  end;
end;

procedure TI_InvoiceSeminarFRM.InvoiceGRDColEnter(Sender: TObject);
var
  selectedField:String;
begin
  SelectedFIeld:=InvoiceGRD.SelectedField.FieldName;
  if (selectedField ='AMOUNT_VAT')OR(selectedFIeld='AMOUNT_WITH_VAT') then begin
    InvoiceGRD.SetActiveField('discount_customer');
  end;
end;

procedure TI_InvoiceSeminarFRM.InvoiceSQLBeforePost(DataSet: TDataSet);
Var
  vatAMount,AmountForVat:Double;
  Gross,DiscountCust,DiscountSafe:Double;
  AmountCharged:DOuble;
begin

  AmountForVat:=Dataset.FieldByName('amount_gross').AsFloat -Dataset.FieldByName('Discount_customer').AsFloat;
  VatAmount:=AmountForVat *Dataset.FieldByName('vat_rate').AsFloat/100.00;
  AmountCharged:= AmountForVat -Dataset.FieldByName('Discount_by_safe').AsFloat + VAtAmount;

  VatAmount:=Max(0,VatAmount);
  AmountCharged:=Max(0,AmountCharged);
  Dataset.FieldByName('amount_vat').Value:=VatAmount;
  Dataset.FieldByName('amount_with_vat').Value:=AmountCharged;
//

end;

procedure TI_InvoiceSeminarFRM.N3Click(Sender: TObject);
vAR
  Frm:TR_InvoicesFRM;
  seminarSerial:Integer;

begin
  seminarSerial:=TableSQL.FieldByName('serial_number').AsInteger;

  frm :=  TR_InvoicesFRM.Create(nil);
  frm.IN_SeminarSerial :=seminarSerial;
  frm.IN_Invoiceserial:=0;
//  frm.IN_Day_Serial :=0;
  try
    frm.PrintSeminar();
  finally
    frm.Free;
  end;
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
var
  params:G_generalProcs.TParameterRecord;
begin

  personSQL.Close;
  personSQL.ParamByName('SeminarSerial').Value:=IN_seminar_serial;
  personSQL.Open;


  if not InvoiceSQL.UpdateTransaction.Active then
     InvoiceSQL.UpdateTransaction.StartTransaction;

  TableSQL.Close;
  TableSQL.ParamByName('seminarSerial').Value:= IN_seminar_serial;
  TableSQL.open;

  InvoiceSQL.Close;
  InvoiceSQL.ParamByName('seminarSerial').Value:= IN_seminar_serial;
  InvoiceSQL.open;


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
  PriceNormal,PriceAnad,PriceUsed:Double;

  PersonSerial:Integer;
  amountVat:Double;
  AmountTotal:Double;
  DiscountNormal:Double;
  DiscountSafe:Double;
  isFOund:Boolean;

  vatRate:Double;
begin

//  VatRate:=StrToFloatDef(VatFLD.Text,0);

//  ksExecSQLVar(cn,'delete from invoice where fk_seminar_serial= :SeminarSerial',[SeminarSerial]);
  invoiceSQL.Close;
  invoiceSQL.Open;

  qr:= TksQuery.Create(cn,'select * from seminar where serial_number= :SeminarSerial');
  try
    qr.ParamByName('seminarSerial').value:=SeminarSerial;
    qr.open;
    isMono:=qr.FieldByName('TYPE_MONO_POLY').Value='M';
    PriceNormal:=qr.FieldByName('fee_actual').AsFloat;
    PriceANAD:=qr.FieldByName('fee_with_ANAD_Sub').AsFloat;    //take this as default
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

        isFound:=ksCountRecVarSQL(cn,'select * from invoice where fk_seminar_serial=:Seminar and fk_person_serial= :person',[SeminarSerial,PersonSerial])>0;
        if isFound then begin
          qr.Next;
          continue;
        end;

        SerialNumber:=ksGenerateSerial(cn,'GEN_INVOICE');

        InvoiceSQL.Insert;
        InvoiceSQL.FieldByName('serial_number').Value:=SerialNumber;
        InvoiceSQL.FieldByName('fk_seminar_serial').Value:=SEminarSerial;
        InvoiceSQL.FieldByName('fk_PERSON_serial').Value:=PersonSerial;


        InvoiceSQL.FieldByName('AMOUNT_GROSS').Value:=PriceAnad;

        InvoiceSQL.FieldByName('Discount_Customer').Value:=0;
        InvoiceSQL.FieldByName('Discount_by_safe').Value:=0;;
        InvoiceSQL.FieldByName('AMOUNT_GROSS').AsFloat:=PriceAnad;
        InvoiceSQL.FieldByName('VAT_RATE').AsFloat:=VatRate;
//        AmountVat:= PriceAnad* vatRate/100.00;
//        AmountTotal:=PriceAnad+amountVat;
//        InvoiceSQL.FieldByName('AMOUNT_VAT').AsFloat:=AmountVAT;
//        InvoiceSQL.FieldByName('AMOUNT_With_vat').AsFloat:=AmountTotal;
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

begin
//  InvoiceSQL.Post;

end;

procedure TI_InvoiceSeminarFRM.InvoiceBTNClick(Sender: TObject);
var
  SeminarSerial:Integer;
begin

  SeminarSerial:=IN_seminar_serial;


//   if not InvoiceSQL.Connection.InTransaction then
//    InvoiceSQL.Connection.StartTransaction;
    if not InvoiceSQL.UpdateTransaction.Active then
      InvoiceSQL.UpdateTransaction.StartTransaction;



 personSQL.Close;
 personSQL.ParamByName('seminarSerial').Value:=SeminarSErial;
 personSQL.Open;


  GenerateInvoices(seminarSerial);

  if InvoiceSQL.UpdateTransaction.Active then
      InvoiceSQL.UpdateTransaction.commit;

//   if  InvoiceSQL.Connection.InTransaction then
//    InvoiceSQL.Connection.Commit;
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
    InvoiceSQL.CancelUpdates;
//    if InvoiceSQL.Connection.InTransaction then  NO NEED FOR THIS
//      INvoiceSQL.Connection.Rollback;

  end;

end;

End.
