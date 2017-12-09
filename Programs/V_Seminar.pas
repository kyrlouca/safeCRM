unit V_Seminar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot,
    vcl.Wwdbcomb,
  G_KyrSQL, G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl,
    vcl.Wwdbdatetimepicker,
  System.ImageList, System.DateUtils, System.TypInfo, Vcl.ImgList, RzTabs,
    vcl.wwcheckbox, RzSplit, RzPopups,
  Vcl.ComCtrls, RzDBEdit, RzRadGrp, RzDBRGrp, RzDTP, vcl.wwclearbuttongroup,
  vcl.wwradiogroup, RzRadChk, RzDBChk, G_debugUnit, codeSiteLogging,
    CodeSiteMessage,
  Vcl.ExtDlgs, vcl.wwriched, Vcl.Menus, RzCmboBx, RzDBCmbo, DASQLMonitor,
  IBCSQLMonitor;
type
//Function TV_SeminarFRM.FindActionDate(const StartDate,EndDate:TDate; Const UseStartDate:Boolean; Const isAfter,isDayUnit:Boolean;Const NumberOfUnits:Integer):Tdate;
  TactionDateRec = record
    StartDate: Tdate;
    EndDate: Tdate;
    UseStartDate: boolean;
    isAfter: boolean;
    isDayUnit: Boolean;
    NumberOfUnits: Integer;
  end;

  TV_SeminarFRM = class(TForm)
    Panel1: TPanel;
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
    SecondGRP: TRzGroupBox;
    Label5: TLabel;
    Label10: TLabel;
    wwDBEdit1: TwwDBEdit;
    InstructorFLD: TwwDBComboBox;
    VenueFLD: TwwDBComboBox;
    Label11: TLabel;
    InstructorBTN: TSpeedButton;
    VenueBTN: TSpeedButton;
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
    CLoseBTN: TRzBitBtn;
    AcceptBTN: TBitBtn;
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
    seminarSubjectSQL: TIBCQuery;
    SeminarSubjectSRC: TDataSource;
    RzPanel4: TRzPanel;
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
    seminarSubjectSQLSERIAL_NUMBER: TIntegerField;
    seminarSubjectSQLFK_SEMINAR_SERIAL: TIntegerField;
    seminarSubjectSQLSUBJECT: TWideStringField;
    AttendingSQLSERIAL_NUMBER: TIntegerField;
    AttendingSQLFIRST_NAME: TWideStringField;
    AttendingSQLLAST_NAME: TWideStringField;
    AttendingSQLFK_SEMINAR_SERIAL: TIntegerField;
    AttendingSQLFK_PERSON_SERIAL: TIntegerField;
    AttendingSQLATTENDANCE_STATUS: TWideStringField;
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
    GroupBox5: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    RzDBLabel1: TRzDBLabel;
    Label17: TLabel;
    REminderDescFLD: TwwDBEdit;
    RzDBRichEdit2: TRzDBRichEdit;
    wwDBGrid3: TwwDBGrid;
    AfterFLD: TwwDBComboBox;
    NamePersonFLD: TwwDBComboBox;
    StartEndLD: TwwDBComboBox;
    Button1: TButton;
    TitleLbl: TRzPanel;
    SeminarSQLSERIAL_NUMBER: TIntegerField;
    SeminarSQLFK_SEMINAR: TIntegerField;
    SeminarSQLSEMINAR_NAME: TWideStringField;
    SeminarSQLFK_INSTRUCTOR: TIntegerField;
    SeminarSQLFK_VENUE: TIntegerField;
    SeminarSQLDATE_STARTED: TDateField;
    SeminarSQLDATE_COMPLETED: TDateField;
    SeminarSQLDURATION_DAYS: TIntegerField;
    SeminarSQLDURATION_HOURS: TIntegerField;
    SeminarSQLAMOUNT_ANAD: TFloatField;
    SeminarSQLCOMMENTS: TWideStringField;
    SeminarSQLANAD_APPROVED: TWideStringField;
    SeminarSQLSTATUS: TWideStringField;
    SeminarSQLIS_INVOICED: TWideStringField;
    SeminarSQLIS_CERTIFICATED: TWideStringField;
    Label22: TLabel;
    wwDBEdit5: TwwDBEdit;
    SeminarSQLMAX_CAPACITY: TIntegerField;
    AttendingSQLIS_GUEST: TWideStringField;
    wwDBGrid4: TwwDBGrid;
    SeminarSQLFK_COMPANY_PERSON_SERIAL: TIntegerField;
    Date1FLD: TwwDBDateTimePicker;
    Label16: TLabel;
    HIghFLD: TRzDBCheckBox;
    Label18: TLabel;
    SeminarReminderSQLSERIAL_NUMBER: TIntegerField;
    SeminarReminderSQLFK_SEMINAR_SERIAL: TIntegerField;
    SeminarReminderSQLDESCRIPTION: TWideStringField;
    SeminarReminderSQLREMINDER_MESSAGE: TWideStringField;
    SeminarReminderSQLAFTER_OR_BEFORE: TWideStringField;
    SeminarReminderSQLPERSON_OR_SEMINAR: TWideStringField;
    SeminarReminderSQLSTART_OR_END: TWideStringField;
    SeminarReminderSQLDAYS_OR_MONTHS: TWideStringField;
    SeminarReminderSQLNUMBER_OF_DAYS_MONTHS: TIntegerField;
    SeminarReminderSQLREMINDER_TYPE: TWideStringField;
    SeminarReminderSQLIS_COMPLETED: TWideStringField;
    SeminarReminderSQLDATE_TARGETED: TDateField;
    SeminarReminderSQLDATE_COMPLETED: TDateField;
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
    Label20: TLabel;
    CompletedFLD: TwwCheckBox;
    Label21: TLabel;
    wwDBEdit6: TwwDBEdit;
    SeminarSQLHAS_EXPIRY: TWideStringField;
    SeminarSQLEXPIRY_PERIOD: TIntegerField;
    RzPanel14: TRzPanel;
    Label9: TLabel;
    wwDBComboBox2: TwwDBComboBox;
    SpeedButton1: TSpeedButton;
    SeminarSQLANAD_NUMBER: TWideStringField;
    SeminarSQLFK_EXAMINER: TIntegerField;
    SeminarSQLTYPE_MONO_POLY: TWideStringField;
    RzDBLabel2: TRzDBLabel;
    SeminarPictureSQL÷÷÷÷: TIBCQuery;
    SeminarPictureSRC: TDataSource;
    OpenPictureDialog1: TOpenPictureDialog;
    SeminarPictureSQL÷÷÷÷SERIAL_NUMBER: TIntegerField;
    SeminarPictureSQL÷÷÷÷PICTURE_SEMINAR: TBlobField;
    SeminarPictureSQL÷÷÷÷LINE_A1: TWideStringField;
    SeminarPictureSQL÷÷÷÷LINE_A2: TWideStringField;
    SeminarPictureSQL÷÷÷÷LINE_B1: TWideStringField;
    SeminarPictureSQL÷÷÷÷LINE_B2: TWideStringField;
    SeminarPictureSQL÷÷÷÷LINE_B3: TWideStringField;
    SeminarPictureSQL÷÷÷÷FK_SEMINAR_SERIAL: TIntegerField;
    SeminarPictureSQL÷÷÷÷LANGUAGE_GREEK_OR_ENGLISH: TWideStringField;
    SeminarPictureSQL÷÷÷÷LINE_C1: TWideStringField;
    MainMenu1: TMainMenu;
    Help1: TMenuItem;
    Certifcates1: TMenuItem;
    SeminarPictureSQL÷÷÷÷PICTURE_TOP_L1: TBlobField;
    SeminarPictureSQL÷÷÷÷PICTURE_TOP_R1: TBlobField;
    SeminarPictureSQL÷÷÷÷PICTURE_BOT_L1: TBlobField;
    SeminarPictureSQL÷÷÷÷PICTURE_BOT_R1: TBlobField;
    SeminarPictureSQL÷÷÷÷TL_X: TIntegerField;
    SeminarPictureSQL÷÷÷÷TL_Y: TIntegerField;
    SeminarPictureSQL÷÷÷÷TR_X: TIntegerField;
    SeminarPictureSQL÷÷÷÷TR_Y: TIntegerField;
    SeminarPictureSQL÷÷÷÷BL_X: TIntegerField;
    SeminarPictureSQL÷÷÷÷BL_Y: TIntegerField;
    SeminarPictureSQL÷÷÷÷BR_X: TIntegerField;
    SeminarPictureSQL÷÷÷÷BR_Y: TIntegerField;
    StatusFLD: TwwDBComboBox;
    SeminarSQLSEM_CATEGORY: TWideStringField;
    GroupBox1: TGroupBox;
    RzPanel6: TRzPanel;
    wwDBGrid1: TwwDBGrid;
    FirstGRP: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    SerialFLD: TRzDBLabel;
    Label4: TLabel;
    Label12: TLabel;
    Companylbl: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    DescFLD: TwwDBEdit;
    SeminarTypeFLD: TwwDBComboBox;
    RzDBRichEdit1: TRzDBRichEdit;
    MonoRGP: TwwRadioGroup;
    CompanyFLD: TwwDBLookupCombo;
    StartDateFLD: TwwDBDateTimePicker;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    AnadFLD: TwwDBEdit;
    IBCSQLMonitor1: TIBCSQLMonitor;
    RzBitBtn2: TRzBitBtn;
    Panel2: TRzPanel;
    SeminarReminderSQLIS_HIGH: TWideStringField;
    RzPanel9: TRzPanel;
    GroupBox6: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    RzDBLabel3: TRzDBLabel;
    SubjectNameFLD: TwwDBEdit;
    RzPanel15: TRzPanel;
    RzPanel16: TRzPanel;
    wwDBNavigator5: TwwDBNavigator;
    wwNavButton23: TwwNavButton;
    wwNavButton24: TwwNavButton;
    wwNavButton25: TwwNavButton;
    wwNavButton26: TwwNavButton;
    wwNavButton27: TwwNavButton;
    wwNavButton28: TwwNavButton;
    wwNavButton29: TwwNavButton;
    seminarSubjectSQLFK_SUBJECT_TYPE_SERIAL: TIntegerField;
    seminarSubjectSQLFEE_NORMAL: TFloatField;
    seminarSubjectSQLFEE_REDUCED: TFloatField;
    RzPanel7: TRzPanel;
    Label26: TLabel;
    wwDBEdit7: TwwDBEdit;
    Label25: TLabel;
    wwDBEdit2: TwwDBEdit;
    procedure AcceptBTNClick(Sender: TObject);
    procedure SeminarSRCStateChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CanelBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CLoseBTNClick(Sender: TObject);
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
    procedure SeminarReminderSQLNewRecord(DataSet: TDataSet);
    procedure SelTopLeftBTNClick(Sender: TObject);
    procedure ClearTopLeftBTNClick(Sender: TObject);
    procedure SeminarCostItemSQLNewRecord(DataSet: TDataSet);
    procedure SeminarDaySQLBeforeInsert(DataSet: TDataSet);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure HIghFLDClick(Sender: TObject);
    procedure wwNavButton25Click(Sender: TObject);
  private
    { Private declarations }
    cn: TIBCConnection;
