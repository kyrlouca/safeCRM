unit I_certificates;

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
    RzPanel4: TRzPanel;
    RzDBLabel1: TRzDBLabel;
    RzDBLabel2: TRzDBLabel;
    RzPanel5: TRzPanel;
    RzPanel6: TRzPanel;
    SavePresBTN: TBitBtn;
    CanelBTN: TBitBtn;
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
    InvoiceBTN: TRzBitBtn;
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
    SecondGRP: TRzGroupBox;
    Label8: TLabel;
    wwDBGrid1: TwwDBGrid;
    InvoiceSQL: TIBCQuery;
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
    InvoiceSQLSEMINAR_SUBJECT: TWideStringField;
    InvoiceSQLSEMINAR_DURATION: TIntegerField;
    InvoiceSQLINSTRUCTOR_NAME: TWideStringField;
    InvoiceSQLINSTRUCTOR_JOB_TITLE: TWideStringField;
    DateFLD: TwwDBDateTimePicker;
    InvoiceSQLHAS_ANOTHER_DATE: TWideStringField;
    MainMenu1: TMainMenu;
    Reports1: TMenuItem;
    N3: TMenuItem;
    N1: TMenuItem;
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
    procedure InvoiceSQLBeforePost(DataSet: TDataSet);
    procedure InvoiceGRDCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
    VatRate:Double;
    cn:TIBCConnection;
    procedure GenerateInvoices(Const SeminarSerial:integer);
    procedure GetInvoices();
    Function FindGuestHours(Const SeminarSerial, PersonSerial:Integer):integer;
  public
    { Public declarations }
    IN_ACTION:String;
    IN_seminar_serial:Integer;

  end;

var
  I_CertificatesFRM: TI_CertificatesFRM;

implementation

uses   U_Database, G_generalProcs, R_Certificate;


{$R *.DFM}

procedure TI_CertificatesFRM.GetInvoices();
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
  Dataset.FieldByName('hours_completed').Value:=444;
//

end;

procedure TI_CertificatesFRM.N1Click(Sender: TObject);
vAR
  Frm:TR_certificateFRM;
  seminarSerial:Integer;
  certSerial:Integer;
begin
  seminarSerial:=TableSQL.FieldByName('serial_number').AsInteger;
  certSerial:=InvoiceSQL.FieldByName('serial_number').AsInteger;

  frm :=  TR_certificateFRM.Create(nil);
  frm.IN_seminar_serial :=seminarSerial;
  frm.IN_certificate_serial:=certSerial;
  if CertSerial<1 then
    exit;
//  frm.IN_Day_Serial :=0;
  try
    frm.PrintTheSeminar();
  finally
    frm.Free;
  end;
end;

procedure TI_CertificatesFRM.N3Click(Sender: TObject);
vAR
  Frm:TR_certificateFRM;
  seminarSerial:Integer;
begin
  seminarSerial:=TableSQL.FieldByName('serial_number').AsInteger;

  frm :=  TR_certificateFRM.Create(nil);
  frm.IN_seminar_serial :=seminarSerial;
  frm.IN_certificate_serial:=0;
//  frm.IN_Day_Serial :=0;
  try
    frm.PrintTheSeminar();
  finally
    frm.Free;
  end;
end;

procedure TI_CertificatesFRM.wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
getInvoices();
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

  DateFLD.Date :=Date;
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



end;



procedure TI_CertificatesFRM.GenerateInvoices(Const SeminarSerial:integer);
type
  Tperson=record
    FirstName:String;
    LastName:String;
    NationalId:string;
  end;

var
  qr,PersonQr:TksQuery;
  str:String;
  SerialNumber:integer;
  isMono:Boolean;
  PriceNormal,PriceAnad,PriceUsed:Double;
  SeminarDate:TDate;
  SeminarSubject:String;
  SeminarHours:Integer;
  SeminarType:Integer;

  PersonSerial:Integer;

  InstName:String;
  InstJob:String;

  isFOund:Boolean;
  isGuest,isPresent:boolean;
  isPass:Boolean;



  AdditionalHours:integer;
  HasAnotherDate:String;

  PercentPass:Integer;
  HoursActual:Integer;
  percentActual:Double;
  person:  TPerson;

