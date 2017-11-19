unit I_certificates;

interface

uses
  Windows, Messages, SysUtils,Math, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL,G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl, vcl.Wwdbdatetimepicker,
  RzPopups, vcl.wwcheckbox, vcl.wwDialog, vcl.wwIDlg, vcl.wwmonthcalendar,
  vcl.wwlocate, VirtualTable;
type
  TI_CertificatesFRM = class(TForm)
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
    Label1: TLabel;
    TableSRC: TIBCDataSource;
    RzPanel2: TRzPanel;
    RzDBLabel1: TRzDBLabel;
    RzDBLabel2: TRzDBLabel;
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
    Label6: TLabel;
    Label7: TLabel;
    TableSQLFK_COMPANY_PERSON_SERIAL: TIntegerField;
    TableSQLFEE_WITH_ANAD_SUB: TFloatField;
    FirstFLD: TRzDBLabel;
    Companylbl: TLabel;
    TableSQLLAST_NAME: TWideStringField;
    RzDBLabel3: TRzDBLabel;
    wwDBEdit1: TRzDBLabel;
    wwDBEdit2: TRzDBLabel;
    Read1: TIBCTransaction;
    write1: TIBCTransaction;
    wwDBGrid1: TwwDBGrid;
    RzPanel4: TRzPanel;
    GenerateBTN: TRzBitBtn;
    InvoiceSQLSERIAL_NUMBER: TIntegerField;
    InvoiceSQLFK_SEMINAR_SERIAL: TIntegerField;
    InvoiceSQLFK_PERSON_SERIAL: TIntegerField;
    InvoiceSQLDATE_ISSUED: TDateField;
    InvoiceSQLHOURS_COMPLETED: TIntegerField;
    InvoiceSQLPERCENTAGE_COMPLETED: TIntegerField;
    InvoiceSQLIS_VALID: TWideStringField;
    InvoiceSQLLAST_NAME: TWideStringField;
    InvoiceSQLFIRST_NAME: TWideStringField;
    InvoiceSQLNATIONAL_ID: TWideStringField;
    InvoiceSQLSEMINAR_SUBJECT: TWideMemoField;
    InvoiceSQLSEMINAR_DURATION: TIntegerField;
    InvoiceSQLINSTRUCTOR_NAME: TWideMemoField;
    InvoiceSQLINSTRUCTOR_JOB_TITLE: TWideMemoField;
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure DateFLDClick(Sender: TObject);
    procedure SavePresBTNClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CanelBTNClick(Sender: TObject);
    procedure InvoiceSQLBeforePost(DataSet: TDataSet);
    procedure InvoiceGRDCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure GenerateBTNClick(Sender: TObject);
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
  I_CertificatesFRM: TI_CertificatesFRM;

implementation

uses   U_Database, G_generalProcs;


{$R *.DFM}

procedure TI_CertificatesFRM.GetInvoices();
var
  SEminarSerial:Integer;
begin

{
  SEminarSerial := TableSQL.FieldByName('serial_number').AsInteger;
  if personSQL.Active then
    personSQL.Close;
  personSQL.ParamByName('SeminarSerial').Value:=seminarSerial;
  personSQL.Open;


  if invoiceSQL.Active then
    InvoiceSQL.Close;
//  InvoiceSQL.UpdateTransaction.StartTransaction;
  InvoiceSQL.ParamByName('SeminarSerial').Value:=seminarSerial;
  InvoiceSQL.Open;

}
end;

procedure TI_CertificatesFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;



procedure TI_CertificatesFRM.InvoiceGRDCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if (field.FieldName='AMOUNT_VAT')OR (field.FieldName='AMOUNT_WITH_VAT') then begin
    Abrush.Color:=clBtnFace;
  end;
end;

procedure TI_CertificatesFRM.InvoiceSQLBeforePost(DataSet: TDataSet);
Var
  vatAMount,AmountForVat:Double;
  Gross,DiscountCust,DiscountSafe:Double;
  AmountCharged:DOuble;
begin

//  AmountForVat:=Dataset.FieldByName('amount_gross').AsFloat -Dataset.FieldByName('Discount_customer').AsFloat;
//  VatAmount:=AmountForVat *Dataset.FieldByName('vat_rate').AsFloat/100.00;
//  AmountCharged:= AmountForVat -Dataset.FieldByName('Discount_by_safe').AsFloat + VAtAmount;
//
//  VatAmount:=Max(0,VatAmount);
//  AmountCharged:=Max(0,AmountCharged);
//  Dataset.FieldByName('amount_vat').Value:=VatAmount;
//  Dataset.FieldByName('hours_completed').Value:=444;
//