//  Function FindActionDate(const StartDate,EndDate:TDate; Const UseStartDate:Boolean; Const isAfter,isDayUnit:Boolean;Const NumberOfUnits:Integer):Tdate;


    function allowToModify(): Boolean;

    function FindActionDate(ActionDateRec: TActionDateRec): Tdate;

    procedure StartSeminar(const SeminarSerial: integer);
    procedure EditSeminar(const SeminarSerial: integer);
    procedure RemovePerson();
    procedure InsertPerson();
    procedure UseSeminarTemplate(const SeminarSerial, TypeSerial: Integer);
    procedure GetReminderFromTemplate(const SeminarSerial, TypeSerial: Integer);
    procedure GetTemplatePIctures(const SeminarSerial, TypeSerial: Integer);

    function UpdateCostFooter(const SeminarSerial: Integer): Double;

  public
    { Public declarations }
    IN_ACTION: string;
    IN_SEMINAR_SERIAL: Integer;

  end;

var
  V_SeminarFRM: TV_SeminarFRM;

implementation

uses U_Database, G_generalProcs, M_Instructor, M_Venue, G_SFCommonProcs,
  H_Help, v_SeminarPictureTemplate;

{$R *.DFM}

procedure TV_SeminarFRM.AcceptBTNClick(Sender: TObject);
begin
  ksPostTables([SeminarSQL]);
  case PageControlPC.ActivePageIndex of
    0: ksPostTables([SeminarSQL]);
    1: ksPostTables([seminarSubjectSQL]);
    2: ksPostTables([AttendingSQL]);
    3: ksPostTables([SeminarCostItemSQL]);
    4: ksPostTables([SeminarReminderSQL]);
