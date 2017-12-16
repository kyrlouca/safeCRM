unit M_CompanyNew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL,G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl, vcl.Wwdbdatetimepicker,
  vcl.wwcheckbox, RzTabs, RzSplit, Vcl.ComCtrls;
type
  TM_companyNewFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    CompanySRC: TDataSource;
    CompanySQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    Label4: TLabel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
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
    BitBtn1: TBitBtn;
    CanelBTN: TBitBtn;
    IncludedPersonsSQL: TIBCQuery;
    IncludedPersonsSRC: TDataSource;
    ExcludedPersonsSQL: TIBCQuery;
    ExcludedPersonsSQLSERIAL_NUMBER: TIntegerField;
    ExcludedPersonsSQLLAST_NAME: TWideStringField;
    ExcludedPersonsSQLFIRST_NAME: TWideStringField;
    ExcludedPersonsSQLNATIONAL_ID: TWideStringField;
    ExcludedPersonsSRC: TDataSource;
    ExcludedPersonsSQLPHONE_MOBILE: TWideStringField;
    IncludedPersonsSQLSERIAL_NUMBER: TIntegerField;
    IncludedPersonsSQLFIRST_NAME: TWideStringField;
    IncludedPersonsSQLLAST_NAME: TWideStringField;
    IncludedPersonsSQLNATIONAL_ID: TWideStringField;
    IncludedPersonsSQLCOMP_NAME: TWideStringField;
    IncludedPersonsSQLCOMP_SERIAL: TIntegerField;
    IncludedPersonsSQLCOMP_REG: TWideStringField;
    IncludedPersonsSQLPHONE_MOBILE: TWideStringField;
    CompanySQLPHONE_CONTACT: TWideStringField;
    CompanySQLCOMPANY_CONTACT_FIRST: TWideStringField;
    CompanySQLCOMPANY_CONTACT_LAST: TWideStringField;
    CompanySQLCOMPANY_OWNER_REG: TWideStringField;
    CompanySQLCOMPANY_CONTACT_PHONE: TWideStringField;
    CompanySQLCOMPANY_CONTACT_EMAIL: TWideStringField;
    CompanySQLCOMPANY_CONTACT_FAX: TWideStringField;
    CompanySQLCOMPANY_SOCIAL_SEC: TWideStringField;
    PageControlPC: TPageControl;
    InfoTS: TTabSheet;
    EmployeesTS: TTabSheet;
    RzPanel4: TRzPanel;
    RzPanel5: TRzPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    SerialFLD: TRzDBLabel;
    Label16: TLabel;
    Label15: TLabel;
    Label28: TLabel;
    FirstFLD: TwwDBEdit;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    DatePassedFLD: TwwDBDateTimePicker;
    wwDBEdit13: TwwDBEdit;
    wwDBEdit22: TwwDBEdit;
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
    Label17: TLabel;
    wwDBEdit8: TwwDBEdit;
    wwDBEdit9: TwwDBEdit;
    wwDBEdit10: TwwDBEdit;
    wwDBEdit11: TwwDBEdit;
    wwDBEdit12: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit16: TwwDBEdit;
    GroupBox3: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    wwDBEdit17: TwwDBEdit;
    wwDBEdit18: TwwDBEdit;
    wwDBEdit19: TwwDBEdit;
    wwDBEdit20: TwwDBEdit;
    wwDBEdit21: TwwDBEdit;
    RzGroupBox1: TRzGroupBox;
    RzSizePanel1: TRzSizePanel;
    Grid1: TwwDBGrid;
    RzPanel3: TRzPanel;
    RzPanel2: TRzPanel;
    ToLeftBTN: TBitBtn;
    ToRightBTN: TBitBtn;
    RzGroupBox2: TRzGroupBox;
    AllPersonsGRD: TwwDBGrid;
    RzSizePanel2: TRzSizePanel;
    PersonSearchFLD: TwwIncrementalSearch;
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CanelBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure Nav1InsertClick(Sender: TObject);
    procedure Grid1TitleButtonClick(Sender: TObject; AFieldName: string);
    procedure CompanySQLNewRecord(DataSet: TDataSet);
    procedure ToRightBTNClick(Sender: TObject);
    procedure ToLeftBTNClick(Sender: TObject);
    procedure AllPersonsGRDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PersonSearchFLDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EmployeesTSShow(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  public
    { Public declarations }
    MyInsertState:Boolean;
    IN_ACTION:String;
    IN_company_Serial:Integer;
    Procedure EditCompany(Const CompanySerial:integer);
  procedure RemovePerson();
  procedure InsertPerson();

  end;

var
  M_companyNewFRM: TM_companyNewFRM;

implementation

uses   U_Database, G_generalProcs;


{$R *.DFM}

procedure TM_companyNewFRM.AllPersonsGRDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=VK_RETURN then
  InsertPerson();
end;

procedure TM_companyNewFRM.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TM_companyNewFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TM_companyNewFRM.ToLeftBTNClick(Sender: TObject);
begin
InsertPerson();
end;

procedure TM_companyNewFRM.ToRightBTNClick(Sender: TObject);
begin
RemovePerson();
end;

procedure TM_companyNewFRM.CompanySQLNewRecord(DataSet: TDataSet);
begin
Dataset.FieldByName('status_active').Value:='Y';
Dataset.FieldByName('is_company').Value:='Y';

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
     EditCompany(IN_Company_Serial);
  end;

//PageControlPC.ActivePageIndex:=0;
PageControlPC.ActivePageIndex:=0;



end;

Procedure TM_companyNewFRM.EditCompany(Const CompanySerial:integer);
Var
        Dataset:TIBCQuery;
Begin
  Dataset:=CompanySQL;
  with Dataset do begin
    close;
    ParamByName('CompanySerial').value:=CompanySerial;
    Open;
  end;

  if FirstFLD.CanFocus then
  firstFLD.SetFocus;

End;



procedure TM_companyNewFRM.EmployeesTSShow(Sender: TObject);
begin
  IncludedPersonsSQL.Close;
  IncludedPersonsSQL.ParamByName('CompanySerial').Value:=CompanySQL.FieldByName('serial_number').AsInteger;
  IncludedPersonsSQL.Open;

  ExcludedPersonsSQL.Close;
//  ExcludedPersonsSQL.ParamByName('CompanySerial').Value:=CompanySQL.FieldByName('serial_number').AsInteger;
  ExcludedPersonsSQL.Open;


end;

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


procedure TM_companyNewFRM.PersonSearchFLDKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key=VK_RETURN then
  InsertPerson()
else if key=VK_DOWN  then
  AllPersonsGRD.SetFocus;

end;

procedure TM_companyNewFRM.CanelBTNClick(Sender: TObject);
begin
CompanySQL.Cancel;
close;
end;


procedure TM_companyNewFRM.RemovePerson();
var
  qr:TksQuery;
  Personserial:Integer;
  CompanySerial:Integer;
  str:string;
begin
  PersonSerial:=IncludedPersonsSQL.FieldByName('serial_number').AsInteger;
  if (Personserial<1) then exit;
  str:='update person set fk_company_serial = null where serial_number PersonSerial';
  ksExecSQLVar(cn,str,[Personserial]);

  IncludedPersonsSQL.Refresh;
  excludedPersonsSQL.Refresh;
end;

procedure TM_companyNewFRM.InsertPerson();
var
  qr:TksQuery;
  Personserial:Integer;
  CompanySerial:Integer;
  str:string;
begin
  PersonSerial:=ExcludedPersonsSQL.FieldByName('serial_number').AsInteger;
  CompanySerial:=companySQL.FieldByName('serial_number').AsInteger;
  if Personserial<1 then exit;
  str:='update person set fk_company_serial = :company_serial where serial_number= :PersonSerial';
  ksExecSQLVar(cn,str,[CompanySerial,Personserial]);

  IncludedPersonsSQL.Refresh;
  excludedPersonsSQL.Refresh;
  PersonSearchFLD.Clear;


end;

End.
