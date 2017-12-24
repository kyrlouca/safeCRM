unit R_AnadFIles;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, Data.DB, MemDS,
  DBAccess, IBC, frxExportPDF, frxRich, frxExportRTF, frxExportDOCX;

type
  TR_AnadFilesFRM = class(TForm)
    fs2: TfrxReport;
    frxDOCXExport1: TfrxDOCXExport;
    frxRTFExport1: TfrxRTFExport;
    frxRichObject1: TfrxRichObject;
    frxPDFExport1: TfrxPDFExport;
    CompanySQL: TIBCQuery;
    CompanySQLSERIAL_NUMBER: TIntegerField;
    CompanySQLSERIAL_QB: TIntegerField;
    CompanySQLFK_COMPANY_SERIAL: TIntegerField;
    CompanySQLLAST_NAME: TWideStringField;
    CompanySQLFIRST_NAME: TWideStringField;
    CompanySQLNATIONAL_ID: TWideStringField;
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
    CompanySQLPHONE_CONTACT: TWideStringField;
    CompanySQLCOMPANY_CONTACT_FIRST: TWideStringField;
    CompanySQLCOMPANY_CONTACT_LAST: TWideStringField;
    CompanySQLCOMPANY_OWNER_REG: TWideStringField;
    CompanySQLCOMPANY_CONTACT_PHONE: TWideStringField;
    CompanySQLCOMPANY_CONTACT_EMAIL: TWideStringField;
    CompanySQLCOMPANY_CONTACT_FAX: TWideStringField;
    CompanySQLCOMPANY_SOCIAL_SEC: TWideStringField;
    CompanySQLCOMPANY_EMPLOYEES: TIntegerField;
    CompanySQLPHONE_MOBILE_2: TWideStringField;
    CompanySQLLINKED_IN: TWideStringField;
    CompanySQLJOB: TWideStringField;
    CompanySRC: TDataSource;
    CompanyDRX: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  procedure CreateFile(Const BaseFolder:String);
  public
    { Public declarations }
    IN_BaseFolder:string;
    procedure CreateTheFIle;
  end;

var
  R_AnadFilesFRM: TR_AnadFilesFRM;

implementation

{$R *.dfm}

uses U_Database;

procedure TR_AnadFilesFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;

procedure TR_AnadFilesFRM.CreateFile(Const BaseFolder:String);
var
  FIleName:String;
begin

//fs2.ShowReport(True);
//exit;


  fs2.PrepareReport;

//  FileName := 'C:\Users\KyrLouca\Desktop\ttt23.rtf';
  FileName := baseFolder+'\ttt2.doc';

  frxRTFExport1.FileName:=fileName;
  frxRTFExport1.ShowDialog:=false;
  frxRTFExport1.OpenAfterExport:=false;

  fs2.Export(frxRTFExport1);

  frxRTFExport1.FileName:=fileName;
  frxRTFExport1.ShowDialog:=false;
  frxRTFExport1.OpenAfterExport:=false;

  fs2.Export(frxRTFExport1);


end;

procedure TR_AnadFilesFRM.CreateTheFIle;
begin
  CreateFIle(IN_BaseFolder);
end;

end.