//    5: ksPostTables([SeminarPictureSQL]);
  end;

end;

procedure TV_SeminarFRM.BitBtn2Click(Sender: TObject);
var
  seminarSerial: Integer;
begin

  seminarSerial := SeminarSQL.FieldByName('serial_number').AsInteger;
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
  dataset.FieldByName('totalAmnt').Value :=
    Dataset.FieldByName('AMOUNT_PER_ITEM').AsFloat
    * Dataset.FieldByName('NUMBER_OF_ITEMS').AsInteger;
end;

procedure TV_SeminarFRM.SeminarCostItemSQLNewRecord(DataSet: TDataSet);
var
  cnt: Integer;
  SEminarSerial: Integer;
begin
  SEminarSErial := SeminarSQL.FieldByName('serial_number').AsInteger;
  cnt := ksCountRecVarSQL(cn,
    'select * from seminar_person sp where sp.fk_seminar_serial= :SeminarSerial',
    [SeminarSerial]);
  Dataset.FieldByName('Number_of_items').Value := cnt;

  CostGRD.setfocus;
  CostGRD.SetActiveField('FK_COst_item');

end;

procedure TV_SeminarFRM.SeminarDaySQLBeforeInsert(DataSet: TDataSet);
begin
  if seminarSubjectSQL.State in [dsEdit, dsInsert] then
    seminarSubjectSQL.Post;

end;

procedure TV_SeminarFRM.SeminarReminderSQLNewRecord(DataSet: TDataSet);
begin

  Dataset.FieldByName('reminder_type').Value := 'S';
  Dataset.FieldByName('PERSON_OR_SEMINAR').Value := 'S';
  Dataset.FieldByName('is_completed').Value := 'N';
end;

