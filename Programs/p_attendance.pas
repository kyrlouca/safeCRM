unit p_attendance;

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
  TP_attendanceFRM = class(TForm)
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
    DaySQL: TIBCQuery;
    FirstGRP: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    SerialFLD: TRzDBLabel;
    Label5: TLabel;
    FirstFLD: TwwDBEdit;
    wwCheckBox1: TwwCheckBox;
    wwDBComboBox1: TwwDBComboBox;
    Nav1: TwwDBNavigator;
    Nav1Prior: TwwNavButton;
    Nav1Next: TwwNavButton;
    Nav1Button1: TwwNavButton;
    Nav1First: TwwNavButton;
    Nav1SearchDialog: TwwNavButton;
    Label1: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    vPresenceSRC: TIBCDataSource;
    TableSRC: TIBCDataSource;
    DaySRC: TIBCDataSource;
    VPresenceSQL: TVirtualTable;
    wwDBGrid1: TwwDBGrid;
    RzPanel2: TRzPanel;
    wwDBNavigator1: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    RzPanel4: TRzPanel;
    Grid1: TwwDBGrid;
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
    TableSQLCOST_ACTUAL: TFloatField;
    TableSQLAMOUNT_ANAD: TFloatField;
    TableSQLCOMMENTS: TWideStringField;
    TableSQLANAD_APPROVED: TWideStringField;
    TableSQLCOST_ESTIMATE: TFloatField;
    TableSQLSTATUS: TWideStringField;
    RzDBLabel1: TRzDBLabel;
    RzDBLabel2: TRzDBLabel;
    Label9: TLabel;
    VPresenceSQLFirst_Name: TStringField;
    VPresenceSQLpercentage_present: TIntegerField;
    VPresenceSQLPersonSerial: TIntegerField;
    VPresenceSQLIs_Present: TStringField;
    VPresenceSQLLast_name: TStringField;
    DaySQLSEMINARSERIAL: TIntegerField;
    DaySQLSEMINAR_NAME: TWideStringField;
    DaySQLDATE_STARTED: TDateField;
    DaySQLDATE_COMPLETED: TDateField;
    DaySQLSUBJECTSERIAL: TIntegerField;
    DaySQLFK_SEMINAR_SERIAL: TIntegerField;
    DaySQLSUBJECT: TWideStringField;
    DaySQLDAYSERIAL: TIntegerField;
    DaySQLSEMINAR_DAY: TDateField;
    DaySQLDURATION_HOURS: TIntegerField;
    VPresenceSQLDaySerial: TIntegerField;
    DaySQLFK_SEMINAR_SUBJECT_SERIAL: TIntegerField;
    RzPanel5: TRzPanel;
    RzPanel6: TRzPanel;
    SavePresBTN: TBitBtn;
    CanelBTN: TBitBtn;
    wwDBNavigator1Button: TwwNavButton;
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure TableSRCStateChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CanelBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure DateFLDClick(Sender: TObject);
    procedure Sd1SyncDataSets(Sender: TObject; MoveDataSet,
      BaseDataSet: TDataSet);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure TableSQLAfterScroll(DataSet: TDataSet);
    procedure wwDBLookupCombo1Change(Sender: TObject);
    procedure DaySQLAfterScroll(DataSet: TDataSet);
    procedure SavePresBTNClick(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  procedure UpdatePresenceTable(const seminarSerial, DaySerial:integer);
  procedure SavePresenceTable();
  public
    { Public declarations }
    IN_ACTION:String;

  end;

var
  P_attendanceFRM: TP_attendanceFRM;

implementation

uses   U_Database, G_generalProcs;


{$R *.DFM}

procedure TP_attendanceFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TP_attendanceFRM.TableSRCStateChange(Sender: TObject);
begin


  with TableSQL do begin
     If State<>dsInsert then begin
//         StationIDFLD.Enabled:=false;
     end  else begin
//         StationIDFLD.Enabled:=true;
     end;
  end;//with

end;

procedure TP_attendanceFRM.wwDBLookupCombo1Change(Sender: TObject);
begin
     daySQL.Close;
  daySQL.ParamByName('SeminarSerial').Value:=TableSQL.FieldByName('serial_number').AsInteger;
  daySQL.Open;

end;

procedure TP_attendanceFRM.wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
var
  serial:Integer;
  begin
  serial:=LookupTable.FieldByName('serial_number').AsInteger;

//  showMessage(IntToStr(serial));


end;

procedure TP_attendanceFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TP_attendanceFRM.Sd1SyncDataSets(Sender: TObject; MoveDataSet,
  BaseDataSet: TDataSet);
begin
  TIBCQuery(MoveDataset).Locate('serial_number',TibcQuery(BaseDataset).FieldByName('serial_number').AsInteger,[]);
end;

procedure TP_attendanceFRM.DateFLDClick(Sender: TObject);
var
  aDate:TDate;
begin

//  aDate:=DateFLD.Date;
//  showMessage(FormatDateTime('dd-mmm-yyyy',aDate));
end;

procedure TP_attendanceFRM.DaySQLAfterScroll(DataSet: TDataSet);
var
  daySerial:Integer;
  seminarSerial:Integer;
begin
  VpresenceSQL.close;
  VpresenceSQL.Open;
  SeminarSerial:=DaySQL.FieldByName('SeminarSerial').AsInteger;
  daySerial:=DaySQL.FieldByName('Dayserial').AsInteger;
   UpdatePresenceTable(seminarSerial,daySerial);
end;

procedure TP_attendanceFRM.TableSQLAfterScroll(DataSet: TDataSet);
begin
  daySQL.Close;
  daySQL.ParamByName('SeminarSerial').Value:=Dataset.FieldByName('serial_number').AsInteger;
  daySQL.Open;

end;

procedure TP_attendanceFRM.FormActivate(Sender: TObject);
begin
ksOpenTables([TableSQL]);
end;

procedure TP_attendanceFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if TableSQL.State in [dsInsert, dsEdit] then
   TableSQL.Post;
end;

procedure TP_attendanceFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;


procedure TP_attendanceFRM.UpdatePresenceTable(const seminarSerial, DaySerial:integer);
var
  qr:TksQuery;
  str:string;
begin
// Get all the persons in the seminar (from seminar_person)
//and attach to them a person_presence for that day (if there is one)
// person presence is attached to a person and a day
//complicate but neccessary. Cannot just use the seminar outer with presence because
// it will get presence from different days

str:=
  ' select * from ('
  +'   SELECT'
  +'          sp.fk_seminar_serial,  sp.fk_person_serial as PersonSerial,'
  +'          pp.first_name,pp.last_name'
  +'      from'
  +'           seminar_person sp left outer join'
  +'           person pp on sp.fk_person_serial=pp.serial_number'
  +''
  +'  where sp.fk_seminar_serial= :seminarSerial'
  +'  ) as xOut'
  +'  left outer join'
  +'  ('
  +'        select'
  +''
  +'          inPP.fk_person_serial as PersonSerial, inPP.is_present,inPP.percentage_present'
  +'        from'
  +'        seminar_person inSP inner join'
  +'        person_presence inPP on inPP.fk_person_serial= inSP.fk_person_serial'
  +'        where'
  +'        inSP.fk_seminar_serial= :SeminarSerial and inPP.fk_day_serial = :DaySerial'
  +'  )as yIn'
  +'  on  xOUt.PersonSerial = yIN.PersonSerial'
  +'  order by last_name desc, first_name desc';


  if not VPresenceSQL.Active then
    VPresenceSQL.Open;

  qr:=TksQuery.Create(cn,str);
  try
    qr.ParamByName('SeminarSerial').Value:= SeminarSerial;
    qr.ParamByName('DaySerial').Value:=DaySerial;
    qr.Open;
    while not qr.Eof do begin
      VPresenceSQL.Insert;
      VPresenceSQL.FieldByName('first_Name').Value:=qr.FieldByName('first_name').AsString;
      VPresenceSQL.FieldByName('Last_Name').Value:=qr.FieldByName('Last_name').AsString;

      VPresenceSQL.FieldByName('PersonSerial').Value:=qr.FieldByName('PersonSerial').AsInteger;
      VPresenceSQL.FieldByName('DaySerial').Value:= DaySerial; //may be null if no person_presence

      VPresenceSQL.FieldByName('Percentage_present').Value:=qr.FieldByName('percentage_present').AsInteger;
      VPresenceSQL.FieldByName('is_present').Value:=qr.FieldByName('is_present').AsString;
      vPresenceSQL.Post;

      qr.Next;
    end;
  finally
    qr.Free;
  end;
end;

procedure TP_attendanceFRM.SavePresBTNClick(Sender: TObject);
begin
  SavePresenceTable();

end;

procedure TP_attendanceFRM.SavePresenceTable();
var
  qr:TksQuery;
  str:string;
  serial:Integer;
  PersonSerial,DaySerial :Integer;
  IsPresent :String;
  Percentage: Integer;
begin
str:=
  ' Insert Into person_presence'
  +'  (serial_number, fk_person_serial, fk_day_serial,is_present,percentage_present)'
  +'  values( :serial, :personSerial, :DaySerial, :isPresent,:percentage)' ;

  VPresenceSQL.First;
  while not  VPresenceSQL.Eof do begin
    serial:=ksGenerateSerial(cn,'GEN_PERSON_PRESENCE');
    personSerial:=VPresenceSQL.FieldByName('PersonSerial').AsInteger;
    DaySerial:=VPresenceSQL.FieldByName('DaySerial').AsInteger;
    Percentage:=VPresenceSQL.FieldByName('Percentage_Present').AsInteger;
    IsPresent:=VPresenceSQL.FieldByName('Is_present').AsString;
    if IsPresent='' then IsPresent:='N';
    if Percentage>0 then  IsPresent:='Y';

    ksExecSQLVar(cn,'delete from person_presence where fk_person_serial= :Ps and fk_day_serial= :ds',[PersonSerial,DaySerial]);
    ksExecSQLVar(cn,str,[serial,PersonSerial,DaySerial,IsPresent,Percentage]);

    VPresenceSQL.Next;
  end;

end;


procedure TP_attendanceFRM.Button1Click(Sender: TObject);
var
  daySerial:Integer;
  seminarSerial:Integer;
begin
  VpresenceSQL.close;
  VpresenceSQL.Open;
  SeminarSerial:=DaySQL.FieldByName('SeminarSerial').AsInteger;
  daySerial:=DaySQL.FieldByName('Dayserial').AsInteger;
   UpdatePresenceTable(seminarSerial,daySerial);
end;

procedure TP_attendanceFRM.CanelBTNClick(Sender: TObject);
var
  daySerial:Integer;
  seminarSerial:Integer;
begin
  VpresenceSQL.close;
  VpresenceSQL.Open;
  SeminarSerial:=DaySQL.FieldByName('SeminarSerial').AsInteger;
  daySerial:=DaySQL.FieldByName('Dayserial').AsInteger;
   UpdatePresenceTable(seminarSerial,daySerial);
end;

End.
