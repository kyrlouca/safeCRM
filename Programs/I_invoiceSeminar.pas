unit I_invoiceSeminar;

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
  TI_InvoiceSeminarFRM = class(TForm)
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
    TableSRC: TIBCDataSource;
    RzPanel2: TRzPanel;
    wwDBNavigator1: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    RzPanel4: TRzPanel;
    RzDBLabel1: TRzDBLabel;
    RzDBLabel2: TRzDBLabel;
    Label9: TLabel;
    RzPanel5: TRzPanel;
    RzPanel6: TRzPanel;
    SavePresBTN: TBitBtn;
    CanelBTN: TBitBtn;
    wwDBNavigator1Button: TwwNavButton;
    wwDBLookupCombo2: TwwDBLookupCombo;
    InvoiceSQL: TIBCQuery;
    InvoiceSRC: TIBCDataSource;
    wwDBNavigator2: TwwDBNavigator;
    Nav1Button: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    Nav1Insert: TwwNavButton;
    Nav1Delete: TwwNavButton;
    Nav1Post: TwwNavButton;
    Nav1Cancel: TwwNavButton;
    wwDBGrid1: TwwDBGrid;
    BitBtn1: TRzBitBtn;
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
    TableSQLMAX_CAPACITY: TIntegerField;
    personSQL: TIBCQuery;
    personSQLFIRST_NAME: TWideStringField;
    personSQLLAST_NAME: TWideStringField;
    personSQLSERIAL_NUMBER: TIntegerField;
    InvoiceSQLSERIAL_NUMBER: TIntegerField;
    InvoiceSQLFK_SEMINAR_SERIAL: TIntegerField;
    InvoiceSQLFK_PERSON_SERIAL: TIntegerField;
    InvoiceSQLINVOICE_STATUS: TWideStringField;
    InvoiceSQLDATE_INVOICED: TDateField;
    InvoiceSQLVAT_RATE: TFloatField;
    InvoiceSQLDISCOUNT_BY_SAFE: TFloatField;
    InvoiceSQLDISCOUNT_CUSTOMER: TFloatField;
    InvoiceSQLAMOUNT_GROSS: TFloatField;
    InvoiceSQLAMOUNT_NET: TFloatField;
    InvoiceSQLAMOUNT_VAT: TFloatField;
    InvoiceSQLAMOUNT_WITH_VAT: TFloatField;
    InvoiceSQLFirstName: TStringField;
    InvoiceSQLLastName: TStringField;
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure TableSRCStateChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
    procedure SavePresBTNClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CanelBTNClick(Sender: TObject);
    procedure InvoiceSQLAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    cn:TIBCConnection;
  procedure UpdatePresenceTable(const seminarSerial, DaySerial:integer);
  procedure GenerateInvoices(Const SeminarSerial:integer);
  public
    { Public declarations }
    IN_ACTION:String;

  end;

var
  I_InvoiceSeminarFRM: TI_InvoiceSeminarFRM;

implementation

uses   U_Database, G_generalProcs;


{$R *.DFM}

procedure TI_InvoiceSeminarFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TI_InvoiceSeminarFRM.TableSRCStateChange(Sender: TObject);
begin


  with TableSQL do begin
     If State<>dsInsert then begin
//         StationIDFLD.Enabled:=false;
     end  else begin
//         StationIDFLD.Enabled:=true;
     end;
  end;//with

end;

procedure TI_InvoiceSeminarFRM.wwDBLookupCombo1Change(Sender: TObject);
begin
  InvoiceSQL.Close;
    InvoiceSQL.ParamByName('SeminarSerial').Value:=TableSQL.FieldByName('serial_number').AsInteger;
  InvoiceSQL.Open;


end;

procedure TI_InvoiceSeminarFRM.wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
var
  serial:Integer;
  begin
  serial:=LookupTable.FieldByName('serial_number').AsInteger;



end;

procedure TI_InvoiceSeminarFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TI_InvoiceSeminarFRM.Sd1SyncDataSets(Sender: TObject; MoveDataSet,
  BaseDataSet: TDataSet);
begin
  TIBCQuery(MoveDataset).Locate('serial_number',TibcQuery(BaseDataset).FieldByName('serial_number').AsInteger,[]);
end;

procedure TI_InvoiceSeminarFRM.DateFLDClick(Sender: TObject);
var
  aDate:TDate;
begin

//  aDate:=DateFLD.Date;
//  showMessage(FormatDateTime('dd-mmm-yyyy',aDate));
end;

procedure TI_InvoiceSeminarFRM.TableSQLAfterScroll(DataSet: TDataSet);
begin
  InvoiceSQL.Close;
  InvoiceSQL.ParamByName('SeminarSerial').Value:=Dataset.FieldByName('serial_number').AsInteger;
  InvoiceSQL.Open;