procedure TV_SeminarFRM.SeminarSQLNewRecord(DataSet: TDataSet);
begin
  Dataset.FieldByName('Status').Value := 'P';
  Dataset.FieldByName('ANAD_APPROVED').Value := 'Y';
  Dataset.FieldByName('TYPE_MONo_pOLY').Value := 'P';
  Dataset.FieldByName('sem_category').Value := 'N';
  Dataset.FieldByName('is_invoiced').Value := 'N';
  Dataset.FieldByName('is_certificated').Value := 'N';
  Dataset.FieldByName('Max_capacity').Value := 0;
  Dataset.FieldByName('hAS_EXPIRY').Value := 'N';

end;

procedure TV_SeminarFRM.SeminarSRCStateChange(Sender: TObject);
begin

  with SeminarSQL do
  begin
    if State <> dsInsert then
    begin
//         StationIDFLD.Enabled:=false;
    end
    else
    begin
//         StationIDFLD.Enabled:=true;
    end;
  end; //with

end;

procedure TV_SeminarFRM.SeminarTSShow(Sender: TObject);
begin

  AnadFLD.SetFocus;
end;

procedure TV_SeminarFRM.SeminarTypeFLDCloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
var
  TypeSerial: Integer;
  SeminarSerial: Integer;
//  ReminderSerial:Integer;
begin
  if SeminarSQL.State in [dsEdit, dsInsert] then
  begin
    DescFLD.Text := seminarTypeFLD.Text;
    SeminarSQL.Post;
  end;

  SeminarSerial := SeminarSQL.FieldByName('serial_number').AsInteger;
  TYpeserial := SeminarSQL.FieldByName('FK_Seminar').AsInteger;
  if (not select) or (Seminarserial < 1) or (TypeSerial < 1) then
    exit;
  UseSeminarTEmplate(SeminarSerial, TypeSerial);
  GetReminderFromTemplate(SEminarSerial, TYpeSerial);
  GetTemplatePIctures(SEminarSerial, TYpeSerial);

  SeminarSQL.close;
  seminarSQL.ParamByName('serialNumber').Value := seminarSerial;
  seminarSQL.Open;
  DescFLD.SetFocus;

end;

procedure TV_SeminarFRM.UseSeminarTemplate(const SeminarSerial, TypeSerial:
  Integer);
var
  serial: Integer;
  subjectSerial: Integer;
  qr: TksQuery;
  fhours, fdays: integer;
  fName, fAnad: string;
  fcost: double;
//  FFeeActual: Double;
//  fFeeANad: double;
  feeNormal,FeeReduced:Double;
  fMaxCapacity: Integer;
  fexpiry: string;
  fexpiryMonths: Integer;
  str: string;
begin

  qr := TksQuery.Create(cn,
    'select * from seminar_type where serial_number= :serial');
  try
    qr.ParamByName('serial').Value := TYpeSerial;
    qr.Open;

    fname := qr.FieldByName('seminar_name').AsString;
    fAnad := qr.FieldByName('ANAD_APPROVED').AsString;
    fhours := qr.FieldByName('DURATION_HOURS').AsInteger;

    fMaxCapacity := qr.FieldByName('Max_capacity').AsInteger;
//   fDays:=qr.FieldByName('DURATION_DAYS').AsInteger;
    fCost := qr.FieldByName('SEMINAR_COST').AsFloat;

//    fFeeactual := qr.FieldByName('FEE_actual').AsFloat;
//    fFeeAnad := qr.FieldByName('FEE_with_anad_sub').AsFloat;
    fExpiry := qr.FieldByName('has_expiry').AsString;
    fExpiryMOnths := qr.FieldByName('expiry_period').AsInteger;

    str :=
      ' update seminar sem set'
      + '    seminar_Name= :fname, anad_approved= :fAnad,Duration_hours = :fhours, max_capacity= :FMaxCapacity,  '
      + '    sem.has_expiry = :fHasExpiry, sem.expiry_period= :fExpirymonths'
      + '  where  sem.serial_number= :fSerial';

    ksExecSQLVar(cn, str,
      [fname, fAnad, fhours, fMaxCapacity, fExpiry,
        fExpiryMonths, seminarSerial]);

  finally
    qr.Free;
  end;

 //NOw the subjects (may be a different functions)
  ksExecSQLVar(cn,
    'delete from seminar_subject where fk_seminar_serial= :semSerial',
    [SeminarSerial]);
  qr := TksQuery.Create(cn,
    'select * from seminar_type_subject where FK_SEMINAR_TYPE_SERIAL= :serial');
  try
    qr.ParamByName('serial').Value := TypeSerial;
    qr.Open;
    while not qr.Eof do
    begin
      serial := ksGenerateSerial(cn, 'GEN_SEMINAR_SUBJECT');
      fname := qr.FieldByName('SUBJECT').AsString;
      feeNormal := qr.FieldByName('FEE_NORMAL').AsFloat;
      feeReduced := qr.FieldByName('FEE_REDUCED').AsFloat;
      subjectSerial := qr.FieldByName('serial_number').AsInteger;
      ksExecSQLVar(cn,
        'INSERT INTO SEMINAR_SUBJECT (SERIAL_NUMBER, FK_SEMINAR_SERIAL,fk_subject_type_serial,SUBJECT ,fee_normal,fee_reduced) VALUES (:serial,:semSerial,:subjectSerial, :subject,:feeNorm,:feeRed)',
        [serial, seminarSerial, subjectSerial, fname, feeNormal,feeReduced]);
      qr.Next;
    end;

  finally
    qr.Free;
  end;
