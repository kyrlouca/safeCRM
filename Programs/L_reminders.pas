unit L_reminders;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL,G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl, vcl.Wwdbdatetimepicker,
  Vcl.WinXCtrls, vcl.wwcheckbox;
type
  TL_RemindersFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    TableSRC: TDataSource;
    Panel5: TPanel;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    Label4: TLabel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    RzPanel4: TRzPanel;
    InsertHawbBTN: TRzBitBtn;
    DeletehawbBTN: TRzBitBtn;
    RzGroupBox1: TRzGroupBox;
    Label2: TLabel;
    FilterBox: TwwDBComboBox;
    RzBitBtn2: TRzBitBtn;
    wwIncrementalSearch1: TwwIncrementalSearch;
    TableSQL: TIBCQuery;
    TableSQLSERIAL_NUMBER: TIntegerField;
    TableSQLFK_SEMINAR_SERIAL: TIntegerField;
    TableSQLDESCRIPTION: TWideStringField;
    TableSQLREMINDER_MESSAGE: TWideStringField;
    TableSQLAFTER_OR_BEFORE: TWideStringField;
    TableSQLPERSON_OR_SEMINAR: TWideStringField;
    TableSQLSTART_OR_END: TWideStringField;
    TableSQLDAYS_OR_MONTHS: TWideStringField;
    TableSQLNUMBER_OF_DAYS_MONTHS: TIntegerField;
    TableSQLREMINDER_TYPE: TWideStringField;
    TableSQLIS_COMPLETED: TWideStringField;
    TableSQLDATE_TARGETED: TDateField;
    TableSQLDATE_COMPLETED: TDateField;
    Grid1: TwwDBGrid;
    CompletedFLD: TwwCheckBox;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    TableSQLSEMINAR_NAME: TWideStringField;
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
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label1: TLabel;
    TableSQLSEMINAR_SERIAL: TIntegerField;
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure TableSRCStateChange(Sender: TObject);
    procedure TableSQLAfterInsert(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure CanelBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure Grid1TitleButtonClick(Sender: TObject; AFieldName: string);
    procedure InsertHawbBTNClick(Sender: TObject);
    procedure Grid1DblClick(Sender: TObject);
    procedure DeletehawbBTNClick(Sender: TObject);
    procedure Nav1InsertClick(Sender: TObject);
    procedure CompletedFLDClick(Sender: TObject);
    procedure TableSQLNewRecord(DataSet: TDataSet);
    procedure FilterBoxCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
  private
    { Private declarations }
    cn:TIBCConnection;
    procedure EditCompany();
    procedure DeleteCompany();
  procedure  InsertCompany();
  public
    { Public declarations }
    MyInsertState:Boolean;
    IN_ACTION:String;

  end;

var
  L_RemindersFRM: TL_RemindersFRM;

implementation

uses   U_Database, G_generalProcs;


{$R *.DFM}

procedure TL_RemindersFRM.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TL_RemindersFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TL_RemindersFRM.TableSQLNewRecord(DataSet: TDataSet);
begin
  Dataset.FieldByName('reminder_type').Value:='S';
  Dataset.FieldByName('PERSON_OR_SEMINAR').Value:='S';
  Dataset.FieldByName('is_completed').Value:='N';

end;

procedure TL_RemindersFRM.TableSRCStateChange(Sender: TObject);
begin


  with TableSQL do begin
     If State<>dsInsert then begin
//         StationIDFLD.Enabled:=false;
     end  else begin
//         StationIDFLD.Enabled:=true;
     end;
  end;//with

end;

procedure TL_RemindersFRM.wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
var
  SEminarSerial:Integer;
begin
  if not modified then
    exit;
  seminarSerial:=lookupTable.FieldByName('serial_number').AsInteger;
  if seminarSerial<1 then exit;
  TableSQL.Close;
  TableSQL.RestoreSQL;
  TableSQL.AddWhere('fk_seminar_serial = :seminarSerial');
  TableSQL.ParamByName('seminarSerial').Value:=SeminarSerial;
  TableSQL.Open;

end;

procedure TL_RemindersFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TL_RemindersFRM.TableSQLAfterInsert(DataSet: TDataSet);
begin
//      StationIDFLD.SetFocus;

end;


procedure TL_RemindersFRM.FilterBoxCloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
  var
Selection:String;
begin

TableSQL.Close;
TableSQL.RestoreSQL;
//index:=sender.ItemIndex;
  if Sender.ItemIndex=0 then begin
      TableSQL.AddWhere('is_completed = ''N'' ');
  end else if Sender.ItemIndex=1 then begin
      TableSQL.AddWhere('is_completed = ''Y'' ');
  end else if Sender.ItemIndex=2 then begin
  end;
  TableSQL.Open;

end;

procedure TL_RemindersFRM.FormActivate(Sender: TObject);
begin
  ksOpenTables([SeminarSQL]);
  TableSQL.Close;
  TableSQL.AddWhere('is_completed = ''N'' ');
   TableSQL.Open;
end;

procedure TL_RemindersFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;

procedure TL_RemindersFRM.Grid1DblClick(Sender: TObject);
begin
  EditCompany();
end;

procedure TL_RemindersFRM.EditCompany();
vAR
  serial:Integer;
//  Frm:TM_companyNewFRM;
begin
{
  SERIAL:=TableSQL.FieldByName('serial_number').AsInteger;
  if serial<1 then exit;

  frm := TM_companyNewFRM.Create(nil);
  frm.IN_ACTION :='EDIT';
  frm.IN_person_sERIAL:=serial;
  try
    frm.ShowModal;
    ksOpenTables([TableSQL]);
  finally
    frm.Free;
  end;
}

end;

procedure TL_RemindersFRM.DeleteCompany();
vAR
  serial:Integer;
//  Frm:TV_SeminarFRM;
begin
 {
  SERIAL:=TableSQL.FieldByName('serial_number').AsInteger;
  if serial<1 then exit;
  ksExecSQLVar(cn,'delete from person where serial_number= :serial',[serial]);
  ksOpenTables([TableSQL])
}

end;



procedure TL_RemindersFRM.Grid1TitleButtonClick(Sender: TObject;
  AFieldName: string);
  var
         sortInfoHawb:TSOrtInfo;
         Table:TIBCQuery;


  begin
        Table:=TIbcQuery(Grid1.DataSource.DataSet);
        SortInfoHawb.Table:=Table;
        G_GeneralProcs.SortGrid(Table,AFieldName,SOrtInfoHawb);

end;

procedure TL_RemindersFRM.InsertHawbBTNClick(Sender: TObject);
begin
  InsertCompany();
  ksOpenTables([TableSQL]);
end;


procedure TL_RemindersFRM.InsertCompany();
//vAR

//Frm:TM_companyNewFRM;
begin
{
  frm := TM_companyNewFRM.Create(nil);
  frm.IN_ACTION :='INSERT';
  try
    frm.ShowModal;
  finally
    frm.Free;
  end;
  }
end;


procedure TL_RemindersFRM.Nav1InsertClick(Sender: TObject);
begin
  InsertCompany();
  ksOpenTables([TableSQL]);

  abort;
end;

procedure TL_RemindersFRM.CanelBTNClick(Sender: TObject);
begin
TableSQL.Cancel;
close;
end;

procedure TL_RemindersFRM.CompletedFLDClick(Sender: TObject);
begin
//ShowMessage(InvoiceSQL.FieldByName('is_anad').AsString);
  if TableSQL.State in [dsInactive] then
    exit;

//amountActual:=TableSQL.FieldByName('fee_actual').AsFloat;
//amountAnad:=TableSQL.FieldByName('fee_with_anad_sub').AsFloat;
  if TableSQL.State in [dsBrowse] then TableSQL.Edit;

  if Completedfld.Checked then
    TableSQL.FieldByName('date_completed').AsDateTime:=Date
  else
    TableSQL.FieldByName('date_completed').Clear;

end;

procedure TL_RemindersFRM.DeletehawbBTNClick(Sender: TObject);
begin
DeleteCompany();
end;

End.
