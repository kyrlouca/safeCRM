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
    Label4: TLabel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    BitBtn1: TBitBtn;
    CanelBTN: TBitBtn;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    Grid1: TwwDBGrid;
    RzPanel4: TRzPanel;
    InsertHawbBTN: TRzBitBtn;
    DeletehawbBTN: TRzBitBtn;
    RzGroupBox1: TRzGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    FilterBox: TwwDBComboBox;
    FindSeminarFLD: TSearchBox;
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
    TableSQLDESCRIPTION: TWideStringField;
    TableSQLDESCRIPTION_GREEK: TWideStringField;
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure TableSRCStateChange(Sender: TObject);
    procedure TableSQLAfterInsert(DataSet: TDataSet);
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

uses   U_Database, G_generalProcs, V_Seminar;


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

procedure TL_SeminarFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TL_SeminarFRM.TableSQLAfterInsert(DataSet: TDataSet);
begin
//      StationIDFLD.SetFocus;

end;


procedure TL_SeminarFRM.FormActivate(Sender: TObject);
begin
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

procedure TL_SeminarFRM.DeletehawbBTNClick(Sender: TObject);
begin
DeleteSeminar();
end;

End.