end;

procedure TV_SeminarFRM.GetReminderFromTemplate(const SeminarSerial, TypeSerial:
  Integer);
var
  serial: Integer;
  qr: TksQuery;
  str: string;
  fdesc, fmessage, fafter, fperson, fstart, fDays: string;
  fnumber_of_days: Integer;
  ActionDate: TDate;
  ActionDateRec: TActionDateRec;
begin

  qr := TksQuery.Create(cn,
    'select Date_Started, date_completed from seminar where serial_number= :SeminarSerial');
  try
    qr.ParamByName('SeminarSerial').Value := SeminarSerial;
    qr.Open;
    ActionDateRec.StartDate := qr.FieldByName('date_started').AsDateTime;
    ActionDateRec.EndDate := qr.FieldByName('date_completed').AsDateTime;
  finally
    qr.Free;
  end;

  ksExecSQLVar(cn,
    'delete from SEMINAR_REMINDER where fk_seminar_serial=:serial',
    [SeminarSerial]);

  str :=
    ' INSERT INTO SEMINAR_REMINDER'
    + '  (SERIAL_NUMBER,fk_seminar_serial, description,reminder_message,after_or_before,person_or_seminar,number_of_days_months,start_or_end,days_or_months,reminder_type,is_completed,date_targeted)'
    + '  VALUES (:serial,:seminarSerial, :a3,:A4, :a5, :A6,:A7,:a8,:A9,:a10,:a11,:a12)';

  qr := TksQuery.Create(cn,
    'select * from seminar_type_reminder where fk_seminar_type_serial= :Typeserial');
  try
    qr.ParamByName('Typeserial').Value := TYpeSerial;
    qr.Open;
    while not qr.Eof do
    begin

      serial := ksGenerateSerial(cn, 'GEN_SEMINAR_reminder');
      fdesc := qr.FieldByName('Description').AsString;
      fmessage := qr.FieldByName('reminder_message').AsString;
      fafter := qr.FieldByName('after_or_before').AsString;
      fperson := qr.FieldByName('person_or_seminar').AsString;
      fstart := qr.FieldByName('START_OR_END').AsString;
      fnumber_of_days := qr.FieldByName('NUMBER_OF_DAYS_MONTHS').AsInteger;
      ;
      fDays := qr.FieldByName('DAYS_OR_MONTHS').AsString;

      ActionDateRec.UseStartDate := (fstart = 'S');
      ActionDateRec.isAfter := (fafter = 'A');
      ActionDateRec.isAfter := (fafter = 'A');
      ActionDateRec.isDayUnit := (fdays = 'D');
      ActionDateRec.NumberOfUnits := fnumber_of_days;

      G_DebugUnit.TRecViewer<TActionDateREc>.GetFields(ActionDateRec);
      ActionDate := FindActionDate(ActionDateRec);
      ksExecSQLVar(cn, str, [serial, SeminarSerial, fdesc, fmessage, fafter,
        fperson, fnumber_of_days, fstart, fdays, 'S', 'N', ActionDate]);
      qr.Next;

    end;
  finally
    qr.Free;
  end;

end;

procedure TV_SeminarFRM.GetTemplatePIctures(const SeminarSerial, TypeSerial:
  Integer);
var
  serial: Integer;
  Typeqr: TksQuery;
  seminarQr: TksQuery;
  str: string;
  fdesc, fmessage, fafter, fperson, fstart, fDays: string;
  fnumber_of_days: Integer;
  ActionDate: TDate;
  ActionDateRec: TActionDateRec;
  blobRead, blobWrite: TBlobField;
  streamRead, StreamWrite: TStream;
  img: TImage;
  I: Integer;
begin

  ksExecSQLVar(cn,
    'delete from SEMINAR_pictures where fk_seminar_serial=:serial',
    [SeminarSerial]);

  str :=
    ' INSERT INTO SEMINAR_PICTURES'
    + '   (SERIAL_NUMBER,  FK_SEMINAR_SERIAL,LANGUAGE_GREEK_OR_ENGLISH,'
    + '   LINE_A1, LINE_A2, LINE_B1, LINE_B2, LINE_B3,LINE_C1,'
    + '   picture_top_l1,picture_top_r1, picture_bot_l1,picture_bot_r1,'
    + '   tl_x,tl_y, tr_x,tr_y, bl_x,bl_y,br_x,br_y)'
    + '    VALUES ('
    + '    :s1,:s2,:s3,'
    + '    :l1,:l2,:l3,:l4,:l5,:l6,'
    + '    :p1,:p2,:p3,:p4,'
    + '    :t1,:t2,:t3,:t4,:t5,:t6,:t7,:t8)';