begin


  percentPass:=gpGetGeneralParam(cn,'T00' ).P_Integer1;
  SeminarDate:=DateFLD.Date;

  str:= ' select'
  +' sem.*, inst.first_name,inst.last_name, inst.job_title'
  +'  from'
  +'  seminar sem left outer join'
  +'  instructor inst on inst.serial_number=sem.fk_instructor'
  +'  where sem.serial_number= :SeminarSerial';
  qr:= TksQuery.Create(cn,str);
  try
    qr.ParamByName('seminarSerial').value:=SeminarSerial;
    qr.open;
    seminarType:=qr.FieldByName('fk_seminar').AsInteger;
    SeminarSubject:=qr.FieldByName('seminar_name').asString;
    InstName:=trim(qr.FieldByName('first_name').asString)+' '+trim(qr.FieldByName('Last_name').asString);
    InstJob:=qr.FieldByName('job_title').asString;
  finally
    qr.Free;
  end;


  str:= ' Select sum(sday.duration_hours) as Seminar_hours'
  +'  from seminar_day_view sday where'
  +'  sday.seminar_serial= :SeminarSerial';
   qr:= TksQuery.Create(cn,str);
  try
    qr.ParamByName('seminarSerial').value:=SeminarSerial;
    qr.open;
    SeminarHours:=qr.FieldByName('SEMINAR_Hours').asInteger;
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
    //person_presence is created for all seminar Persons!!
//   str:= 'select * from seminar_person sp where sp.fk_seminar_serial= :SeminarSerial and sp.is_guest<>''Y'' ';
   qr:= TksQuery.Create(cn,str);
  try
    qr.ParamByName('seminarSerial').value:=SeminarSerial;
    qr.open;

    if not INvoiceSQL.Active then
      InvoiceSql.Open;

    while not qr.Eof do begin
        PersonSerial:=qr.FieldByName('person_serial').AsInteger;

        isFound:=ksCountRecVarSQL(cn,'select * from seminar_certificate where fk_seminar_serial=:Seminar and fk_person_serial= :person',[SeminarSerial,PersonSerial])>0;
        isGuest:=qr.FieldByName('is_guest').AsString='Y';
        isPresent:=qr.FieldByName('is_Present').AsString='Y';

        AdditionalHours:=0;
        if Not isPresent then begin
          //check if the person attended a similar seminar (subject) as a guest
          AdditionalHours:=FindGuestHours(SeminarSerial,PersonSerial);
          isPresent:= AdditionalHours>0;
        end;
        if AdditionalHours>0 then
          HasAnotherDate:='Y'
        else
          HasAnotherDate:='N';

        HoursActual:=qr.FieldByName('hours').AsInteger + AdditionalHours;
        PercentActual:=HoursActual/SeminarHours * 100.0;
        isPass:= PercentActual >= PercentPass;

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

        InvoiceSQL.FieldByName('instructor_name').Value:=InstName;
        InvoiceSQL.FieldByName('instructor_job_title').Value:=InstJob;


        InvoiceSQL.FieldByName('is_valid').Value:='Y';
        InvoiceSQL.FieldByName('hours_completed').Value:=HoursActual;
        InvoiceSQL.FieldByName('percentage_completed').Value:=percentActual;
        InvoiceSQL.FieldByName('DATE_Issued').AsDateTime:=SeminarDate;

        InvoiceSQL.FieldByName('HAS_ANOTHER_DATE').AsString:= HasAnotherDate;

        InvoiceSQL.Post;
        qr.Next;
    end;
  finally
    qr.Free;
  end;





end;


procedure TI_CertificatesFRM.InvoiceBTNClick(Sender: TObject);
var
  SeminarSerial:Integer;
begin

  SeminarSerial:=TableSQL.FieldByName('serial_number').AsInteger;

//    if  InvoiceSQL.UpdateTransaction.Active then begin
//      ShowMessage('save or Cancel First');
//      exit;
//    end;

//    if not InvoiceSQL.UpdateTransaction.Active then
//      InvoiceSQL.UpdateTransaction.StartTransaction;

