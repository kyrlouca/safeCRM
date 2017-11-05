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
    wwIncrementalSearch1: TwwIncrementalSearch;
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
    Sd1: TwwSearchDialog;
    Nav1: TwwDBNavigator;
    Nav1Prior: TwwNavButton;
    Nav1Next: TwwNavButton;
    Nav1Button1: TwwNavButton;
    Nav1Insert: TwwNavButton;
    Nav1Delete: TwwNavButton;
    Nav1Post: TwwNavButton;
    Nav1SearchDialog: TwwNavButton;
    Label1: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label6: TLabel;
    Label7: TLabel;
    BitBtn2: TBitBtn;
    vPresenceSRC: TIBCDataSource;
    TableSRC: TIBCDataSource;
    DaySRC: TIBCDataSource;
    VPresenceSQL: TVirtualTable;
    VPresenceSQLName: TStringField;
    VPresenceSQLpercentage: TIntegerField;
    VPresenceSQLPersonSerial: TIntegerField;
    wwDBGrid1: TwwDBGrid;
    RzPanel2: TRzPanel;
    wwDBNavigator1: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    Button1: TButton;
    wwDBEdit1: TwwDBEdit;
    Label8: TLabel;
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
    DaySQLSUBJECTSERIAL: TIntegerField;
    DaySQLFK_SEMINAR_SERIAL: TIntegerField;
    DaySQLSUBJECT: TWideStringField;
    DaySQLDAYSERIAL: TIntegerField;
    DaySQLSEMINAR_DAY: TDateField;
    DaySQLDURATION_HOURS: TIntegerField;
    RzDBLabel1: TRzDBLabel;
    RzDBLabel2: TRzDBLabel;
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
    procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure TableSQLAfterScroll(DataSet: TDataSet);
    procedure wwDBLookupCombo1Change(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
    procedure UpdatePresence();
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

procedure TP_attendanceFRM.TableSQLAfterScroll(DataSet: TDataSet);
begin
  daySQL.Close;
  daySQL.ParamByName('SeminarSerial').Value:=Dataset.FieldByName('serial_number').AsInteger;
  daySQL.Open;

end;

procedure TP_attendanceFRM.FormActivate(Sender: TObject);
begin
ksOpenTables([TableSQL]);
if IN_ACTION='INSERT' then begin
   TableSQL.Insert;
end;
VPresenceSQL.Open;
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


procedure TP_attendanceFRM.UpdatePresence();
var
  PersonSerial,SeminarSerial,SubjectSerial,daySerial:Integer;
  percentage:Integer;
  str:string;
begin
   str:=
   '     update person_presence pp'
  +'     set pp.percentage_present= :per'
  +' where'
  +'     pp.fk_person_serial= :Person and'
  +'     pp.fk_seminar_serial= :Seminar and'
  +'     pp.fk_subject_serial = :subject and'
  +'     pp.fk_day_serial= :day';

    SubjectSerial:=TableSQL.FieldByName('serial_number').AsInteger;
    SeminarSerial:=TableSQL.FieldByName('serial_number').AsInteger;
    DaySerial:=TableSQL.FieldByName('serial_number').AsInteger;

    while not vpresenceSQL.eof do begin
      PersonSerial := VPresenceSQL.FieldByName('PersonSerial').AsInteger;
      percentage      := VpresenceSQL.FieldByName('percentage').AsInteger;
      ksExecSQLVar(cn,str,[percentage, personSerial,SubjectSerial,SeminarSerial,DaySerial]);
      VPresenceSQL.Next;
    end;

end;



procedure TP_attendanceFRM.BitBtn2Click(Sender: TObject);
var
  qr:TksQuery;
  str:string;
begin
  str:=
  ' select'
  +' pe.first_name,pp.*'
  +' from'
  +' person_presence pp left outer join'
  +' person pe on pp.fk_person_serial=pe.serial_number';

  qr:=TksQuery.Create(cn,str);
  try
    qr.Open;
    while not qr.Eof do begin
      VPresenceSQL.Insert;
      VPresenceSQL.FieldByName('Name').Value:=qr.FieldByName('first_name').AsString;
      VPresenceSQL.FieldByName('PersonSerial').Value:=qr.FieldByName('fk_person_serial').AsInteger;
      vPresenceSQL.Post;

      qr.Next;
    end;
  finally
    qr.Free;
  end;
end;

procedure TP_attendanceFRM.Button1Click(Sender: TObject);
begin
UpdatePresence();
end;

procedure TP_attendanceFRM.CanelBTNClick(Sender: TObject);
begin
TableSQL.Cancel;
  close;
end;

End.