// img:=Timage.Create(self);
  SeminarQr := TksQuery.Create(cn,
    ' select * from seminar_pictures where fk_seminar_serial= :seminarSerial');
  Typeqr := TksQuery.Create(cn,
    'select * from seminar_type_pictures where fk_seminar_type_serial= :Typeserial');
  try
    Typeqr.ParamByName('Typeserial').Value := TYpeSerial;
    Typeqr.Open;
    SeminarQr.ParamByName('seminarSerial').Value := SeminarSerial;
    SeminarQR.Open;

    try

      while not Typeqr.Eof do
      begin

        serial := ksGenerateSerial(cn, 'GEN_SEMINAR_PICTURES');

//    blobRead := Typeqr.FieldByName('picture_seminar') as TBlobField;
//    streamRead := Typeqr.CreateBlobStream(blobRead, bmRead);
//    Img.Picture.LoadFromStream(streamRead);

        SeminarQR.Insert;
        SeminarQR.FieldByName('Serial_number').value := Serial;
        SeminarQR.FieldByName('FK_Seminar_serial').value := SeminarSerial;
        CopyDataRecord(typeQr, SeminarQR);
//    blobWrite := Seminarqr.FieldByName('picture_seminar') as TBlobField;
//    streamWrite := Seminarqr.CreateBlobStream(blobWrite, bmWrite);
//    StreamWrite.Position:=0;
//    Img.Picture.SaveToStream(streamWrite);
        SeminarQR.Post;
        TypeQr.Next;
      end;
    finally
//    streamWrite.Free;
//    streamRead.Free;

    end;
  finally
    Typeqr.Free;
    SeminarQr.Free;
//   img.Free;
  end;

end;

procedure TV_SeminarFRM.HIghFLDClick(Sender: TObject);
begin
  if HighFLD.Checked then
    HighFld.Color:=clRed
  else
    highFLD.Color:=clBtnFace;
end;

procedure TV_SeminarFRM.StudentsTSShow(Sender: TObject);
var
  SeminarSerial: Integer;
  st: string;
  allowModify: BOolean;
begin

  SeminarSerial := SEminarSQL.FieldByName('serial_number').AsInteger;
  NonAttendSQL.Close;
  NonAttendSQL.ParamByName('seminarSerial').Value := seminarSerial;
  NonAttendSQL.Open;

  ksOpenTables([AttendingSQL]);

//  st:=SeminarSQL.FieldByName('status').AsString;
//  allowModify := (St='P') or (St='N') or (St='W');
//
//  Dataset.ReadOnly:= not allowModify;

end;

procedure TV_SeminarFRM.InstructorBTNClick(Sender: TObject);
var

  Frm: TM_InstructorFRM;
  Serial: Integer;
begin
  if seminarSQL.State in [dsEdit] then
    SeminarSQL.Post;
  serial := strToIntdef(InstructorFLD.Value, 0);
  if Serial < 1 then
    exit;
  frm := TM_InstructorFRM.Create(nil);
  frm.IN_ACTION := 'DISPLAY';
  frm.in_INSTRUCTOR_SERIAL := Serial;
  try
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TV_SeminarFRM.MembersGRDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if KEY = VK_RETURN then
  begin
    RemovePerson();
  end;
end;

procedure TV_SeminarFRM.MonoRGPChange(Sender: TObject);
begin
  CompanyFLD.Visible := MonoRGP.Value = 'M';
  Companylbl.Visible := MonoRGP.Value = 'M';
end;

procedure TV_SeminarFRM.VenueBTNClick(Sender: TObject);
var

  Frm: TM_venuFRM;
  Serial: Integer;
begin
  if seminarSQL.State in [dsEdit] then
    SeminarSQL.Post;
  serial := strToIntdef(venueFLD.Value, 0);
  if Serial < 1 then
    exit;
  frm := TM_venuFRM.Create(nil);
  frm.IN_ACTION := 'EDIT';
  frm.in_SERIAL := Serial;
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

procedure TV_SeminarFRM.wwNavButton25Click(Sender: TObject);
begin
SubjectNameFLD.SetFocus;
end;

procedure TV_SeminarFRM.CostGRDUpdateFooter(Sender: TObject);
var
  amount: Double;
  SeminarSErial: Integer;
begin

  SeminarSErial :=
    costgrd.DataSource.DataSet.FieldByName('fk_seminar_serial').AsInteger;
  Amount := UpdateCostFooter(SeminarSerial);

  CostGRD.ColumnByName('TotalAmnt').FooterValue :=
    FloatToStrF(Amount, ffCurrency, 10, 2);

end;

procedure TV_SeminarFRM.SearchPersonFLDKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

  if KEY = VK_RETURN then
  begin
    if SearchPersonFLD.Text = '' then
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
  qr: TksQuery;
  Personserial: Integer;
  seminarSerial: Integer;
  str: string;