//    invoiceSQL.Close;

    personSQL.Close;
    personSQL.ParamByName('seminarSerial').Value:=SeminarSErial;
    personSQL.Open;


  GenerateInvoices(seminarSerial);

//  if InvoiceSQL.UpdateTransaction.Active then
//      InvoiceSQL.UpdateTransaction.commit;

end;

procedure TI_CertificatesFRM.Button1Click(Sender: TObject);
var
  seminarSerial:Integer;
begin
  FindGuestHours(42,3);
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

Function TI_CertificatesFRM.FindGuestHours(Const SeminarSerial, PersonSerial:Integer):integer;
var
  al:Integer;
  ProblemSubjectStr:string;
  GuestSubjectStr:string;
  ProblemQr, GuestQr:TksQuery;
  SeminarTypeSerial,SubjectTypeSerial:Integer;
  Present:String;
  PresenceSerial:Integer;
  IsFound:Boolean;
  SumHours:Integer;
  ProblemDate:TDate;
begin
//check if the person has attended a similar subject (same seminar_type) in another seminar which is one month before or after

  ProblemSubjectstr:=
    ' select'
    +'  ppv.seminar_type_serial, ppv.subject_type_serial, ppv.present_ispresent,ppv.day_date'
    +'  from person_presence_view ppv where'
    +'  ppv.present_ispresent=''N'' '
    +'  and ppv.seminar_serial= :SeminarSerial and ppv.person_serial= :personSerial';

GuestSubjectStr:=
  ' select'
  +'  ppv.presence_serial, ppv.seminar_serial, ppv.is_guest, ppv.present_ispresent,ppv.day_date,ppv.present_hours'
  +'  from person_presence_view ppv where'
  +'  ppv.person_serial= :personSerial'
  +'  and ppv.present_ispresent= ''Y'' '
  +'  and ppv.seminar_type_serial= :SeminartypeSerial and ppv.subject_type_serial = :SubjectTypeSerial'
  +' and ppv.day_date between :StartDate and :EndDate';


  try
      sumHours:=0;
      isFound:=False;

      GUestQR:=TksQuery.Create(cn,GuestSubjectStr);

      ProblemQr:=TksQuery.Create(cn,ProblemSubjectStr);
      ProblemQr.ParamByName('SeminarSerial').Value:=SeminarSerial;
      ProblemQr.ParamByName('PersonSerial').Value:=PersonSerial;
      ProblemQR.Open;
      while (not ProblemQr.Eof) do begin
          SeminarTypeSerial:=ProblemQr.FieldByName('seminar_type_serial').AsInteger;
          SubjectTypeSerial:=ProblemQr.FieldByName('subject_type_serial').AsInteger;
          present:=ProblemQr.FieldByName('present_isPresent').AsString;
          ProblemDate:=ProblemQr.FieldByName('day_date').AsDateTime;
//          showMessage(IntToStr(SeminarTypeSerial)+'   Sub:'+IntToStr(subjectTypeSerial) +' '+Present);

          guestqr.Close;
          guestQR.ParamByName('PErsonSerial').Value:= PersonSerial;
          guestQR.ParamByName('SeminarTypeSerial').Value:= SeminarTypeSerial;
          guestQR.ParamByName('SubjectTypeSerial').Value:= SubjectTypeSerial;
          guestQR.ParamByName('StartDate').Value:= IncMonth(ProblemDate,-1);
          guestQR.ParamByName('EndDate').Value:= IncMonth(ProblemDate,1);
          guestQR.Open;
          if GuestQR.IsEmpty then begin
            isFound:=false;
            Result:=0;
            break;
          end else begin
            PresenceSErial:=guestQR.FieldByName('presence_Serial').AsInteger;
//            ShowMessage(IntToStr(PresenceSerial));
            sumHours:=SumHours+guestQr.FieldByName('present_hours').AsInteger;
          end;
          ProblemQr.Next;

      end;

  finally
          ProblemQr.free;
          GuestQR.Free;
  end;

  result:=SumHours;
//  ShowMessage(IntToStr(sumHours));

end;


End.
