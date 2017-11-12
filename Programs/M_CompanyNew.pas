unit M_CompanyNew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL,G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl, vcl.Wwdbdatetimepicker,
  vcl.wwcheckbox, RzTabs, RzSplit;
type
  TM_companyNewFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    CompanySRC: TDataSource;
    CompanySQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    Label4: TLabel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    CompanyGRP: TGroupBox;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    wwDBEdit7: TwwDBEdit;
    wwDBEdit14: TwwDBEdit;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwCheckBox1: TwwCheckBox;
    Label19: TLabel;
    wwDBEdit15: TwwDBEdit;
    RzPageControl1: TRzPageControl;
    PageControlPC: TRzPageControl;
    EmpolyeesTS: TRzTabSheet;
    RzGroupBox1: TRzGroupBox;
    RzSizePanel1: TRzSizePanel;
    wwDBGrid1: TwwDBGrid;
    RzGroupBox2: TRzGroupBox;
    AllPersonsGRD: TwwDBGrid;
    RzSizePanel2: TRzSizePanel;
    SearchPersonFLD: TwwIncrementalSearch;
    CompanySQLSERIAL_NUMBER: TIntegerField;
    CompanySQLNATIONAL_ID: TWideStringField;
    CompanySQLFK_COMPANY_SERIAL: TIntegerField;
    CompanySQLFIRST_NAME: TWideStringField;
    CompanySQLLAST_NAME: TWideStringField;
    CompanySQLNICKNAME: TWideStringField;
    CompanySQLOCCUPATION: TWideStringField;
    CompanySQLPHONE_MOBILE: TWideStringField;
    CompanySQLPHONE_FIXED: TWideStringField;
    CompanySQLPHONE_ALTERNATE: TWideStringField;
    CompanySQLFAX: TWideStringField;
    CompanySQLEMAIL: TWideStringField;
    CompanySQLEMAIL_2: TSmallintField;
    CompanySQLADDRESS: TWideStringField;
    CompanySQLADDRESS_STREET: TWideStringField;
    CompanySQLADDRESS_POST_CODE: TWideStringField;
    CompanySQLADDRESS_CITY: TWideStringField;
    CompanySQLADDRESS_DISTRICT: TWideStringField;
    CompanySQLDATE_STARTED: TDateField;
    CompanySQLDATE_BIRTH: TDateField;
    CompanySQLDATE_USER: TDateField;
    CompanySQLLIST_SOURCE: TWideStringField;
    CompanySQLFACEBOOK: TWideStringField;
    CompanySQLWEBSITE: TWideStringField;
    CompanySQLTWITTER: TWideStringField;
    CompanySQLSTATUS_ACTIVE: TWideStringField;
    CompanySQLSEX: TWideStringField;
    CompanySQLIS_COMPANY: TWideStringField;
    CompanySQLCOMPANY_OWNER: TWideStringField;
    CompanySQLCOMPANY_CONTACT: TWideStringField;
    CompanySQLCOMPANY_REGISTRATION_DATE: TDateField;
    InfoTS: TRzTabSheet;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    wwDBEdit8: TwwDBEdit;
    wwDBEdit9: TwwDBEdit;
    wwDBEdit10: TwwDBEdit;
    wwDBEdit11: TwwDBEdit;
    wwDBEdit12: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    SerialFLD: TRzDBLabel;
    Label16: TLabel;
    Label15: TLabel;
    FirstFLD: TwwDBEdit;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    DatePassedFLD: TwwDBDateTimePicker;
    wwDBEdit13: TwwDBEdit;
    Label17: TLabel;
    wwDBEdit16: TwwDBEdit;
    BitBtn1: TBitBtn;
    CanelBTN: TBitBtn;
    AttendingSQL: TIBCQuery;
    AttendingSRC: TDataSource;
    IBCUpdateSQL1: TIBCUpdateSQL;
    NonAttendSQL: TIBCQuery;
    NonAttendSQLSERIAL_NUMBER: TIntegerField;
    NonAttendSQLLAST_NAME: TWideStringField;
    NonAttendSQLFIRST_NAME: TWideStringField;
    NonAttendSQLNATIONAL_ID: TWideStringField;
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure CompanySRCStateChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CanelBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure Nav1InsertClick(Sender: TObject);
    procedure Grid1TitleButtonClick(Sender: TObject; AFieldName: string);
    procedure CompanySQLNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    cn:TIBCConnection;
  public
    { Public declarations }
    MyInsertState:Boolean;
    IN_ACTION:String;
    IN_PERSON_Serial:Integer;
    Procedure EditCompany(Const CompanySerial:integer);

  end;

var
  M_companyNewFRM: TM_companyNewFRM;

implementation

uses   U_Database, G_generalProcs;


{$R *.DFM}

procedure TM_companyNewFRM.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TM_companyNewFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TM_companyNewFRM.CompanySQLNewRecord(DataSet: TDataSet);
begin
Dataset.FieldByName('status_active').Value:='Y';
Dataset.FieldByName('is_company').Value:='Y';

end;

procedure TM_companyNewFRM.CompanySRCStateChange(Sender: TObject);
begin


  with CompanySQL do begin
     If State<>dsInsert then begin
//         StationIDFLD.Enabled:=false;
     end  else begin
//         StationIDFLD.Enabled:=true;
     end;
  end;//with

end;

procedure TM_companyNewFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TM_companyNewFRM.FormActivate(Sender: TObject);
begin
ksOpenTables([CompanySQL]);
  if IN_ACTION='INSERT' then begin
    CompanySQL.Insert;
  end else if IN_ACTION='EDIT' then begin
     EditCompany(IN_PERSON_Serial);
  end;

PageControlPC.ActivePageIndex:=0;



end;

Procedure TM_companyNewFRM.EditCompany(Const CompanySerial:integer);
Var
        Dataset:TIBCQuery;
Begin
  Dataset:=CompanySQL;
  with Dataset do begin
    close;
    ParamByName('SerialNumber').value:=CompanySerial;
    Open;
  end;

  if FirstFLD.CanFocus then
  firstFLD.SetFocus;

End;



procedure TM_companyNewFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if CompanySQL.State in [dsInsert, dsEdit] then
   CompanySQL.Post;
end;

procedure TM_companyNewFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;

procedure TM_companyNewFRM.Grid1TitleButtonClick(Sender: TObject;
  AFieldName: string);
  var
         sortInfoHawb:TSOrtInfo;
         Table:TIBCQuery;


  begin
//        Table:=TIbcQuery(Grid1.DataSource.DataSet);
//        SortInfoHawb.Table:=Table;
//        G_GeneralProcs.SortGrid(Table,AFieldName,SOrtInfoHawb);

end;

procedure TM_companyNewFRM.Nav1InsertClick(Sender: TObject);
begin
  FirstFLD.SetFocus;
end;

procedure TM_companyNewFRM.CanelBTNClick(Sender: TObject);
begin
CompanySQL.Cancel;
close;
end;

End.