begin

  if not allowToModify() then
  begin
    ShowMessage('Cannot Modify');
    exit;
  end;

  PersonSerial := NonAttendSQL.FieldByName('serial_number').AsInteger;
  SeminarSerial := SeminarSQL.FieldByName('serial_number').AsInteger;
  if Personserial < 1 then
    exit;
  str := ' insert into seminar_person  (fk_seminar_serial,fk_person_serial,attendance_status,is_guest) '
    + ' values(:seminar,:person,:attend,:gest)';
  ksExecSQLVar(cn, str, [seminarSerial, Personserial, 'fff', 'N']);

  AttendingSQL.Refresh;
  NonAttendSQL.Refresh;

end;

procedure TV_SeminarFRM.AllPersonsGRDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if KEY = VK_RETURN then
  begin
    InsertPerson();
  end;

end;

procedure TV_SeminarFRM.CLoseBTNClick(Sender: TObject);
begin
  ksPostTables([SeminarSQL, AttendingSQL]);
  close;
end;


procedure TV_SeminarFRM.SelTopLeftBTNClick(Sender: TObject);
begin
{
  SeminarSerial:=SeminarSQL.fieldbyName('serial_number').AsInteger;
  if SelectPicturex(CertTopLeftImg) then begin
    SavePictureX(SeminarSerial, LanguageRGP.Value,CertTopLeftImg);
    ShowPictureX(SeminarSerial,LanguageRGP.Value,CertTopLeftImg);
//    ShowPictureData(TypeSerial,LanguageRGP.Value);
  end;
}
end;

procedure TV_SeminarFRM.ClearTopLeftBTNClick(Sender: TObject);
var
  SeminarSerial: Integer;
begin
{
  SeminarSerial:=SeminarSQL.fieldbyName('serial_number').AsInteger;
  CertTopLeftImg.Picture:=nil;
  SavePictureX(SeminarSerial, LanguageRGP.Value,CertTopLeftImg);
}
end;

procedure TV_SeminarFRM.FormActivate(Sender: TObject);
begin
  ksfillComboF1(cn, SeminarTYpeFLD, 'SEMINAR_TYPE', 'SERIAL_NUMBER',
    'SEMINAR_NAME', 'SEMINAR_NAME');
  ksfillComboF1(cn, InstructorFLD, 'INSTRUCTOR', 'SERIAL_NUMBER', 'Last_NAME',
    'last_NAME');
  ksfillComboF1(cn, VenueFLD, 'VENUE', 'SERIAL_NUMBER', 'VENUE_NAME',
    'VENUE_NAME');
  ksfillComboF1(cn, StatusFLD, 'status_activity', 'status', 'description');
  ksOpenTables([SeminarSQL]);
  if IN_ACTION = 'INSERT' then
  begin
    SeminarSQL.Insert;
  end
  else if IN_ACTION = 'EDIT' then
  begin
    EditSeminar(IN_SEMINAR_SERIAL);
  end;
  PageControlPC.ActivePageIndex := 0;

end;

procedure TV_SeminarFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SeminarSQL.State in [dsInsert, dsEdit] then
    SeminarSQL.Post;
end;

procedure TV_SeminarFRM.FormCreate(Sender: TObject);
begin
  cn := U_databaseFRM.DataConnection;
end;

procedure TV_SeminarFRM.RemovePerson();
var
  qr: TksQuery;
  Personserial: Integer;
  seminarSerial: Integer;
  str: string;
  st: string;
  AllowModify: Boolean;
begin
  if not allowToModify() then
  begin
    ShowMessage('Cannot Modify');
    exit;
  end;

  PersonSerial := AttendingSQL.FieldByName('fk_person_serial').AsInteger;
  SeminarSerial := AttendingSQL.FieldByName('fk_seminar_serial').AsInteger;
  if (Personserial < 1) or (seminarSerial < 1) then
    exit;
  str :=
    ' delete from seminar_person where fk_person_serial= :personSerial and fk_seminar_serial= :seminarSerial';
  ksExecSQLVar(cn, str, [Personserial, seminarSerial]);

  AttendingSQL.Refresh;
  NonAttendSQL.Refresh;
end;

procedure TV_SeminarFRM.RzBitBtn1Click(Sender: TObject);
var
  Frm: TV_SeminarPictureTemplateFRM;
begin
  frm := TV_SeminarPictureTemplateFRM.Create(nil);
  try

    frm.IN_SeminarSerial:=SeminarSQL.FieldByName('serial_number').AsInteger;
    frm.IN_allowModify:=true;
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;


procedure TV_SeminarFRM.Nav1InsertClick(Sender: TObject);
begin
//  FirstFLD.SetFocus;
end;

procedure TV_SeminarFRM.PageControlPCChanging(Sender: TObject;
  NewIndex: Integer; var AllowChange: Boolean);
