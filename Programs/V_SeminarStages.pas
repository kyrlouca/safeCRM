unit V_SeminarStages;

interface

uses
  Windows, Messages, SysUtils,System.DateUtils,System.math, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc,
   DBAccess, IBC, MemDS, IBCError,  Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit,  DBGrids, wwdbdatetimepicker, ppDB, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppBands, ppProd, ppReport, ppComm, ppRelatv,
  ppCache, ppDBPipe,ppTypes,ppviewr, ppDesignLayer, ppParameter, RzButton,
  RzPanel, Vcl.Imaging.pngimage, VirtualTable, vcl.Wwdotdot, vcl.Wwdbcomb,
  RzLabel, RzDBLbl, vcl.wwdblook, vcl.wwclearpanel, RzStatus;

type
  TReminderResult= Record
    daysLeft:Integer;
    DateFinal:Tdate;
  End;

  TV_SeminarStagesFRM = class(TForm)
    Panel3: TRzPanel;
    Panel4: TRzPanel;
    Panel11: TRzPanel;
    BitBtn1: TBitBtn;
    TableSQL: TIBCQuery;
    TableSQLSERIAL_NUMBER: TIntegerField;
    TableSQLFK_SEMINAR: TIntegerField;
    TableSQLSEMINAR_NAME: TWideStringField;
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
    TableSQLFK_COMPANY_PERSON_SERIAL: TIntegerField;
    TableSQLFEE_WITH_ANAD_SUB: TFloatField;
    TableSQLLAST_NAME: TWideStringField;
    TableSRC: TIBCDataSource;
    FirstGRP: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    SerialFLD: TRzDBLabel;
    Label5: TLabel;
    Label4: TLabel;
    RzDBLabel1: TRzDBLabel;
    RzDBLabel2: TRzDBLabel;
    Label6: TLabel;
    Label7: TLabel;
    SeminarFLD: TRzDBLabel;
    Companylbl: TLabel;
    RzDBLabel3: TRzDBLabel;
    wwDBEdit1: TRzDBLabel;
    wwDBEdit2: TRzDBLabel;
    wwDBComboBox1: TwwDBComboBox;
    SeminarSQL: TIBCQuery;
    SeminarSQLSERIAL_NUMBER: TIntegerField;
    SeminarSQLFK_SEMINAR: TIntegerField;
    SeminarSQLFK_INSTRUCTOR: TIntegerField;
    SeminarSQLFK_VENUE: TIntegerField;
    SeminarSQLFK_COMPANY_PERSON_SERIAL: TIntegerField;
    SeminarSQLSEMINAR_NAME: TWideStringField;
    SeminarSQLSEMINAR_CORP_TYPE: TWideStringField;
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
    SeminarSQLMAX_CAPACITY: TIntegerField;
    SeminarSQLFEE_WITH_ANAD_SUB: TFloatField;
    SeminarSRC: TDataSource;
    GroupBox1: TGroupBox;
    ApprovedBTN: TRzBitBtn;
    CompletedBTN: TRzBitBtn;
    InvoicedBTN: TRzBitBtn;
    CertifiedBTN: TRzBitBtn;
    RzPanel1: TRzPanel;
    Panel2: TRzPanel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Panel1: TRzPanel;
    ApprovedST: TRzGlyphStatus;
    InvoicedST: TRzGlyphStatus;
    CertifiedST: TRzGlyphStatus;
    CompletedST: TRzGlyphStatus;
    RzGlyphStatus2: TRzGlyphStatus;
    CreatedBTN: TRzBitBtn;
    CreatedST: TRzGlyphStatus;
    TableSQLANAD_NUMBER: TWideStringField;
    TableSQLHAS_EXPIRY: TWideStringField;
    TableSQLEXPIRY_PERIOD: TIntegerField;
    TableSQLFK_EXAMINER: TIntegerField;
    TableSQLTYPE_MONO_POLY: TWideStringField;
    GroupBox2: TGroupBox;
    CategoryChangeFLD: TwwDBComboBox;
    TableSQLSEM_CATEGORY: TWideStringField;
    GroupBox3: TGroupBox;
    wwIncrementalSearch1: TwwIncrementalSearch;
    Nav1: TwwDBNavigator;
    Nav1Button: TwwNavButton;
    Nav1Prior: TwwNavButton;
    Nav1Next: TwwNavButton;
    Nav1Button1: TwwNavButton;
    Label1: TLabel;
    RzDBLabel4: TRzDBLabel;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    AcceptBTN: TBitBtn;
    CanelBTN: TBitBtn;
    StatusChangeFLD: TwwDBComboBox;
    Panel5: TRzPanel;
    TitleLbl: TRzPanel;
    StatusFLD: TwwDBComboBox;
    wwIncrementalSearch2: TwwIncrementalSearch;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    procedure AcceptBTNClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppVariable3Calc(Sender: TObject; var Value: Variant);
    procedure VtFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure TableSQLAfterScroll(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CanelBTNClick(Sender: TObject);
    procedure TableSQLAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    cn:TIBCConnection;
  procedure ShowStatus(Dataset:TDataset);
  Function FindActionDate(const DateSeminar:TDate;Const isAfter,isDayUnit:Boolean;Const NumberOfUnits:Integer):Tdate;
  Function CalcDaysLeft():TReminderResult;
  public
    { Public declarations }
  end;

var
  V_SeminarStagesFRM: TV_SeminarStagesFRM;

implementation

uses U_Database, G_SFCommonProcs, G_KyrSQL, G_generalProcs;


{$R *.DFM}





procedure TV_SeminarStagesFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TV_SeminarStagesFRM.AcceptBTNClick(Sender: TObject);
begin
  if TableSQL.State in [dsEdit] then
    TableSQL.Post;

end;




procedure TV_SeminarStagesFRM.ppVariable3Calc(Sender: TObject; var Value: Variant);
begin
//   value:=FromDateFLD.Date;
end;

procedure TV_SeminarStagesFRM.RzBitBtn1Click(Sender: TObject);
begin
  close;
end;


procedure TV_SeminarStagesFRM.TableSQLAfterPost(DataSet: TDataSet);
begin
ShowStatus(Dataset);
end;

procedure TV_SeminarStagesFRM.TableSQLAfterScroll(DataSet: TDataSet);
begin
ShowStatus(Dataset);
end;



procedure TV_SeminarStagesFRM.ShowStatus(Dataset:TDataset);
type

  StatusType = (iCreated,iApproved,iCertified,iInvoiced,iCompleted);
Var
  isCreated:Boolean;
  isPlanned:Boolean;
  isApproved:Boolean;
  isCertified:Boolean;
  isInvoiced:Boolean;
  isCompleted:Boolean;
  SeminarSerial:integer;
  Status:String;

  BtnArray : Array of TrzBitBTN;
  StArray : Array of TrzGlyphStatus;
  BoolArray : Array[0..4] of Boolean;
  i:integer;

begin
  BtnArray :=[CreatedBTn,ApprovedBTN,CertifiedBTN,InvoicedBTN,CompletedBTN];
  StArray := [CreatedST,ApprovedST,CertifiedST,InvoicedST,CompletedST];

  Status:= Dataset.FieldByName('Status').AsString;
  SeminarSerial:= Dataset.FieldByName('Serial_number').AsInteger;

  BoolArray[Ord(iCreated)]:= True;
  BoolArray[Ord(iApproved)]:= (status='A') or (status='F') ;
  BoolArray[Ord(iCertified)]:= ksCountRecVarSQL(cn,'select serial_number FROM seminar_certificate SEM where sem.fk_seminar_serial= :seminarSerial',[SeminarSerial])>0;
  BoolArray[Ord(iInvoiced)]:=  ksCountRecVarSQL(cn,'select serial_number from invoice inv where inv.fk_seminar_serial = :seminarSerial',[SeminarSerial])>0;
  BoolArray[Ord(iCompleted)]:= (status='F');


  For i:=0 to Length(BtnArray)-1 do begin
//    BtnArray[i].Enabled:=false;
    StArray[i].ShowGlyph:= BoolArray[i];
  end;



end;

procedure TV_SeminarStagesFRM.VtFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  accept := Dataset.FieldByName('DaysCalc').asInteger >= 0;
end;

Function TV_SeminarStagesFRM.CalcDaysLeft():TReminderResult;
begin


end;



procedure TV_SeminarStagesFRM.CanelBTNClick(Sender: TObject);
begin
  if TableSQL.State in [dsEdit] then
    TableSQL.Cancel;
  close;

end;

Function TV_SeminarStagesFRM.FindActionDate(const DateSeminar:TDate;Const isAfter,isDayUnit:Boolean;Const NumberOfUnits:Integer):Tdate;
begin

end;


procedure TV_SeminarStagesFRM.FormActivate(Sender: TObject);
begin
  ksfillComboF1(cn,CategoryChangeFLD,'SEM_CATEGORY','CATEGORY_CODE','DESCRIPTION_greek','order_NUMBER' );
  ksfillComboF1(cn,StatusChangeFLD,'status_activity','status','DESCRIPTION_greek','order_NUMBER' );

ksOpenTables([TableSQL])
end;

procedure TV_SeminarStagesFRM.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if TableSQL.State in [dsEdit] then
  TableSQL.Post;
end;

procedure TV_SeminarStagesFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;


end.
