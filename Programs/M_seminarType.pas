unit M_seminarType;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL,G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl, vcl.Wwdbdatetimepicker,
  vcl.wwcheckbox, Vcl.ComCtrls, RzDBEdit, RzTabs, RzRadGrp, RzDBRGrp;
type
  TM_SeminarTypeFRM = class(TForm)
    Panel3: TRzPanel;
    TableSRC: TDataSource;
    TableSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    TableSQLSERIAL_NUMBER: TIntegerField;
    TableSQLSEMINAR_NAME: TWideStringField;
    TableSQLSEMINAR_COST: TFloatField;
    TableSQLANAD_APPROVED: TWideStringField;
    TableSQLSEMINAR_CATEGORY: TWideStringField;
    TableSQLDURATION_HOURS: TIntegerField;
    TableSQLDURATION_DAYS: TIntegerField;
    TableSQLCOMMENTS: TWideStringField;
    seminarSubjectSQL: TIBCQuery;
    SeminarSubjectSRC: TDataSource;
    seminarSubjectSQLSERIAL_NUMBER: TIntegerField;
    seminarSubjectSQLSUBJECT: TWideStringField;
    seminarSubjectSQLFK_SEMINAR_TYPE_SERIAL: TIntegerField;
    SeminarPC: TRzPageControl;
    SeminarTS: TRzTabSheet;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    Grid1: TwwDBGrid;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    SerialFLD: TRzDBLabel;
    Label7: TLabel;
    FirstFLD: TwwDBEdit;
    wwDBEdit1: TwwDBEdit;
    RzDBRichEdit1: TRzDBRichEdit;
    SubjectTS: TRzTabSheet;
    GroupBox2: TGroupBox;
    RzPanel4: TRzPanel;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    wwDBGrid1: TwwDBGrid;
    Panel5: TRzPanel;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    wwNavButton7: TwwNavButton;
    wwNavButton8: TwwNavButton;
    wwIncrementalSearch1: TwwIncrementalSearch;
    Panel4: TRzPanel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    BitBtn1: TBitBtn;
    CanelBTN: TBitBtn;
    ReminderTS: TRzTabSheet;
    SeminarReminderSRC: TDataSource;
    SeminarReminderSQL: TIBCQuery;
    GroupBox4: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    RzDBLabel1: TRzDBLabel;
    Label15: TLabel;
    Label16: TLabel;
    REminderDescFLD: TwwDBEdit;
    wwDBEdit8: TwwDBEdit;
    RzDBRichEdit2: TRzDBRichEdit;
    RzPanel6: TRzPanel;
    wwDBNavigator4: TwwDBNavigator;
    wwNavButton16: TwwNavButton;
    wwNavButton17: TwwNavButton;
    wwNavButton18: TwwNavButton;
    wwNavButton19: TwwNavButton;
    wwNavButton20: TwwNavButton;
    wwNavButton21: TwwNavButton;
    wwNavButton22: TwwNavButton;
    wwNavButton23: TwwNavButton;
    wwIncrementalSearch2: TwwIncrementalSearch;
    Label12: TLabel;
    Label13: TLabel;
    RzDBRadioGroup2: TRzDBRadioGroup;
    RzDBRadioGroup3: TRzDBRadioGroup;
    Label11: TLabel;
    RzDBRadioGroup4: TRzDBRadioGroup;
    Label14: TLabel;
    GroupBox3: TGroupBox;
    RzPanel5: TRzPanel;
    SeminarReminderSQLSERIAL_NUMBER: TIntegerField;
    SeminarReminderSQLFK_SEMINAR_TYPE_SERIAL: TIntegerField;
    SeminarReminderSQLDESCRIPTION: TWideStringField;
    SeminarReminderSQLREMINDER_MESSAGE: TWideStringField;
    SeminarReminderSQLAFTER_OR_BEFORE: TWideStringField;
    SeminarReminderSQLPERSON_OR_SEMINAR: TWideStringField;
    SeminarReminderSQLSTART_OR_END: TWideStringField;
    SeminarReminderSQLDAYS_OR_MONTHS: TWideStringField;
    SeminarReminderSQLNUMBER_OF_DAYS_MONTHS: TIntegerField;
    RzDBRadioGroup1: TRzDBRadioGroup;
    wwDBGrid2: TwwDBGrid;
    AfterFLD: TwwDBComboBox;
    NamePersonFLD: TwwDBComboBox;
    StartEndLD: TwwDBComboBox;
    TableSQLFEE_ESTIMATE: TFloatField;
    TableSQLMAX_CAPACITY: TIntegerField;
    TableSQLHAS_EXPIRY: TWideStringField;
    TableSQLEXPIRY_PERIOD: TIntegerField;
    SecondGRP: TRzGroupBox;
    Label22: TLabel;
    Label24: TLabel;
    wwDBEdit9: TwwDBEdit;
    wwDBEdit10: TwwDBEdit;
    RzGroupBox1: TRzGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    Label17: TLabel;
    wwCheckBox2: TwwCheckBox;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    Label1: TLabel;
    CompletedFLD: TwwCheckBox;
    Label8: TLabel;
    wwDBEdit2: TwwDBEdit;
    TableSQLFEE_ACTUAL: TFloatField;
    TableSQLFEE_WITH_ANAD_SUB: TFloatField;
    RzPanel7: TRzPanel;
    RzPanel8: TRzPanel;
    TableSQLTYPE_MONO_POLY: TWideStringField;
    Label18: TLabel;
    wwCheckBox1: TwwCheckBox;
    Label20: TLabel;
    wwCheckBox3: TwwCheckBox;
    SeminarReminderSQLIS_HIGH: TWideStringField;
    PictureTS: TRzTabSheet;
    RzGroupBox2: TRzGroupBox;
    Label19: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    Label26: TLabel;
    Label27: TLabel;
    wwDBEdit11: TwwDBEdit;
    wwDBEdit12: TwwDBEdit;
    wwDBEdit13: TwwDBEdit;
    SeminarPictureSQL: TIBCQuery;
    SeminarPictureSQLSERIAL_NUMBER: TIntegerField;
    SeminarPictureSQLPICTURE_SEMINAR: TBlobField;
    SeminarPictureSQLLINE_A1: TWideStringField;
    SeminarPictureSQLLINE_A2: TWideStringField;
    SeminarPictureSQLLINE_B1: TWideStringField;
    SeminarPictureSQLLINE_B2: TWideStringField;
    SeminarPictureSQLLINE_B3: TWideStringField;
    SeminarPictureSRC: TDataSource;
    SeminarPictureSQLFK_SEMINAR_TYPE_SERIAL: TIntegerField;
    procedure BitBtn1Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure TableSRCStateChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CanelBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure Nav1InsertClick(Sender: TObject);
    procedure Grid1TitleButtonClick(Sender: TObject; AFieldName: string);
    procedure TableSQLNewRecord(DataSet: TDataSet);
    procedure SubjectTSShow(Sender: TObject);
    procedure ReminderTSShow(Sender: TObject);
    procedure wwNavButton5Click(Sender: TObject);
    procedure SeminarPCChanging(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
    procedure PictureTSShow(Sender: TObject);
    procedure PictureTSExit(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  public
    { Public declarations }
    MyInsertState:Boolean;
    IN_ACTION:String;

  end;

var
  M_SeminarTypeFRM: TM_SeminarTypeFRM;

implementation

uses   U_Database, G_generalProcs;


{$R *.DFM}

procedure TM_SeminarTypeFRM.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TM_SeminarTypeFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TM_SeminarTypeFRM.TableSQLNewRecord(DataSet: TDataSet);
begin
Dataset.FieldByName('ANAD_APPROVED').value:='Y';
Dataset.FieldByName('SEMINAR_CORP_TYPE').value:='M';

end;

procedure TM_SeminarTypeFRM.TableSRCStateChange(Sender: TObject);
begin


  with TableSQL do begin
     If State<>dsInsert then begin
//         StationIDFLD.Enabled:=false;
     end  else begin
//         StationIDFLD.Enabled:=true;
     end;
  end;//with

end;

procedure TM_SeminarTypeFRM.wwNavButton5Click(Sender: TObject);
begin
FirstFLD.SetFocus;
end;

procedure TM_SeminarTypeFRM.ReminderTSShow(Sender: TObject);
var
  SeminarSerial:Integer;
begin

  SeminarSerial:= TableSQL.FieldByName('serial_number').AsInteger;
  ksOpenTables([SeminarReminderSQL]);

end;

procedure TM_SeminarTypeFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TM_SeminarTypeFRM.SeminarPCChanging(Sender: TObject;
  NewIndex: Integer; var AllowChange: Boolean);
begin
  If TableSQL.State in [dsEdit,dsInsert] then begin
    TableSQL.Post;
  end;
 AllowChange:= TableSQL.FieldByName('serial_number').AsInteger > 0;
 End;

procedure TM_SeminarTypeFRM.SubjectTSShow(Sender: TObject);
var
  SeminarSerial:Integer;
begin

  SeminarSerial:= TableSQL.FieldByName('serial_number').AsInteger;
  ksOpenTables([SeminarSubjectSQL]);

end;


procedure TM_SeminarTypeFRM.FormActivate(Sender: TObject);
begin
ksOpenTables([TableSQL,SeminarSubjectSQL]);
if IN_ACTION='INSERT' then begin
   TableSQL.Insert;
end;

end;

procedure TM_SeminarTypeFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if TableSQL.State in [dsInsert, dsEdit] then
   TableSQL.Post;
if SeminarPictureSQL.State in [dsInsert, dsEdit] then
   SeminarPictureSQL.Post;
end;

procedure TM_SeminarTypeFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;

procedure TM_SeminarTypeFRM.Grid1TitleButtonClick(Sender: TObject; AFieldName: string);
var
         sortInfoHawb:TSOrtInfo;
         Table:TIBCQuery;
begin
        Table:=TIbcQuery(Grid1.DataSource.DataSet);
        SortInfoHawb.Table:=Table;
        G_GeneralProcs.SortGrid(Table,AFieldName,SOrtInfoHawb);
end;

procedure TM_SeminarTypeFRM.Nav1InsertClick(Sender: TObject);
begin
REminderDescFLD.SetFocus;
end;

procedure TM_SeminarTypeFRM.PictureTSExit(Sender: TObject);
begin
  If SeminarPictureSQL.State in [dsEdit,dsInsert] then begin
    SeminarPictureSQL.Post;
  end;
// AllowChange:= SeminarPictureSQL.FieldByName('serial_number').AsInteger > 0;

end;

procedure TM_SeminarTypeFRM.PictureTSShow(Sender: TObject);
var
  SeminarSerial:Integer;
begin
  SeminarSerial:= TableSQL.FieldByName('serial_number').AsInteger;

  SeminarPictureSQL.Close;
  SeminarPictureSQL.ParamByName('SeminarSerial').AsInteger:=SeminarSerial;
  SeminarPictureSQL.Open;
  if SeminarPictureSQL.IsEmpty then begin
    SeminarPictureSQL.Insert;
    SeminarPictureSQL.FieldByName('FK_SEMINAR_TYPE_SERIAL').AsInteger:=SeminarSerial;
    SeminarPictureSQL.Post;
  end;

end;

procedure TM_SeminarTypeFRM.CanelBTNClick(Sender: TObject);
begin
TableSQL.Cancel;
close;
end;

End.