begin
  try
    if SeminarSQL.State in [dsInsert, dsEdit] then
      SeminarSQl.Post;
  except
    allowChange := false;
    exit;
  end;
  allowChange := (SeminarSQL.FieldByName('serial_number').AsInteger > 0);

end;

procedure TV_SeminarFRM.CanelBTNClick(Sender: TObject);
begin
  SeminarSQL.Cancel;
  close;
end;

procedure TV_SeminarFRM.CostTSShow(Sender: TObject);
var
  allowModify: boolean;
begin
  ksOpenTables([CostItemTBL, SeminarCostItemSQL]);
  AllowmodifY := allowToModify();
//  CostItemTBL.ReadOnly:=not allowmodify;
  SeminarCostItemSQL.ReadOnly := not allowmodify;

end;

procedure TV_SeminarFRM.CostTypeFLDCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  FillTable.FieldByName('amount_per_item').AsFloat :=
    LookupTable.FieldByName('amount').AsFloat;
end;

procedure TV_SeminarFRM.CostTypeFLDDropDown(Sender: TObject);
begin
  with (Sender as TwwDBLookupCombo) do
    (LookupTable as TIBCTable).IndexFieldNames := 'COST_NAME';
//    'COST_ITEM_TYPE_NAME_IDX';
end;

procedure TV_SeminarFRM.SubjectTSShow(Sender: TObject);
var
  allowmodify: Boolean;
begin

  ksOpenTables([seminarSubjectSQL, SeminarDaySQL]);

  AllowmodifY := allowToModify();
  seminarSubjectSQL.ReadOnly := not allowmodify;
  SeminarDaySQL.ReadOnly := not allowmodify;

end;

procedure TV_SeminarFRM.EditSeminar(const SeminarSerial: integer);
var
  Dataset: TIBCQuery;
  allowModify: Boolean;
  St: string;
begin
  Dataset := SeminarSQL;
  with Dataset do
  begin
    close;
    ParamByName('SerialNumber').value := SeminarSerial;
    Open;
    if Dataset.IsEmpty then
    begin
      Dataset.Close;
      self.Close;
    end;
    st := Dataset.FieldByName('status').AsString;

    allowModify := (St = 'P') or (St = 'N') or (St = 'W');
    Dataset.ReadOnly := not allowModify;
  end;

  if AnadFLD.CanFocus then
    AnadFLD.SetFocus;
  TitleLBL.Caption := Trim(SeminarSQL.FieldByName('seminar_name').AsString);

end;

procedure TV_SeminarFRM.StartSeminar(const SeminarSerial: integer);
var
  qr: TksQuery;
  status: string;
begin
  if SeminarSerial < 1 then
    exit;
  qr := TksQuery.Create(cn,
    'select * from Seminar where serial_number= :serial');
  try
    qr.ParamByName('serial').AsInteger := seminarSerial;
    qr.Open;
    status := qr.FieldByName('status').AsString;
    if status = 'P' then
    begin
      ksExecSQLVar(cn,
        'update seminar set status= ''A'' where serial_number= :serial',
        [SeminarSerial]);
    end;
  finally
    qr.Free;
  end;

end;

function TV_SeminarFRM.UpdateCostFooter(const SeminarSerial: Integer): Double;
var
  qr: TksQuery;
  str: string;

begin

  if SeminarSerial < 1 then
  begin
    result := 0;
    exit;
  end;
  Str :=
    ' select'
    + '  sum(nullif(  sci.number_of_items ,0)*NulliF(sci.amount_per_item,0) ) as Total'
    + '  from seminar_cost_item sci'
    + '  where sci.fk_seminar_serial= :seminarSerial';

  qr := TksQuery.Create(cn, str);
  try
    with qr do
    begin
      ParamByName('SeminarSerial').Value := Seminarserial;
      open;
      result := FieldbyName('Total').AsFloat;
      close;
    end;

  finally
    qr.Free;
  end;
end;

function TV_SeminarFRM.FindActionDate(ActionDateRec: TActionDateRec): Tdate;
var
  mySign: Integer;
  DateReminder: TDate;
  RefDate: TDate;
  dt: TactionDateRec;
begin
  dt := ActionDateRec;
  if dt.UseStartDate then
    RefDate := dt.StartDate
  else
    RefDate := dt.EndDate;

  if dt.isAfter then
    mySign := 1
  else
    mySign := -1;

  try
    if dt.IsDayUnit then
      DateReminder := IncDay(RefDate, mySign * dt.NumberOfUnits)
    else
      DateReminder := IncMonth(RefDate, mySign * dt.NumberOFUnits);

    Result := Trunc(DateREminder);
  except
    result := EncodeDate(1900, 01, 01);
  end;

end;

////////////////////////////////////////
///
///
///


//////////////////////////////////////////

function TV_SeminarFRM.allowToModify(): Boolean;
var
  st: string;
begin
  st := SeminarSQL.FieldByName('status').AsString;
  result := (St = 'P') or (St = 'N') or (St = 'W');

end;
end.