end;

procedure TI_CertificatesFRM.RzBitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TI_CertificatesFRM.DateFLDClick(Sender: TObject);
var
  aDate:TDate;
begin

end;

procedure TI_CertificatesFRM.FormActivate(Sender: TObject);
var
  params:G_generalProcs.TParameterRecord;
begin
//  ksOpenTables([TableSQL]);

 personSQL.Close;
 personSQL.ParamByName('seminarSerial').Value:=IN_seminar_serial;
 personSQL.Open;


TableSQL.Close;
TableSQL.ParamByName('seminarSerial').Value:= IN_seminar_serial;
TableSQL.open;


if not InvoiceSQL.UpdateTransaction.Active then
    InvoiceSQL.UpdateTransaction.StartTransaction;

InvoiceSQL.Close;
InvoiceSQL.ParamByName('seminarSerial').Value:= IN_seminar_serial;
InvoiceSQL.open;


end;

procedure TI_CertificatesFRM.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin

  Canclose:= not InvoiceSQL.UpdatesPending;
  if not CanClose then
    showMessage('Save Or Cancel before Exit');
end;

procedure TI_CertificatesFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;



procedure TI_CertificatesFRM.SavePresBTNClick(Sender: TObject);
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

  if not InvoiceSQL.UpdateTransaction.Active then
    InvoiceSQL.UpdateTransaction.StartTransaction;


 try
    InvoiceSQL.ApplyUpdates;
    InvoiceSQL.UpdateTransaction.commit;
  except
    InvoiceSQL.UpdateTransaction.Rollback;
    InvoiceSQL.RestoreUpdates;
    raise;
  end;

{
  try
    if  InvoiceSQL.UpdatesPending then begin
      InvoiceSQL.ApplyUpdates;
      InvoiceSQL.UpdateTransaction.commit;
      InvoiceSQL.CommitUpdates;
    end;
  except
    InvoiceSQL.UpdateTransaction.Rollback;
    InvoiceSQL.RestoreUpdates;
    raise;
  end;

}

end;



procedure TI_CertificatesFRM.GenerateInvoices(Const SeminarSerial:integer);
type
  Tperson=record
    FirstName:String;
    LastName:String;
    NationalId:string;
  end;

var
  qr:TksQuery;
  PersonQr:TksQuery;
  str:String;
  SerialNumber:integer;
//  SeminarName:String;
  isMono:Boolean;
  PriceNormal,PriceAnad,PriceUsed:Double;

  PersonSerial:Integer;
  amountVat:Double;
  AmountTotal:Double;
  DiscountNormal:Double;
  DiscountSafe:Double;
  isFOund:Boolean;
  isGuest,isPresent:boolean;
  isPass:Boolean;
  SeminarHours:Integer;
  SeminarSubject:String;
  PercentPass:Integer;
  percentActual:Double;

  vatRate:Double;
  person:  TPerson;
  InstructorName:String;
  InstructorJob:String;
begin

  percentPass:=gpGetGeneralParam(cn,'Ô00').P_Integer1;

//  invoiceSQL.Close;
//  invoiceSQL.Open;

      str:= 'select'
    +' sem.seminar_name,'
    +'  ins.first_name, ins.last_name, ins.job_title'
    +' from'
    +'  seminar sem left outer join'
    +'  instructor ins on ins.serial_number=sem.fk_instructor'
    +'  where sem.serial_number= :seminarSerial';
  qr:= TksQuery.Create(cn,str);
  try
    qr.ParamByName('seminarSerial').value:=SeminarSerial;
    qr.open;
    SeminarSubject:=qr.FieldByName('SEMINAR_Name').AsString;
    InstructorName:=trim(qr.FieldByName('first_Name').AsString)+' '+trim(qr.FieldByName('first_Name').AsString);
    InstructorJob:=qr.FieldByName('job_title').AsString;
    qr.close;
  finally
    qr.Free;
  end;


  str:= 'Select sum(sday.duration_hours) as Seminar_hours from seminar_day_view sday where sday.seminar_serial= :SeminarSerial ';
  qr:= TksQuery.Create(cn,str);
  try
    qr.ParamByName('seminarSerial').value:=SeminarSerial;
    qr.open;
    SeminarHours:=qr.FieldByName('SEMINAR_HOURS').AsInteger;
    qr.close;
  finally
    qr.Free;
  end;


  str:='Select'
    +'  max(ppv.is_guest) as is_guest, min(ppv.present_ispresent)as is_present, sum(ppv.present_hours) as hours, ppv.person_serial'
    +'  from'
    +'      person_presence_view ppv'
    +'  where'
    +'      ppv.seminar_serial= :seminarSerial'
    +'  group by ppv.person_serial';

  //   str:= 'select * from seminar_person sp where sp.fk_seminar_serial= :SeminarSerial and sp.is_guest<>''Y'' ';
  // instead I have used presence which is ok because if no presence then no certificate
   qr:= TksQuery.Create(cn,str);
  try
    qr.ParamByName('seminarSerial').value:=SeminarSerial;
    qr.open;