end;

procedure TI_InvoiceSeminarFRM.FormActivate(Sender: TObject);
begin
ksOpenTables([TableSQL]);
end;

procedure TI_InvoiceSeminarFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if TableSQL.State in [dsInsert, dsEdit] then
   TableSQL.Post;
end;

procedure TI_InvoiceSeminarFRM.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin

  Canclose:= not InvoiceSQL.UpdatesPending;
  if not CanClose then
    showMessage('Save Or Cancel before Exit');
end;

procedure TI_InvoiceSeminarFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;


procedure TI_InvoiceSeminarFRM.UpdatePresenceTable(const seminarSerial, DaySerial:integer);
var
  qr:TksQuery;
  str:string;
begin
end;

procedure TI_InvoiceSeminarFRM.SavePresBTNClick(Sender: TObject);
begin
  if InvoiceSQL.State in [dsEdit,dsInsert] then begin
    InvoiceSQL.Post;

  end;

 if not InvoiceSQL.UpdatesPending then begin
   showMessage('no updates');
   exit;
 end;
  if   not InvoiceSQL.Connection.DefaultTransaction.Active then
    InvoiceSQL.Connection.StartTransaction;
  try
    InvoiceSQL.CommitUpdates;
//  DataSet2.CommitUpdates;
  except
    INvoiceSQL.Connection.Rollback;
//    DataSet1.RestoreUpdates;
      raise;
  end;

end;



procedure TI_InvoiceSeminarFRM.GenerateInvoices(Const SeminarSerial:integer);
var
  qr:TksQuery;
  SerialNumber:integer;
  isMono:Boolean;
  Price:Double;
  PersonSerial:Integer;
begin

  ksExecSQLVar(cn,'delete from invoice where fk_seminar_serial= :SeminarSerial',[SeminarSerial]);
  invoiceSQL.Refresh;

  qr:= TksQuery.Create(cn,'select * from seminar where serial_number= :SeminarSerial');
  try
    qr.ParamByName('seminarSerial').value:=SeminarSerial;
    qr.open;
    isMono:=qr.FieldByName('SEMINAR_CORP_TYPE').Value='M';
    Price:=qr.FieldByName('fee_actual').AsFloat;
  finally
    qr.Free;
  end;

  qr:= TksQuery.Create(cn,'select * from seminar_person sp where sp.fk_seminar_serial= :SeminarSerial and sp.is_guest<>''Y'' ');
  try
    qr.ParamByName('seminarSerial').value:=SeminarSerial;
    qr.open;

    while not qr.Eof do begin
        PersonSerial:=qr.FieldByName('fk_person_serial').AsInteger;
        SerialNumber:=ksGenerateSerial(cn,'GEN_INVOICE');

        InvoiceSQL.Insert;
        InvoiceSQL.FieldByName('serial_number').Value:=SerialNumber;
        InvoiceSQL.FieldByName('fk_seminar_serial').Value:=SEminarSerial;
        InvoiceSQL.FieldByName('fk_PERSON_serial').Value:=PersonSerial;
        InvoiceSQL.FieldByName('AMOUNT_GROSS').Value:=Price;
        InvoiceSQL.FieldByName('Invoice_status').Value:='U';
        InvoiceSQL.FieldByName('DATE_INVOICED').Value:=NOW;
        InvoiceSQL.Post;
        qr.Next;
    end;
  finally
    qr.Free;
  end;





end;


procedure TI_InvoiceSeminarFRM.InvoiceSQLAfterScroll(DataSet: TDataSet);
begin
 if  not InvoiceSQL.Connection.DefaultTransaction.Active then
  InvoiceSQL.Connection.StartTransaction;
//        InvoiceSQL.Connection.Rollback;


end;

procedure TI_InvoiceSeminarFRM.BitBtn1Click(Sender: TObject);
var
  SeminarSerial:Integer;
begin

  SeminarSerial:=TableSQL.FieldByName('serial_number').AsInteger;

 personSQL.Close;
 personSQL.ParamByName('seminarSerial').Value:=SeminarSErial;
 personSQL.Open;

  GenerateInvoices(seminarSerial);
//  InvoiceSQL.Refresh;
end;

procedure TI_InvoiceSeminarFRM.Button1Click(Sender: TObject);
var
  seminarSerial:Integer;
begin
end;

procedure TI_InvoiceSeminarFRM.CanelBTNClick(Sender: TObject);
begin
  InvoiceSQL.Cancel;
 if  InvoiceSQL.UpdatesPending then begin
  InvoiceSQL.CancelUpdates;
  if InvoiceSQL.Transaction.Active then
    INvoiceSQL.Connection.Rollback;
//
 end;

end;

End.
