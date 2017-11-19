unit V_Seminar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL,G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl, vcl.Wwdbdatetimepicker,
  System.ImageList,System.DateUtils, Vcl.ImgList, RzTabs, vcl.wwcheckbox, RzSplit, RzPopups,
  Vcl.ComCtrls, RzDBEdit, RzRadGrp, RzDBRGrp, RzDTP, vcl.wwclearbuttongroup,
  vcl.wwradiogroup;
type
  TV_SeminarFRM = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SeminarSRC: TDataSource;
    SeminarSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    DbImages: TImageList;
    PageControlPC: TRzPageControl;
    SeminarTS: TRzTabSheet;
    StudentsTS: TRzTabSheet;
    CostTS: TRzTabSheet;
    SubjectTS: TRzTabSheet;
    FirstGRP: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    SerialFLD: TRzDBLabel;
    FirstFLD: TwwDBEdit;
    wwCheckBox1: TwwCheckBox;
    wwDBComboBox1: TwwDBComboBox;
    SeminarTypeFLD: TwwDBComboBox;
    wwDBEdit4: TwwDBEdit;
    SecondGRP: TRzGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DatePassedFLD: TwwDBDateTimePicker;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    InstructorFLD: TwwDBComboBox;
    VenueFLD: TwwDBComboBox;
    Label11: TLabel;
    InstructorBTN: TSpeedButton;
    VenueBTN: TSpeedButton;
    Label12: TLabel;
    ReminderTS: TRzTabSheet;
    AttendingSQL: TIBCQuery;
    AttendingSRC: TDataSource;
    NonAttendSQL: TIBCQuery;
    NonAttendSRC: TDataSource;
    NonAttendSQLSERIAL_NUMBER: TIntegerField;
    NonAttendSQLLAST_NAME: TWideStringField;
    NonAttendSQLFIRST_NAME: TWideStringField;
    NonAttendSQLNATIONAL_ID: TWideStringField;
    Panel4: TRzPanel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    BitBtn1: TBitBtn;
    CanelBTN: TBitBtn;
    RzPanel2: TRzPanel;
    RzGroupBox1: TRzGroupBox;
    RzPanel3: TRzPanel;
    ToRightBTN: TBitBtn;
    ToLeftBTN: TBitBtn;
    RzGroupBox2: TRzGroupBox;
    AllPersonsGRD: TwwDBGrid;
    RzSizePanel1: TRzSizePanel;
    SearchPersonFLD: TwwIncrementalSearch;
    RzSizePanel2: TRzSizePanel;
    RzPanel5: TRzPanel;
    GroupBox1: TGroupBox;
    RzPanel6: TRzPanel;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    seminarSubjectSQL: TIBCQuery;
    SeminarSubjectSRC: TDataSource;
    RzPanel4: TRzPanel;
    RzPanel7: TRzPanel;
    GroupBox2: TGroupBox;
    RzPanel8: TRzPanel;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    wwNavButton7: TwwNavButton;
    wwDBGrid2: TwwDBGrid;
    SeminarDaySQL: TIBCQuery;
    SeminarDaySRC: TDataSource;
    SeminarDayFLD: TwwDBDateTimePicker;
    Label13: TLabel;
    RzDBRichEdit1: TRzDBRichEdit;
    BitBtn2: TBitBtn;
    seminarSubjectSQLSERIAL_NUMBER: TIntegerField;
    seminarSubjectSQLFK_SEMINAR_SERIAL: TIntegerField;
    seminarSubjectSQLSUBJECT: TWideStringField;
    AttendingSQLSERIAL_NUMBER: TIntegerField;
    AttendingSQLFIRST_NAME: TWideStringField;
    AttendingSQLLAST_NAME: TWideStringField;
    AttendingSQLFK_SEMINAR_SERIAL: TIntegerField;
    AttendingSQLFK_PERSON_SERIAL: TIntegerField;
    AttendingSQLATTENDANCE_STATUS: TWideStringField;
    wwDBGrid1: TwwDBGrid;
    SeminarDaySQLSERIAL_NUMBER: TIntegerField;
    SeminarDaySQLFK_SEMINAR_SUBJECT_SERIAL: TIntegerField;
    SeminarDaySQLSEMINAR_DAY: TDateField;
    SeminarDaySQLDURATION_HOURS: TIntegerField;
    RzPanel10: TRzPanel;
    GroupBox3: TGroupBox;
    RzPanel11: TRzPanel;
    wwDBNavigator3: TwwDBNavigator;
    wwNavButton8: TwwNavButton;
    wwNavButton9: TwwNavButton;
    wwNavButton10: TwwNavButton;
    wwNavButton11: TwwNavButton;
    wwNavButton12: TwwNavButton;
    wwNavButton13: TwwNavButton;
    wwNavButton14: TwwNavButton;
    CostGRD: TwwDBGrid;
    SeminarCostItemSQL: TIBCQuery;
    SeminarCostItemSRC: TDataSource;
    SeminarCostItemSQLSERIAL_NUMBER: TIntegerField;
    SeminarCostItemSQLFK_COST_ITEM: TIntegerField;
    SeminarCostItemSQLAMOUNT_PER_ITEM: TFloatField;
    SeminarCostItemSQLNUMBER_OF_ITEMS: TIntegerField;
    SeminarCostItemSQLFK_SEMINAR_SERIAL: TIntegerField;
    CostTypeFLD: TwwDBLookupCombo;
    CostItemTBL: TIBCTable;
    CostItemTBLSERIAL_NUMBER: TIntegerField;
    CostItemTBLCOST_NAME: TWideStringField;
    CostItemTBLAMOUNT: TFloatField;
    SeminarCostItemSQLTotalAmnt: TFloatField;
    SeminarReminderSRC: TDataSource;
    SeminarReminderSQL: TIBCQuery;
    GroupBox4: TGroupBox;
    RzPanel12: TRzPanel;
    RzPanel13: TRzPanel;
    wwDBNavigator4: TwwDBNavigator;
    wwNavButton15: TwwNavButton;
    wwNavButton16: TwwNavButton;
    wwNavButton17: TwwNavButton;
    wwNavButton18: TwwNavButton;
    wwNavButton19: TwwNavButton;
    wwNavButton20: TwwNavButton;
    wwNavButton21: TwwNavButton;
    wwNavButton22: TwwNavButton;
    wwIncrementalSearch1: TwwIncrementalSearch;
    SeminarReminderSQLSERIAL_NUMBER: TIntegerField;
    SeminarReminderSQLFK_SEMINAR_SERIAL: TIntegerField;
    SeminarReminderSQLDESCRIPTION: TWideStringField;
    SeminarReminderSQLREMINDER_MESSAGE: TWideStringField;
    SeminarReminderSQLAFTER_OR_BEFORE: TWideStringField;
    SeminarReminderSQLPERSON_OR_SEMINAR: TWideStringField;
    SeminarReminderSQLSTART_OR_END: TWideStringField;
    SeminarReminderSQLDAYS_OR_MONTHS: TWideStringField;
    SeminarReminderSQLNUMBER_OF_DAYS_MONTHS: TIntegerField;
    GroupBox5: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    RzDBLabel1: TRzDBLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    REminderDescFLD: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    RzDBRichEdit2: TRzDBRichEdit;
    RzDBRadioGroup2: TRzDBRadioGroup;
    RzDBRadioGroup3: TRzDBRadioGroup;
    RzDBRadioGroup4: TRzDBRadioGroup;
    RzDBRadioGroup1: TRzDBRadioGroup;
    wwDBGrid3: TwwDBGrid;
    AfterFLD: TwwDBComboBox;
    NamePersonFLD: TwwDBComboBox;
    StartEndLD: TwwDBComboBox;
    Button1: TButton;
    Date1FLD: TwwDBDateTimePicker;
    DateTimePicker1: TDateTimePicker;
    Label4: TRzPanel;
    RzPanel9: TRzPanel;
    SeminarSQLSERIAL_NUMBER: TIntegerField;
    SeminarSQLFK_SEMINAR: TIntegerField;
    SeminarSQLSEMINAR_NAME: TWideStringField;
    SeminarSQLSEMINAR_CORP_TYPE: TWideStringField;
    SeminarSQLFK_INSTRUCTOR: TIntegerField;
    SeminarSQLFK_VENUE: TIntegerField;
    SeminarSQLDATE_STARTED: TDateField;
    SeminarSQLDATE_COMPLETED: TDateField;
    SeminarSQLDURATION_DAYS: TIntegerField;
    SeminarSQLDURATION_HOURS: TIntegerField;
    SeminarSQLFEE_ACTUAL: TFloatField;
    SeminarSQLAMOUNT_ANAD: TFloatField;
    SeminarSQLCOMMENTS: TWideStringField;
    SeminarSQLANAD_APPROVED: TWideStringField;
    SeminarSQLFEE_ESTIMATE: TFloatField;
    SeminarSQLSTATUS: TWideStringField;
    SeminarSQLIS_INVOICED: TWideStringField;
    SeminarSQLIS_CERTIFICATED: TWideStringField;
    Label22: TLabel;
    wwDBEdit5: TwwDBEdit;
    SeminarSQLMAX_CAPACITY: TIntegerField;
    AttendingSQLIS_GUEST: TWideStringField;
    wwDBGrid4: TwwDBGrid;
    SeminarSQLFK_COMPANY_PERSON_SERIAL: TIntegerField;
    CompanySQL: TIBCQuery;
    CompanySQLFIRST_NAME: TWideStringField;
    CompanySQLLAST_NAME: TWideStringField;
    CompanySQLNATIONAL_ID: TWideStringField;
    CompanySQLSERIAL_NUMBER: TIntegerField;
    MonoRGP: TwwRadioGroup;
    Companylbl: TLabel;
    CompanyFLD: TwwDBLookupCombo;
    SeminarSQLFEE_WITH_ANAD_SUB: TFloatField;
    Label6: TLabel;
    wwDBEdit6: TwwDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure SeminarSRCStateChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CanelBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure Nav1InsertClick(Sender: TObject);
    procedure InstructorBTNClick(Sender: TObject);
    procedure VenueBTNClick(Sender: TObject);
    procedure SeminarTypeFLDCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure StudentsTSShow(Sender: TObject);
    procedure PageControlPCChanging(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
    procedure AllPersonsGRDDblClick(Sender: TObject);
    procedure AllPersonsGRDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MembersGRDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SearchPersonFLDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToRightBTNClick(Sender: TObject);
    procedure ToLeftBTNClick(Sender: TObject);
    procedure SeminarSQLNewRecord(DataSet: TDataSet);
    procedure SeminarTSShow(Sender: TObject);
    procedure SubjectTSShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CostTSShow(Sender: TObject);
    procedure CostTypeFLDDropDown(Sender: TObject);
    procedure CostTypeFLDCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure SeminarCostItemSQLCalcFields(DataSet: TDataSet);
    procedure CostGRDUpdateFooter(Sender: TObject);
    procedure ReminderTSShow(Sender: TObject);
    procedure wwNavButton19Click(Sender: TObject);
    procedure MonoRGPChange(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  Procedure StartSeminar(Const SeminarSerial:integer);
  Procedure EditSeminar(Const SeminarSerial:integer);
  procedure RemovePerson();
  procedure InsertPerson();
  procedure UseSeminarTemplate(Const SeminarSerial, TypeSerial:Integer);
   procedure GetReminderFromTemplate(Const SeminarSerial, TypeSerial:Integer);

  Function UpdateCostFooter(Const SeminarSerial:Integer):Double;

  public
    { Public declarations }
    IN_ACTION:String;
    IN_SEMINAR_SERIAL:Integer;

  end;

var
  V_SeminarFRM: TV_SeminarFRM;

implementation

uses   U_Database, G_generalProcs, M_Instructor, M_Venue, G_SFCommonProcs;


{$R *.DFM}

procedure TV_SeminarFRM.BitBtn1Click(Sender: TObject);
begin
  ksPostTables([SeminarSQL]);
  case PageControlPC.ActivePageIndex of
    0: ksPostTables([SeminarSQL]);
    1: ksPostTables([seminarSubjectSQL]);
    2: ksPostTables([AttendingSQL]);
    3: ksPostTables([SeminarCostItemSQL]);
    4: ksPostTables([SeminarReminderSQL]);
  end;

end;

procedure TV_SeminarFRM.BitBtn2Click(Sender: TObject);
var
  seminarSerial:Integer;
begin

  seminarSerial:=SeminarSQL.FieldByName('serial_number').AsInteger;
  StartSeminar(seminarSerial);
  SeminarSQL.Refresh;
end;



procedure TV_SeminarFRM.ReminderTSShow(Sender: TObject);
begin
ksOpenTables([SeminarReminderSQL]);

end;

procedure TV_SeminarFRM.ToLeftBTNClick(Sender: TObject);
begin
InsertPerson();
end;

procedure TV_SeminarFRM.ToRightBTNClick(Sender: TObject);
begin
  RemovePerson();
end;

procedure TV_SeminarFRM.SeminarCostItemSQLCalcFields(DataSet: TDataSet);
begin
dataset.FieldByName('totalAmnt').Value:=Dataset.FieldByName('AMOUNT_PER_ITEM').AsFloat
* Dataset.FieldByName('NUMBER_OF_ITEMS').AsInteger;
end;

procedure TV_SeminarFRM.SeminarSQLNewRecord(DataSet: TDataSet);
begin
Dataset.FieldByName('Status').Value:='P';
Dataset.FieldByName('ANAD_APPROVED').Value:='Y';
Dataset.FieldByName('SEMINAR_CORP_TYPE').Value:='P';
Dataset.FieldByName('is_invoiced').Value:='N';
Dataset.FieldByName('is_certificated').Value:='N';
Dataset.FieldByName('Max_capacity').Value:=0;

end;

procedure TV_SeminarFRM.SeminarSRCStateChange(Sender: TObject);
begin


  with SeminarSQL do begin
     If State<>dsInsert then begin
//         StationIDFLD.Enabled:=false;
     end  else begin
//         StationIDFLD.Enabled:=true;
     end;
  end;//with

end;

procedure TV_SeminarFRM.SeminarTSShow(Sender: TObject);
begin
  ksOpenTables([CompanySQL]);
  SeminarTypeFLD.SetFocus;
end;


procedure TV_SeminarFRM.SeminarTypeFLDCloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
var
  TypeSerial:Integer;
  SeminarSerial:Integer;
//  ReminderSerial:Integer;
begin
 if SeminarSQL.State in [dsEdit,dsInsert] then begin
   FirstFLD.Text:=seminarTypeFLD.Text;
   SeminarSQL.Post;
 end;

 SeminarSerial:=SeminarSQL.FieldByName('serial_number').AsInteger;
 TYpeserial:=SeminarSQL.FieldByName('FK_Seminar').AsInteger;
 if (not select) or (Seminarserial<1) or (TypeSerial<1) then exit;
 UseSeminarTEmplate(SeminarSerial,TypeSerial);
 GetReminderFromTemplate(SEminarSerial,TYpeSerial);


  SeminarSQL.close;
  seminarSQL.ParamByName('serialNumber').Value:=seminarSerial;
  seminarSQL.Open;
  firstFLD.SetFocus;

end;

procedure TV_SeminarFRM.UseSeminarTemplate(Const SeminarSerial, TypeSerial:Integer);
var
  serial:Integer;
  subjectSerial:Integer;
  qr:TksQuery;
   fhours, fdays:integer;
   fName,fAnad:String;
   fcost:double;
   FFee:Double;
   fMaxCapacity:Integer;
begin


 qr:=TksQuery.Create(cn,'select * from seminar_type where serial_number= :serial');
 try
   qr.ParamByName('serial').Value:=TYpeSerial;
   qr.Open;
   fname:=qr.FieldByName('seminar_name').AsString;
   fhours:=qr.FieldByName('DURATION_HOURS').AsInteger;;
   fDays:=qr.FieldByName('DURATION_DAYS').AsInteger;
   fAnad:=   qr.FieldByName('ANAD_APPROVED').AsString;
   fCost:=  qr.FieldByName('SEMINAR_COST').AsFloat;
   fFee:=  qr.FieldByName('FEE_estimate').AsFloat;
   fMaxCapacity:=  qr.FieldByName('Max_capacity').AsInteger;
   ksExecSQLVar(cn,'update seminar set seminar_Name= :fname, Duration_hours = :fhours, Duration_days= :fdays, anad_approved= :fAnad, fee_actual= :fFee, max_capacity= :FMaxCapacity where serial_number= :fSerial',
   [fname,fhours,fdays,fAnad,fFee,fMaxCapacity,seminarSerial] );

 finally
   qr.Free;
 end;

 //NOw the subjects (may be a different functions)
 ksExecSQLVar(cn,'delete from seminar_subject where fk_seminar_serial= :semSerial',[SeminarSerial]);
 qr:=TksQuery.Create(cn,'select * from seminar_type_subject where FK_SEMINAR_TYPE_SERIAL= :serial');
 try
   qr.ParamByName('serial').Value:=TypeSerial;
   qr.Open;
   while not qr.Eof do begin
    serial:=ksGenerateSerial(cn,'GEN_SEMINAR_SUBJECT');
    fname:=qr.FieldByName('SUBJECT').AsString;
    subjectSerial:=qr.FieldByName('serial_number').AsInteger;
    ksExecSQLVar(cn,'INSERT INTO SEMINAR_SUBJECT (SERIAL_NUMBER, FK_SEMINAR_SERIAL,fk_subject_type_serial,SUBJECT) VALUES (:serial,:semSerial,:subjectSerial, :subject)',
    [serial,seminarSerial,subjectSerial,fname] );
    qr.Next;
   end;

 finally
   qr.Free;
 end;
 end;


 procedure TV_SeminarFRM.GetReminderFromTemplate(Const SeminarSerial, TypeSerial:Integer);
var
  serial:Integer;
  qr:TksQuery;
  str:String;
   fdesc,fmessage,fafter,fperson,fstart,fDays:string;
   fnumber_of_days:Integer;
begin

 ksExecSQLVar(cn,'delete from SEMINAR_REMINDER where fk_seminar_serial=:serial',[SeminarSerial]);

  str:=
  ' INSERT INTO SEMINAR_REMINDER'
  +'  (SERIAL_NUMBER,fk_seminar_serial, description,reminder_message,after_or_before,person_or_seminar,number_of_days_months,start_or_end,days_or_months)'
  +'  VALUES (:serial,:seminarSerial, :a3,:A4, :a5, :A6,:A7,:a8,:A9)';


 qr:=TksQuery.Create(cn,'select * from seminar_type_reminder where fk_seminar_type_serial= :Typeserial');
 try
   qr.ParamByName('Typeserial').Value:=TYpeSerial;
   qr.Open;
   while not qr.Eof do begin

    serial:=ksGenerateSerial(cn,'GEN_SEMINAR_reminder');
    fdesc:=qr.FieldByName('Description').AsString;
    fmessage:=qr.FieldByName('reminder_message').AsString;
    fafter:=qr.FieldByName('after_or_before').AsString;
    fperson:=qr.FieldByName('person_or_seminar').AsString;
    fstart:=qr.FieldByName('START_OR_END').AsString;
    fnumber_of_days:=qr.FieldByName('NUMBER_OF_DAYS_MONTHS').AsInteger;;
    fDays:=   qr.FieldByName('DAYS_OR_MONTHS').AsString;
    ksExecSQLVar(cn,str,[serial,SeminarSerial,fdesc,fmessage,fafter,fperson,fnumber_of_days,fstart, fdays ] );
    qr.Next;

   end;
 finally
   qr.Free;
 end;


 end;


 procedure TV_SeminarFRM.StudentsTSShow(Sender: TObject);
var
  SeminarSerial:Integer;
begin

  SeminarSerial:= SEminarSQL.FieldByName('serial_number').AsInteger;
  NonAttendSQL.Close;
  NonAttendSQL.ParamByName('seminarSerial').Value:=seminarSerial;
  NonAttendSQL.Open;

  ksOpenTables([AttendingSQL]);

end;

procedure TV_SeminarFRM.InstructorBTNClick(Sender: TObject);
vAR

Frm:TM_InstructorFRM;
Serial:Integer;
begin
  if seminarSQL.State in [dsEdit] then SeminarSQL.Post;
  serial:=strToIntdef(InstructorFLD.Value,0);
  if Serial<1 then exit;
  frm := TM_InstructorFRM.Create(nil);
  frm.IN_ACTION :='DISPLAY';
  frm.in_INSTRUCTOR_SERIAL:=Serial;
  try
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;


procedure TV_SeminarFRM.MembersGRDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF KEY=VK_RETURN THEN begin
    RemovePerson();
  end;
end;

procedure TV_SeminarFRM.MonoRGPChange(Sender: TObject);
begin
CompanyFLD.Visible := MonoRGP.Value='P';
Companylbl.Visible := MonoRGP.Value='P';
end;

procedure TV_SeminarFRM.VenueBTNClick(Sender: TObject);
vAR

Frm:TM_venuFRM;
Serial:Integer;
begin
  if seminarSQL.State in [dsEdit] then SeminarSQL.Post;
  serial:=strToIntdef(venueFLD.Value,0);
  if Serial<1 then exit;
  frm := TM_venuFRM.Create(nil);
  frm.IN_ACTION :='EDIT';
  frm.in_SERIAL:=Serial;
  try
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TV_SeminarFRM.wwNavButton19Click(Sender: TObject);
begin
REminderDescFLD.SetFocus;
end;

procedure TV_SeminarFRM.CostGRDUpdateFooter(Sender: TObject);
var
  amount:Double;
  SeminarSErial:Integer;
begin

      SeminarSErial:=costgrd.DataSource.DataSet.FieldByName('fk_seminar_serial').AsInteger;
      Amount:=UpdateCostFooter(SeminarSerial);

   CostGRD.ColumnByName('TotalAmnt').FooterValue:=
      FloatToStrF(Amount, ffCurrency, 10, 2);

end;

procedure TV_SeminarFRM.SearchPersonFLDKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

  IF KEY=VK_RETURN THEN begin
    if SearchPersonFLD.Text='' then
      exit;
    InsertPerson();
    SearchPersonFLD.Clear;
    SearchPersonFLD.ClearSelection;


  end;

end;

procedure TV_SeminarFRM.AllPersonsGRDDblClick(Sender: TObject);
begin
  InsertPerson();
end;

procedure TV_SeminarFRM.InsertPerson();
var
  qr:TksQuery;
  Personserial:Integer;
  seminarSerial:Integer;
  str:string;
begin
  PersonSerial:=NonAttendSQL.FieldByName('serial_number').AsInteger;
  SeminarSerial:=SeminarSQL.FieldByName('serial_number').AsInteger;
  if Personserial<1 then exit;
  str:=' insert into seminar_person  (fk_seminar_serial,fk_person_serial,attendance_status,is_guest) '
    +' values(:seminar,:person,:attend,:gest)';
  ksExecSQLVar(cn,str,[seminarSerial,Personserial,'fff','N']);

  AttendingSQL.Refresh;
  NonAttendSQL.Refresh;



end;

procedure TV_SeminarFRM.AllPersonsGRDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF KEY=VK_RETURN THEN begin
    InsertPerson();
  end;

end;

procedure TV_SeminarFRM.RzBitBtn1Click(Sender: TObject);
begin
  ksPostTables([SeminarSQL,AttendingSQL]);
  close;
end;

procedure TV_SeminarFRM.FormActivate(Sender: TObject);
begin
  ksfillComboF1(cn,SeminarTYpeFLD,'SEMINAR_TYPE','SERIAL_NUMBER','SEMINAR_NAME','SEMINAR_NAME');
  ksfillComboF1(cn,InstructorFLD,'INSTRUCTOR','SERIAL_NUMBER','Last_NAME','last_NAME');
  ksfillComboF1(cn,VenueFLD,'VENUE','SERIAL_NUMBER','VENUE_NAME','VENUE_NAME');
  ksOpenTables([SeminarSQL]);
  if IN_ACTION='INSERT' then begin
    SeminarSQL.Insert;
  end else if IN_ACTION='EDIT' then begin
     EditSeminar(IN_SEMINAR_SERIAL);
  end;
PageControlPC.ActivePageIndex:=0;

end;

procedure TV_SeminarFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if SeminarSQL.State in [dsInsert, dsEdit] then
   SeminarSQL.Post;
end;

procedure TV_SeminarFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;

procedure TV_SeminarFRM.RemovePerson();
var
  qr:TksQuery;
  Personserial:Integer;
  seminarSerial:Integer;
  str:string;
begin
  PersonSerial:=AttendingSQL.FieldByName('fk_person_serial').AsInteger;
  SeminarSerial:=AttendingSQL.FieldByName('fk_seminar_serial').AsInteger;
  if (Personserial<1) or (seminarSerial<1) then exit;
  str:=' delete from seminar_person where fk_person_serial= :personSerial and fk_seminar_serial= :seminarSerial';
  ksExecSQLVar(cn,str,[Personserial,seminarSerial]);

  AttendingSQL.Refresh;
  NonAttendSQL.Refresh;
end;


procedure TV_SeminarFRM.Nav1InsertClick(Sender: TObject);
begin
//  FirstFLD.SetFocus;
end;

procedure TV_SeminarFRM.PageControlPCChanging(Sender: TObject;
  NewIndex: Integer; var AllowChange: Boolean);
begin
  try
    if SeminarSQL.State in [dsInsert,dsEdit] then
      SeminarSQl.Post;
  except
    allowChange:= false;
    exit;
  end;
  allowChange:=  (SeminarSQL.FieldByName('serial_number').AsInteger >0);

end;

procedure TV_SeminarFRM.CanelBTNClick(Sender: TObject);
begin
SeminarSQL.Cancel;
close;
end;



procedure TV_SeminarFRM.CostTSShow(Sender: TObject);
begin
ksOpenTables([CostItemTBL,SeminarCostItemSQL]);
end;

procedure TV_SeminarFRM.CostTypeFLDCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
FillTable.FieldByName('amount_per_item').AsFloat:=LookupTable.FieldByName('amount').AsFloat;
end;

procedure TV_SeminarFRM.CostTypeFLDDropDown(Sender: TObject);
begin
with (Sender as TwwDBLookupCombo) do
   (LookupTable as TIBCTable).IndexFieldNames :='COST_NAME';
//    'COST_ITEM_TYPE_NAME_IDX';
end;

procedure TV_SeminarFRM.SubjectTSShow(Sender: TObject);
begin
ksOpenTables([seminarSubjectSQL,SeminarDaySQL]);
end;

Procedure TV_SeminarFRM.EditSeminar(Const SeminarSerial:integer);
Var
        Dataset:TIBCQuery;
Begin
        Dataset:=SeminarSQL;
        with Dataset do begin
          close;
          ParamByName('SerialNumber').value:=SeminarSerial;
          Open;
        end;

          if FirstFLD.CanFocus then
          firstFLD.SetFocus;

End;


Procedure TV_SeminarFRM.StartSeminar(Const SeminarSerial:integer);
var
  qr:TksQuery;
  status:String;
Begin
  if SeminarSerial<1 then exit;
  qr:=TksQuery.Create(cn,'select * from Seminar where serial_number= :serial');
  try
    qr.ParamByName('serial').AsInteger:=seminarSerial;
    qr.Open;
    status:=qr.FieldByName('status').AsString;
    if status='P' then begin
      ksExecSQLVar(cn,'update seminar set status= ''A'' where serial_number= :serial',[SeminarSerial]);
    end;
  finally
    qr.Free;
  end;

End;


Function TV_SeminarFRM.UpdateCostFooter(Const SeminarSerial:Integer):Double;
var
  qr : TksQuery;
  str:String;

begin

    if SeminarSerial<1 then begin
    result:=0;
    exit;
    end;
    Str:=
' select'
  +'  sum(nullif(  sci.number_of_items ,0)*NulliF(sci.amount_per_item,0) ) as Total'
  +'  from seminar_cost_item sci'
  +'  where sci.fk_seminar_serial= :seminarSerial';

  qr:= TksQuery.Create(cn,str);
  try
    with qr do begin
      ParamByName('SeminarSerial').Value:=Seminarserial;
    open;
      result:=FieldbyName('Total').AsFloat;
    close;
    end;

  finally
   qr.Free;
  end;
end;


End.
