unit L_Seminar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL,G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl, vcl.Wwdbdatetimepicker,
  Vcl.WinXCtrls;
type
  TL_SeminarFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    TableSRC: TDataSource;
    Panel5: TPanel;
    TableSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    Grid1: TwwDBGrid;
    RzPanel4: TRzPanel;
    InsertHawbBTN: TRzBitBtn;
    DeletehawbBTN: TRzBitBtn;
    RzGroupBox1: TRzGroupBox;
    Label2: TLabel;
    FilterBox: TwwDBComboBox;
    RzBitBtn2: TRzBitBtn;
    Nav1: TwwDBNavigator;
    Nav1Button: TwwNavButton;
    Nav1Prior: TwwNavButton;
    Nav1Next: TwwNavButton;
    Nav1Button1: TwwNavButton;
    Nav1Insert: TwwNavButton;
    Nav1Delete: TwwNavButton;
    wwIncrementalSearch1: TwwIncrementalSearch;
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
    TableSQLDESCRIPTION: TWideStringField;
    TableSQLDESCRIPTION_GREEK: TWideStringField;
    TableSQLLAST_NAME: TWideStringField;
    CertificatesBTN: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    InvoiceBTN: TRzBitBtn;
    TableSQLANAD_NUMBER: TWideStringField;
    TableSQLFK_COMPANY_PERSON_SERIAL: TIntegerField;
    TableSQLMAX_CAPACITY: TIntegerField;
    TableSQLFEE_WITH_ANAD_SUB: TFloatField;
    TableSQLHAS_EXPIRY: TWideStringField;
    TableSQLEXPIRY_PERIOD: TIntegerField;
    TableSQLFK_EXAMINER: TIntegerField;
    TableSQLTYPE_MONO_POLY: TWideStringField;
    Label4: TRzLabel;
    StatusShowFLD: TwwDBComboBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure TableSRCStateChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CanelBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure Grid1TitleButtonClick(Sender: TObject; AFieldName: string);
    procedure InsertHawbBTNClick(Sender: TObject);
    procedure Grid1DblClick(Sender: TObject);
    procedure DeletehawbBTNClick(Sender: TObject);
    procedure Nav1InsertClick(Sender: TObject);
    procedure CertificatesBTNClick(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure TableSQLNewRecord(DataSet: TDataSet);
    procedure InvoiceBTNClick(Sender: TObject);
    procedure wwIncrementalSearch1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    cn:TIBCConnection;
    procedure EditSeminar();
    procedure DeleteSeminar();
  procedure  InsertSeminar();
  public
    { Public declarations }
    MyInsertState:Boolean;
    IN_ACTION:String;

  end;

var
  L_SeminarFRM: TL_SeminarFRM;

implementation

uses   U_Database, G_generalProcs, V_Seminar, I_certificates, p_attendance,
  I_invoiceSeminar;


{$R *.DFM}

procedure TL_SeminarFRM.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TL_SeminarFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TL_SeminarFRM.TableSQLNewRecord(DataSet: TDataSet);
begin
  Dataset.FieldByName('reminder_type').Value:='S';
  Dataset.FieldByName('PERSON_OR_SEMINAR').Value:='S';
  Dataset.FieldByName('is_completed').Value:='N';

end;

procedure TL_SeminarFRM.TableSRCStateChange(Sender: TObject);
begin


  with TableSQL do begin
     If State<>dsInsert then begin
//         StationIDFLD.Enabled:=false;
     end  else begin
//         StationIDFLD.Enabled:=true;
     end;
  end;//with

end;

procedure TL_SeminarFRM.wwIncrementalSearch1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key=VK_DOWN then begin
    Grid1.SetFocus;
    exit;
  end;


end;

procedure TL_SeminarFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TL_SeminarFRM.RzBitBtn3Click(Sender: TObject);
vAR
  Frm:TP_attendanceFRM;
seminarSerial:Integer;
begin
  seminarSerial:=TableSQL.FieldByName('serial_number').AsInteger;

  frm :=  TP_attendanceFRM.Create(nil);
  frm.IN_ACTION :='INSERT';
  frm.IN_seminar_serial :=seminarSerial;
  try
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TL_SeminarFRM.FormActivate(Sender: TObject);
begin
ksfillComboF1(cn,StatusShowFLD,'status_activity','status','description');
ksOpenTables([TableSQL]);
if IN_ACTION='INSERT' then begin
   TableSQL.Insert;
end;

end;

procedure TL_SeminarFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if TableSQL.State in [dsInsert, dsEdit] then
   TableSQL.Post;
end;

procedure TL_SeminarFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;

procedure TL_SeminarFRM.Grid1DblClick(Sender: TObject);
begin
  EditSeminar;
end;

procedure TL_SeminarFRM.EditSeminar();
vAR
  serial:Integer;
  Frm:TV_SeminarFRM;
begin
  SERIAL:=TableSQL.FieldByName('serial_number').AsInteger;
  if serial<1 then exit;

  frm := TV_SeminarFRM.Create(nil);
  frm.IN_ACTION :='EDIT';
  frm.IN_SEMINAR_SERIAL:=serial;
  try
    frm.ShowModal;
    ksOpenTables([TableSQL]);
  finally
    frm.Free;
  end;


end;

procedure TL_SeminarFRM.DeleteSeminar();
vAR
  serial:Integer;
  Frm:TV_SeminarFRM;
begin
  SERIAL:=TableSQL.FieldByName('serial_number').AsInteger;
  if serial<1 then exit;
  ksExecSQLVar(cn,'delete from seminar where serial_number= :serial',[serial]);
  ksOpenTables([TableSQL])


end;



procedure TL_SeminarFRM.Grid1TitleButtonClick(Sender: TObject;
  AFieldName: string);
  var
         sortInfoHawb:TSOrtInfo;
         Table:TIBCQuery;


  begin
        Table:=TIbcQuery(Grid1.DataSource.DataSet);
        SortInfoHawb.Table:=Table;
        G_GeneralProcs.SortGrid(Table,AFieldName,SOrtInfoHawb);

end;

procedure TL_SeminarFRM.InsertHawbBTNClick(Sender: TObject);
begin
  InsertSeminar();
  ksOpenTables([TableSQL]);
end;


procedure TL_SeminarFRM.InsertSeminar();
vAR
Frm:TV_SeminarFRM;
begin
  frm := TV_SeminarFRM.Create(nil);
  frm.IN_ACTION :='INSERT';
  try
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;


procedure TL_SeminarFRM.InvoiceBTNClick(Sender: TObject);
vAR
  Frm:TI_InvoiceSeminarFRM;
seminarSerial:Integer;
begin
  seminarSerial:=TableSQL.FieldByName('serial_number').AsInteger;

  frm :=  TI_InvoiceSeminarFRM.Create(nil);
  frm.IN_ACTION :='INSERT';
  frm.IN_seminar_serial :=seminarSerial;
  try
    frm.ShowModal;
  finally
    frm.Free;
  end;

end;

procedure TL_SeminarFRM.Nav1InsertClick(Sender: TObject);
begin
  InsertSeminar();
  ksOpenTables([TableSQL]);

  abort;
end;

procedure TL_SeminarFRM.CanelBTNClick(Sender: TObject);
begin
TableSQL.Cancel;
close;
end;

procedure TL_SeminarFRM.CertificatesBTNClick(Sender: TObject);
vAR
  Frm:TI_CertificatesFRM;
seminarSerial:Integer;
begin
  seminarSerial:=TableSQL.FieldByName('serial_number').AsInteger;

  frm :=  TI_CertificatesFRM.Create(nil);
  frm.IN_ACTION :='INSERT';
  frm.IN_seminar_serial :=seminarSerial;
  try
    frm.ShowModal;
  finally
    frm.Free;
  end;

end;

procedure TL_SeminarFRM.DeletehawbBTNClick(Sender: TObject);
begin
DeleteSeminar();
end;

End.