//    if not INvoiceSQL.Active then
//      InvoiceSql.Open;

    while not qr.Eof do begin
        PersonSerial:=qr.FieldByName('person_serial').AsInteger;

        isFound:=ksCountRecVarSQL(cn,'select * from seminar_certificate where fk_seminar_serial=:Seminar and fk_person_serial= :person',[SeminarSerial,PersonSerial])>0;
        isGuest:=qr.FieldByName('is_guest').AsString='Y';
        isPresent:=qr.FieldByName('is_Present').AsString='Y';
        isPass:=qr.FieldByName('hours').AsInteger /SeminarHours *100.0 >= PercentPass;


        if isFound or isGuest or (not isPresent) or (not isPass)  then begin
          qr.Next;
          continue;
        end;

      str:=' Select'
      +'  per.last_name,per.first_name, per.last_first_name, per.national_id'
      +'  from person_view per'
      +'  where  per.serial_number= :PersonSerial';
      PersonQr := TksQuery.Create(cn,str);
      try
         PersonQR.ParamByName('PersonSerial').Value:=PersonSerial;
         PersonQR.Open;
         person.FirstName:=personQr.FieldByName('first_name').AsString;
         person.LastName:=personQr.FieldByName('Last_name').AsString;
         person.NationalId:=personQr.FieldByName('National_id').AsString;
         personQr.Close;
      finally
        personQr.Free;
      end;



        SerialNumber:=ksGenerateSerial(cn,'GEN_SEMINAR_CERTIFICATE');

        InvoiceSQL.Insert;
        InvoiceSQL.FieldByName('serial_number').Value:=SerialNumber;
        InvoiceSQL.FieldByName('fk_seminar_serial').Value:=SEminarSerial;
        InvoiceSQL.FieldByName('fk_PERSON_serial').Value:=PersonSerial;

        InvoiceSQL.FieldByName('first_name').Value:=person.FirstName;
        InvoiceSQL.FieldByName('Last_name').Value:=Person.LastName;
        InvoiceSQL.FieldByName('National_id').Value:=Person.NationalId;
        InvoiceSQL.FieldByName('seminar_subject').Value:=SeminarSubject;
        InvoiceSQL.FieldByName('seminar_duration').Value:=SeminarHours;

        InvoiceSQL.FieldByName('instructor_name').Value:=InstructorName;
        InvoiceSQL.FieldByName('instructor_job_title').Value:=InstructorJob;



//        InvoiceSQL.FieldByName('AMOUNT_With_vat').AsFloat:=AmountTotal;
        InvoiceSQL.FieldByName('is_valid').Value:='Y';
        InvoiceSQL.FieldByName('hours_completed').Value:=12;
        InvoiceSQL.FieldByName('percentage_completed').Value:=13;
        InvoiceSQL.FieldByName('DATE_Issued').Value:=NOW;
        InvoiceSQL.Post;
        qr.Next;
    end;
  finally
    qr.Free;
  end;





end;

procedure TI_CertificatesFRM.GenerateBTNClick(Sender: TObject);

var
  SeminarSerial:Integer;
begin

  SeminarSerial:=TableSQL.FieldByName('serial_number').AsInteger;

//    if  InvoiceSQL.UpdateTransaction.Active then begin
//      ShowMessage('save or Cancel First');
//      exit;
//    end;

//    if not InvoiceSQL.UpdateTransaction.Active then
//      InvoiceSQL.UpdateTransaction.StartTransaction; //already started on activate form

    personSQL.Close;
    personSQL.ParamByName('seminarSerial').Value:=SeminarSErial;
    personSQL.Open;


  GenerateInvoices(seminarSerial);

//  if InvoiceSQL.UpdateTransaction.Active then
//      InvoiceSQL.UpdateTransaction.commit;

end;

procedure TI_CertificatesFRM.CanelBTNClick(Sender: TObject);
begin


  InvoiceSQL.Cancel;
  if  InvoiceSQL.UpdatesPending then begin
    InvoiceSQL.CancelUpdates;
//    if InvoiceSQL.Connection.InTransaction then  NO NEED FOR THIS
//      INvoiceSQL.Connection.Rollback;

  end;

end;

End.
