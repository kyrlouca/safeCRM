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
    TableSQLSEMINAR_CORP_TYPE: TWideStringField;
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
    Label1: TLabel;
    Label5: TLabel;
    SerialFLD: TRzDBLabel;
    Label8: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    FirstFLD: TwwDBEdit;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwCheckBox1: TwwCheckBox;
    wwDBComboBox1: TwwDBComboBox;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
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
    Σεμινάρια: TRzPanel;
    Panel4: TRzPanel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    BitBtn1: TBitBtn;
    CanelBTN: TBitBtn;
    ReminderTS: TRzTabSheet;
    SeminarReminderSRC: TDataSource;
    SeminarReminderSQL: TIBCQuery;
    SeminarReminderSQLSERIAL_NUMBER: TIntegerField;
    SeminarReminderSQLDESCRIPTION: TWideStringField;
    SeminarReminderSQLAFTER_OR_BEFORE: TWideStringField;
    SeminarReminderSQLPERSON_OR_SEMINAR: TWideStringField;
    SeminarReminderSQLDAYS_OR_MONTHS: TWideStringField;
    SeminarReminderSQLFK_SEMINAR_TYPE_SERIAL: TIntegerField;
    GroupBox3: TGroupBox;
    wwDBGrid2: TwwDBGrid;
    SeminarReminderSQLSTART_OR_END: TWideStringField;
    GroupBox4: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    RzDBLabel1: TRzDBLabel;
    Label15: TLabel;
    Label16: TLabel;
    wwDBEdit5: TwwDBEdit;
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
    RzDBRadioGroup1: TRzDBRadioGroup;
    Label13: TLabel;
    RzDBRadioGroup2: TRzDBRadioGroup;
    RzDBRadioGroup3: TRzDBRadioGroup;
    Label11: TLabel;
    RzDBRadioGroup4: TRzDBRadioGroup;
    Label14: TLabel;
    SeminarReminderSQLREMINDER_MESSAGE: TWideStringField;
    RzPanel5: TRzPanel;
    SeminarReminderSQLNUMBER_OF_DAYS_MONTHS: TIntegerField;
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
end;

procedure TM_SeminarTypeFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;

procedure TM_SeminarTypeFRM.Grid1TitleButtonClick(Sender: TObject;
  AFieldName: string);
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
  FirstFLD.SetFocus;
end;

procedure TM_SeminarTypeFRM.CanelBTNClick(Sender: TObject);
begin
TableSQL.Cancel;
close;
end;

End.
