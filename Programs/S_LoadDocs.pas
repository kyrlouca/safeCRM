unit S_LoadDocs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  System.IOUtils,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL, RzButton, RzPanel, vcl.wwcheckbox, Vcl.ExtDlgs, vcl.wwbutton,
  RzLabel, RzDBLbl, ppComm, ppRelatv, ppDB, ppDBPipe, ppProd, ppClass, ppReport,pptypes,
  ppPrnabl, ppCtrls, ppCache, ppBands, ppDesignLayer, ppParameter, ppVar;
type
  TS_LoadDocsFRM = class(TForm)
    Panel1: TrzPanel;
    Panel4: TrzPanel;
    Panel3: TrzPanel;
    TableSRC: TDataSource;
    Panel5: TRzPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Grid1: TwwDBGrid;
    Label3: TLabel;
    NameFLD: TwwDBEdit;
    TableSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    Label4: TLabel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    TableSQLCODE_KEY: TWideStringField;
    TableSQLDOC_NAME: TWideStringField;
    TableSQLDOC_BLOB: TBlobField;
    SavetoDB: TRzBitBtn;
    Button1: TButton;
    FileDialog1: TOpenDialog;
    wwButton1: TwwButton;
    Panel2: TRzPanel;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    TableSQLIS_SEND_TO_ALL: TWideStringField;
    TableSQLSERIAL_NUMBER: TIntegerField;
    Nav1: TwwDBNavigator;
    Nav1Button: TwwNavButton;
    Nav1Prior: TwwNavButton;
    Nav1Next: TwwNavButton;
    Nav1Button1: TwwNavButton;
    Nav1Insert: TwwNavButton;
    Nav1Delete: TwwNavButton;
    Nav1Post: TwwNavButton;
    Nav1Cancel: TwwNavButton;
    Label1: TLabel;
    Label6: TLabel;
    wwCheckBox2: TwwCheckBox;
    RzDBLabel1: TRzDBLabel;
    TableSQLPOLY_MONO: TWideStringField;
    wwCheckBox1: TwwCheckBox;
    Label5: TLabel;
    wwIncrementalSearch1: TwwIncrementalSearch;
    TableSQLDOC_PATH: TWideStringField;
    TableSQLDOC_TYPE: TWideStringField;
    CompSQL: TIBCQuery;
    CompSRc: TDataSource;
    CompPIP: TppDBPipeline;
    CompSQLSERIAL_NUMBER: TIntegerField;
    CompSQLSERIAL_QB: TIntegerField;
    CompSQLFK_COMPANY_SERIAL: TIntegerField;
    CompSQLLAST_NAME: TWideStringField;
    CompSQLFIRST_NAME: TWideStringField;
    CompSQLNATIONAL_ID: TWideStringField;
    CompSQLNICKNAME: TWideStringField;
    CompSQLOCCUPATION: TWideStringField;
    CompSQLPHONE_MOBILE: TWideStringField;
    CompSQLPHONE_FIXED: TWideStringField;
    CompSQLPHONE_ALTERNATE: TWideStringField;
    CompSQLFAX: TWideStringField;
    CompSQLEMAIL: TWideStringField;
    CompSQLEMAIL_2: TSmallintField;
    CompSQLADDRESS: TWideStringField;
    CompSQLADDRESS_STREET: TWideStringField;
    CompSQLADDRESS_POST_CODE: TWideStringField;
    CompSQLADDRESS_CITY: TWideStringField;
    CompSQLADDRESS_DISTRICT: TWideStringField;
    CompSQLDATE_STARTED: TDateField;
    CompSQLDATE_BIRTH: TDateField;
    CompSQLDATE_USER: TDateField;
    CompSQLLIST_SOURCE: TWideStringField;
    CompSQLFACEBOOK: TWideStringField;
    CompSQLWEBSITE: TWideStringField;
    CompSQLTWITTER: TWideStringField;
    CompSQLSTATUS_ACTIVE: TWideStringField;
    CompSQLSEX: TWideStringField;
    CompSQLIS_COMPANY: TWideStringField;
    CompSQLCOMPANY_OWNER: TWideStringField;
    CompSQLCOMPANY_CONTACT: TWideStringField;
    CompSQLCOMPANY_REGISTRATION_DATE: TDateField;
    CompSQLPHONE_CONTACT: TWideStringField;
    CompSQLCOMPANY_CONTACT_FIRST: TWideStringField;
    CompSQLCOMPANY_CONTACT_LAST: TWideStringField;
    CompSQLCOMPANY_OWNER_REG: TWideStringField;
    CompSQLCOMPANY_CONTACT_PHONE: TWideStringField;
    CompSQLCOMPANY_CONTACT_EMAIL: TWideStringField;
    CompSQLCOMPANY_CONTACT_FAX: TWideStringField;
    CompSQLCOMPANY_SOCIAL_SEC: TWideStringField;
    CompSQLCOMPANY_EMPLOYEES: TIntegerField;
    CompSQLPHONE_MOBILE_2: TWideStringField;
    CompSQLLINKED_IN: TWideStringField;
    CompSQLJOB: TWideStringField;
    CompSQLIS_SAFE_COMPANY: TWideStringField;
    CompSQLCOMPANY_OWNER_ID: TWideStringField;
    ValuesRPT: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppDetailBand1: TppDetailBand;
    compOwner: TppDBText;
    CompOwnerID: TppDBText;
    CompAddress: TppDBText;
    CompAddressStreet: TppDBText;
    CompAddressCIty: TppDBText;
    Button2: TButton;
    ppHeaderBand1: TppHeaderBand;
    Comp_PhoneFixed: TppLabel;
    CompPhoneFixed: TppDBText;
    Comp_address: TppLabel;
    comp_ownerId: TppLabel;
    Comp_owner: TppLabel;
    comp_addressStreet: TppLabel;
    Comp_AddressCity: TppLabel;
    SeminarSQL: TIBCQuery;
    seminarSRC: TDataSource;
    InstructorSRC: TDataSource;
    SeminarPip: TppDBPipeline;
    InstructorSQL: TIBCQuery;
    InstructorPIP: TppDBPipeline;
    RzPanel4: TRzPanel;
    RzPanel5: TRzPanel;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    RzDBLabel2: TRzDBLabel;
    Label11: TLabel;
    wwDBEdit1: TwwDBEdit;
    RzBitBtn2: TRzBitBtn;
    Button3: TButton;
    wwCheckBox3: TwwCheckBox;
    wwCheckBox4: TwwCheckBox;
    wwButton2: TwwButton;
    RzPanel6: TRzPanel;
    wwDBNavigator1: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    wwNavButton7: TwwNavButton;
    wwNavButton8: TwwNavButton;
    Button4: TButton;
    wwDBGrid1: TwwDBGrid;
    RzPanel7: TRzPanel;
    VenueSRC: TDataSource;
    VenueSQL: TIBCQuery;
    VenuePIP: TppDBPipeline;
    SeminarSQLSERIAL_NUMBER: TIntegerField;
    SeminarSQLANAD_NUMBER: TWideStringField;
    SeminarSQLFK_SEMINAR: TIntegerField;
    SeminarSQLFK_INSTRUCTOR: TIntegerField;
    SeminarSQLFK_EXAMINER: TIntegerField;
    SeminarSQLFK_VENUE: TIntegerField;
    SeminarSQLFK_COMPANY_PERSON_SERIAL: TIntegerField;
    SeminarSQLSEMINAR_NAME: TWideStringField;
    SeminarSQLDATE_STARTED: TDateField;
    SeminarSQLDATE_COMPLETED: TDateField;
    SeminarSQLDURATION_DAYS: TIntegerField;
    SeminarSQLDURATION_HOURS: TIntegerField;
    SeminarSQLAMOUNT_ANAD: TFloatField;
    SeminarSQLCOMMENTS: TWideStringField;
    SeminarSQLANAD_APPROVED: TWideStringField;
    SeminarSQLSTATUS: TWideStringField;
    SeminarSQLIS_INVOICED: TWideStringField;
    SeminarSQLIS_CERTIFICATED: TWideStringField;
    SeminarSQLMAX_CAPACITY: TIntegerField;
    SeminarSQLHAS_EXPIRY: TWideStringField;
    SeminarSQLEXPIRY_PERIOD: TIntegerField;
    SeminarSQLTYPE_MONO_POLY: TWideStringField;
    SeminarSQLSEM_CATEGORY: TWideStringField;
    SeminarSQLFK_COMPANY_INVOICED: TIntegerField;
    SeminarSQLPASS_PERCENTAGE: TIntegerField;
    SeminarSQLSPECIFICATION_NUMBER: TWideStringField;
    InstructorSQLSERIAL_NUMBER: TIntegerField;
    InstructorSQLANAD_NUMBER: TWideStringField;
    InstructorSQLNATIONAL_ID: TWideStringField;
    InstructorSQLFK_COMPANY_SERIAL: TIntegerField;
    InstructorSQLFIRST_NAME: TWideStringField;
    InstructorSQLLAST_NAME: TWideStringField;
    InstructorSQLNICKNAME: TWideStringField;
    InstructorSQLSTATUS: TWideStringField;
    InstructorSQLOCCUPATION: TWideStringField;
    InstructorSQLPHONE_MOBILE: TWideStringField;
    InstructorSQLPHONE_FIXED: TWideStringField;
    InstructorSQLPHONE_ALTERNATE: TWideStringField;
    InstructorSQLFAX: TWideStringField;
    InstructorSQLEMAIL: TWideStringField;
    InstructorSQLEMAIL_2: TSmallintField;
    InstructorSQLADDRESS: TWideStringField;
    InstructorSQLADDRESS_STREET: TWideStringField;
    InstructorSQLADDRESS_POST_CODE: TWideStringField;
    InstructorSQLADDRESS_CITY: TWideStringField;
    InstructorSQLADDRESS_DISTRICT: TWideStringField;
    InstructorSQLDATE_STARTED: TDateField;
    InstructorSQLDATE_BIRTH: TDateField;
    InstructorSQLDATE_USER: TDateField;
    InstructorSQLLIST_SOURCE: TWideStringField;
    InstructorSQLFACEBOOK: TWideStringField;
    InstructorSQLWEBSITE: TWideStringField;
    InstructorSQLTWITTER: TWideStringField;
    InstructorSQLSTATUS_ACTIVE: TWideStringField;
    InstructorSQLCERTIFIED_ANAD: TWideStringField;
    InstructorSQLJOB_TITLE: TWideStringField;
    VenueSQLSERIAL_NUMBER: TIntegerField;
    VenueSQLVENUE_NAME: TWideStringField;
    VenueSQLVENUE_LOCATION: TWideStringField;
    VenueSQLVENUE_CAPACITY: TIntegerField;
    VenueSQLVENUE_COST: TFloatField;
    VenueSQLCOMMENTS: TWideStringField;
    VenueSQLANAD_NUMBER: TWideStringField;
    VenueSQLROOM_NAME: TWideStringField;
    comp_lastName: TppLabel;
    compLastName: TppDBText;
    sem_name: TppLabel;
    SemNAME: TppDBText;
    sem_DATE_STARTED: TppLabel;
    SemDATE_STARTED: TppDBText;
    sem_DATE_COMPLETED: TppLabel;
    SemDATE_COMPLETED: TppDBText;
    sem_DURATION_DAYS: TppLabel;
    SemDURATION_DAYS: TppDBText;
    sem_DURATION_HOURS: TppLabel;
    SemDURATION_HOURS: TppDBText;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppLabel9: TppLabel;
    ppDBText9: TppDBText;
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure SavetoDBClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure wwButton1Click(Sender: TObject);
    procedure TableSQLNewRecord(DataSet: TDataSet);
    procedure Nav1InsertClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure v1Calc(Sender: TObject; var Value: Variant);
  private
    { Private declarations }
    cn:TIBCConnection;
  procedure WriteStreamToDatabase(Const CodeKey:String;Const FileName :String; Const MonoPOly:String);
//  procedure SaveToFile(Const CodeKey:String;Const FileName :String; Const MonoPOly:String);
  procedure SaveToFileXX(Const CodeKey:String;Const FileName :String; Const MonoPOly:String);
  procedure CopyAFile(Const DocSerial:Integer;Const FileName :String);
  procedure CopyModifiedFile(Const DocSerial:Integer;Const FileName :String);
  procedure CreateTextFile(Const seminarSerial, CompSerial:Integer; Const FileName :String);

  procedure SaveXX(Const SerialNumber:Integer;Const  FilePath, DocName :String);
  function FindHex(const FileName:String): Integer;

  procedure WriteFiles(Const SeminarSerial:Integer;Const DocType:String);
  procedure writeTitles(Const Table:String; Const Serial :Integer; Const FileName :String;Const fieldArray: Array of String);
  procedure writeValues(Const Table:String; Const Serial :Integer; Const FileName :String;Const fieldArray: Array of String);
procedure writeNewLine( Const FileName :String);

  public
    { Public declarations }
    MyInsertState:Boolean;
    IN_SeminarSerial:integer;
    IN_DocTYpe:String;
    Procedure CreateTheFiles;
  end;

var
  S_LoadDocsFRM: TS_LoadDocsFRM;

implementation

uses   U_Database, G_generalProcs;

{$R *.DFM}

procedure TS_LoadDocsFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TS_LoadDocsFRM.WriteStreamToDatabase(Const CodeKey:String;Const FileName :String; Const MonoPOly:String);
var
//  BlobField: TField;
  BlobField: TBlobField;
  BS: TStream;
  str2:String;
  qr:TksQuery;
  FS:TStream;
begin
  str2:='Select * from word_docs wd where wd.code_key = :CodeKey';
  qr:= TksQuery.Create(cn,str2);
  try
      qr.close;
      qr.ParamByName('CodeKey').Value:=CodeKey;
      qr.open;

      if qr.IsEmpty then
       exit;

      qr.Edit;
      BlobField := qr.FieldByName('doc_blob') as TBlobField;
      BS := qr.CreateBlobStream(BlobField,bmWrite);
      try
        Bs.Position:=0;
        FS := TFileStream.Create( filename, fmOpenRead );
        fs.Position:=0;
        try
          showMessage(intToStr(fs.Size));
          bs.CopyFrom(Fs,fs.Size);
          qr.FieldByName('doc_name').AsString:=filename;
          qr.Post;
        finally
          fs.Free;
        end;

      finally
          BS.Free;

      end;



  finally
    qr.Free;
  end;

end;



procedure TS_LoadDocsFRM.wwButton1Click(Sender: TObject);
VAR
  fileName:String;
begin
  FileName:='C:\Data\DelphiProjects\Safe_CRM\documents\H3.rtf';
  FindHex(FileName);
end;

function TS_LoadDocsFRM.FindHex(const FileName:String): Integer;
var
  AFile: TFileStream;
  BR: TBinaryReader;
  AInteger: Integer;
  ADouble: Double;
  AChar: Char;
  AString: String;
  size:Integer;
  goOn:Boolean;
  fByte:Byte;
  isPrev:boolean;
  gChar:Char;
  dCount:integer;
begin
  goOn:=true;
  isPrev:=False;
  dCount:=0;
  AFile := TFileStream.Create(filename, fmOpenRead);
  BR := TBinaryReader.Create(AFile, TEncoding.Unicode, false);
  {
  try
    while goOn do begin
          fByte := BR.ReadByte;
          Achar:=Chr(FByte);
          if           if (Achar='$')
                    if (Achar='$') and IsPrev then begin
//            Achar := BR.ReadChar;
            fByte := BR.ReadByte;
            GChar:=Chr(FByte);
            SHowMessage(Gchar);
            isPrev:=false;
          end;
          isPrev:= (AChar='$');
          goOn:= (Achar <> '~');
    end;
   }
  {
    // read a char and write it to the console
    AChar := BR.ReadChar;
    Writeln(AChar);
    // read a string and write it to the console
    AString := BR.ReadString;
    Writeln(AString);

    BR.Close;
  finally

    BR.Free;
    AFile.Free;
  end;
  }
end;

{
function TS_LoadDocsFRM.PosHex(const SubStr: AnsiString; const StrStream: TMemoryStream): Integer;
var
  SubLen, SrcLen, Len, I, J: Integer;

  C1: AnsiChar;
  Str: PAnsiChar;
begin
  SrcLen := StrStream.Size;
  SubLen := Length(SubStr);

  Result := 0;
  if (SubLen <= 0) or (SrcLen <= 0) or (SrcLen < SubLen) then Exit;

  StrStream.Position := 0;
  Str := StrStream.Memory;

  Len := SrcLen - SubLen + 1;
  C1 := SubStr[1];
  for I := 1 to Len do
  begin
    if Str[I] = C1 then
    begin
      Result := I;
      for J := 1 to SubLen-1 do
      begin
        if Str[I+J] <> SubStr[1+J] then
        begin
          Result := 0;
          break;
        end;
      end;
      if Result <> 0 then Exit;
    end;
  end;
end;
}

procedure TS_LoadDocsFRM.Button2Click(Sender: TObject);
const
  SemArray :Tarray<String>=['serial_number', 'seminar_name', 'date_started', 'date_completed', 'duration_days', 'duration_hours'];
  CompanyArray :Tarray<String>=['serial_number', 'Last_name'];

var
    SeminarSerial:integer;
begin
  SeminarSerial:=129;
//  WriteFiles(SeminarSerial,'WORD');
//CreateTextFile(133,1000001,'C:\Data\DelphiProjects\Safe_CRM\aA.txt');
 writeTitles('Seminar', 133,'C:\Data\DelphiProjects\Safe_CRM\aA.txt',semArray);
 writeTitles('Person', 10000001,'C:\Data\DelphiProjects\Safe_CRM\aA.txt',CompanyArray);

 writeNewLine('C:\Data\DelphiProjects\Safe_CRM\aA.txt');

 writeValues('Seminar', 133,'C:\Data\DelphiProjects\Safe_CRM\aA.txt',semArray);
 writeValues('Person', 10000001,'C:\Data\DelphiProjects\Safe_CRM\aA.txt',CompanyArray);
end;

procedure TS_LoadDocsFRM.CopyaFile(Const DocSerial:Integer;Const FileName :String);
var
//  BlobField: TField;
  BlobField: TBlobField;
  BS: TStream;
  str2:String;
  qr:TksQuery;
  FS:TMemoryStream;

begin

  str2:='Select * from word_docs wd where wd.Serial_number = :SerialNumber';
  qr:= TksQuery.Create(cn,str2);
  try
      qr.close;
      qr.ParamByName('SerialNumber').Value:=DocSerial;
      qr.open;

      if qr.IsEmpty then
       exit;

      BlobField := qr.FieldByName('doc_blob') as TBlobField;
      BS := qr.CreateBlobStream(BlobField,bmRead);
      try
        fs:=TMemoryStream.Create;
        try
          fs.CopyFrom(bs,bs.Size);
          fs.SaveToFile(fileName);
        finally
          fs.Free;
        end;

      finally
        BS.Free;
      end;

  finally
    qr.Free;
  end;

end;


procedure TS_LoadDocsFRM.SaveToFileXX(Const CodeKey:String;Const FileName :String; Const MonoPOly:String);
var
  BlobField: TBlobField;
  BS: TStream;
  str2:String;
  qr:TksQuery;
  FS:TMemoryStream;
  binR:TbinaryReader;
  binW:TBinaryWriter;

begin
  str2:='Select * from word_docs wd where wd.code_key = :CodeKey';
  qr:= TksQuery.Create(cn,str2);
  try
      qr.close;
      qr.ParamByName('CodeKey').Value:=CodeKey;
      qr.open;

      if qr.IsEmpty then
       exit;

      BlobField := qr.FieldByName('doc_blob') as TBlobField;
      BS := qr.CreateBlobStream(BlobField,bmRead);
      try
        fs:=TMemoryStream.Create;
        try
          fs.CopyFrom(bs,bs.Size);
          fs.SaveToFile(fileName);
        finally
          fs.Free;
        end;

      finally
        BS.Free;
      end;

  finally
    qr.Free;
  end;

end;

procedure TS_LoadDocsFRM.SaveXX(Const SerialNumber:Integer;Const  FilePath, DocName :String);
var
  BlobField: TBlobField;
//  BS: TStream;
  str2:String;
  qr:TksQuery;
  CompQr:TksQuery;
//  FS:TMemoryStream;
begin

  str2:='Select * from word_docs wd where wd.serial_number = :SerialNumber';
  qr:= TksQuery.Create(cn,str2);
  try
      qr.close;
      qr.ParamByName('SerialNumber').Value:=SerialNumber;
      qr.open;

      if qr.IsEmpty then
       exit;
      qr.Edit;
      TBlobField(qr.FieldByName('doc_blob')).LoadFromFile(filePath);
      qr.FieldByName('doc_Name').AsString:=DocName;
      qr.FieldByName('doc_path').AsString:=filePath;
      qr.Post;
  finally
     qr.Free;
  end;


{
   fs := TFileStream.Create('filename', fmOpenRead);
IBCQuery.Open;
IBCQuery.Edit;
TBlobField(IBCQuery.FieldByName('blobfieldname')).LoadFromStream(fs);
IBCQuery.Post;
fs.Free;
}

{
IBCQuery.Open;
IBCQuery.Edit;
TBlobField(IBCQuery.FieldByName('blobfieldname')).LoadFromFile('filename');
IBCQuery.Post;
}

end;


procedure TS_LoadDocsFRM.TableSQLNewRecord(DataSet: TDataSet);
begin
  Dataset.FieldByName('Poly_mono').AsString:='P';
  Dataset.FieldByName('iS_send_to_all').AsString:='Y';
  Dataset.FieldByName('DOC_TYPE').AsString:='WORD';
end;

procedure TS_LoadDocsFRM.v1Calc(Sender: TObject; var Value: Variant);
begin
 value:= Copy(compSQL.FieldByName('last_name').AsString,1,4);
end;

procedure TS_LoadDocsFRM.SavetoDBClick(Sender: TObject);
var
  FileName:String;
  FIlePath:String;
  codeKey:String;
  SerialNumber:Integer;
begin
  if TableSQL.State in [dsEdit,dsInsert] then
    TableSQL.Post;

  if not FileDialog1.Execute then     begin
      showMessage('exit');
      Exit;
  end;

  filePath :=FileDialog1.FileName;
  FileName:=TPath.GetFileNameWithoutExtension(FilePath);
  SerialNumber:=TableSQL.FieldByName('Serial_Number').AsInteger;
  saveXX(SerialNumber,FilePath, filename);
  ksOpenTables([TableSQL]);

end;


procedure TS_LoadDocsFRM.FormActivate(Sender: TObject);
begin
  tableSQL.close;
  TableSQL.ParamByName('DocTYpe').Value:='WORD';
  TableSQL.Open;
end;

procedure TS_LoadDocsFRM.FormCreate(Sender: TObject);
begin
  cn:=  U_databaseFRM.DataConnection;
end;

procedure TS_LoadDocsFRM.Nav1InsertClick(Sender: TObject);
var
  FileName:String;
  FIlePath:String;
  codeKey:String;
  SerialNumber:Integer;
begin
  if TableSQL.State in [dsEdit,dsInsert] then
    TableSQL.Post;


  if not FileDialog1.Execute then     begin
      showMessage('exit');
      Exit;
  end;

  tableSQL.Insert;

  filePath :=FileDialog1.FileName;
  FileName:=TPath.GetFileNameWithoutExtension(FilePath);
  tableSQL.FieldByName('DOC_name').Value:=fileName;
  TableSQL.Post;

  SerialNumber:=TableSQL.FieldByName('Serial_Number').AsInteger;
  saveXX(SerialNumber,FilePath, filename);
  ksOpenTables([TableSQL]);
  NameFLD.SetFocus;
  abort;
end;

procedure TS_LoadDocsFRM.Button1Click(Sender: TObject);
begin
  WriteFiles(119,'WORD');
end;

procedure TS_LoadDocsFRM.CreateTheFiles;
begin
  WriteFiles(IN_SeminarSerial,in_DocTYpe);
end;

procedure TS_LoadDocsFRM.WriteFiles(Const SeminarSerial:Integer;Const DocType:String);
//doctype='WORD' for normal word documents

var
  qr:TksQuery;
  compQr:TksQuery;
  param:G_generalProcs.TParameterRecord;
  baseFolder:String;
  SeminarFolder:String;
  useFolder:string;
  fileName:String;
  DocSerial:integer;
  codeKey:String;
  str2:string;
  SeminarName:String;
  fpath:string;
  fTExtName:string;
  fname:string;
  IsPoly:string;
  IsSendToAll:String;
  CompId:String;
  CompName:String;
  MonoCompanySerial:Integer;
  CompSerial:Integer;

begin

  //for every document
  // if is sent_to_all is N then just one document to the seminar folder
  // otherwise one for each company (but there is only one if is mono)
  param:=  gpGetGeneralParam(cn,'T00');
  baseFOlder:=Trim(param.P_String3);

  if not DirectoryExists(baseFOlder) then begin
      ShowMessage('Base Directory does NOT EXISTS: '+BaseFolder);
//      result:=false;
      exit;
  end;


  qr:=TksQuery.Create(cn,'select * from Seminar where serial_number = :SeminarSerial');
  try
    qr.ParamByName('seminarSerial').Value:=SeminarSerial;
    qr.Open;
    if qr.IsEmpty then begin
//      result:=false;
      exit;
    end;
    SeminarName:=trim(qr.FieldByName('Seminar_name').AsString);
    IsPoly:=qr.FieldByName('Type_mono_poly').AsString;
    MonoCompanySerial:= qr.FieldByName('FK_COMPANY_PERSON_SERIAL').AsInteger;
    qr.Close;

  finally
    qr.free;
  end;

  SeminarFolder:=baseFOlder+'\'+SeminarName+'_'+IntToStr(SeminarSerial);
  if  DirectoryExists(SeminarFOlder) then begin
//    MessageDlg('Directory to write the Files already EXISTS. Delete first', mtError, [mbOK], 0);
//    exit;
  end else begin
    if not CreateDir(SeminarFOlder) then begin
      ShowMessage('cannot Create Directory: '+SeminarFolder);
      exit;
    end;
  end;


  str2:='Select * from word_docs wd where wd.Poly_mono = :poly and wd.doc_type= :DocType';
  qr:= TksQuery.Create(cn,str2);
  try
      qr.close;
      qr.ParamByName('poly').Value:=isPoly;
      qr.ParamByName('DocTYpe').Value:=DocType; //WORD for word files to ANAD
      qr.open;
      while not qr.Eof do begin
      //for every document
        DocSerial:=qr.FieldByName('SERIAL_NUMBER').AsInteger;
        fileName:=qr.FieldByName('doc_name').AsString;
        IsSendToAll:=qr.FieldByName('Is_send_to_all').AsString;

        if IsSendToAll='N' then begin
          /////////file for the seminar
          fname:= SeminarFolder+'\'+fileName+'.doc';
          fTextName:=SeminarFolder+'\'+fileName+'.csv';
          CopyaFile(DocSerial,fName);
          CreateTextFile(seminarSerial,MonoCompanySerial,fTextName);
        end else begin
         //Will copy this file to each Company (only One company if Mono)
          if IsPoly='M' then begin
                //if mono the company is found on seminar (fk_company_serial)
              Str2:= 'select per.serial_number,per.National_id, per.Last_name from person per where per.serial_number= :PersonSerial';
          end else begin
                //if poly the companies are found on seminar_company
          str2:=
          '   select per.serial_number,per.National_id, per.Last_name from'
          +'          seminar_company semC left outer join'
          +'          person per on semc.fk_person_serial = per.serial_number'
          +'  where semC.fk_seminar_serial= :SeminarSerial';

          end;

          Compqr:= TksQuery.Create(cn,str2);
          try
            CompQR.close;
            if (CompQr.FindParam('SeminarSerial')<>nil) then
              CompQr.ParamByName('SeminarSerial').Value:=SeminarSerial;
            if (CompQr.FindParam('PersonSerial')<>nil) then
              CompQr.ParamByName('PersonSerial').Value:=MonoCompanySerial;

            CompQr.open;
            while not CompQR.Eof do begin
              CompId:=CompQR.FieldByName('National_id').AsString;
              CompName:=CompQR.FieldByName('Last_name').AsString;
              CompSerial:=CompQR.FieldByName('Serial_Number').AsInteger;
              /////////file for a compnay in its own folder
              useFolder:=SeminarFolder+'\'+trim(compName)+'_'+CompId;
              if  not DirectoryExists(useFOlder) then begin
                    if not CreateDir(useFOlder) then begin
                      ShowMessage('cannot Create Directory: '+UseFolder);
                      exit;
                    end;
              end;
              fname:=UseFOlder+'\'+fileName+Trim(compId)+'_'+'.doc';
              fTextname:=UseFOlder+'\'+fileName+Trim(compId)+'_'+'.csv';
              CopyaFile(DocSerial,fName);
              CreateTextFile(SeminarSerial,CompSerial,fTextName);

              compQR.Next;
            end;
          finally
           CompQr.Free;
          end;

        end;
        qr.Next;
      end;

  finally
    qr.Free;
  end;

end;


procedure TS_LoadDocsFRM.CopyModifiedFile(Const DocSerial:Integer;Const FileName :String);
var
//  BlobField: TField;
  BlobField: TBlobField;
  BS: TStream;
  str2:String;
  qr:TksQuery;
  FS:TMemoryStream;

begin

  str2:='Select * from word_docs wd where wd.Serial_number = :SerialNumber';
  qr:= TksQuery.Create(cn,str2);
  try
      qr.close;
      qr.ParamByName('SerialNumber').Value:=DocSerial;
      qr.open;

      if qr.IsEmpty then
       exit;

      BlobField := qr.FieldByName('doc_blob') as TBlobField;
      BS := qr.CreateBlobStream(BlobField,bmRead);
      try
        fs:=TMemoryStream.Create;
        try
          fs.CopyFrom(bs,bs.Size);
          fs.SaveToFile(fileName);
        finally
          fs.Free;
        end;

      finally
        BS.Free;
      end;

  finally
    qr.Free;
  end;

end;

procedure TS_LoadDocsFRM.writeTitles(Const Table:String; Const Serial :Integer; Const FileName :String;Const fieldArray: Array of String);
var
  str:String;
  qr:TksQuery;
  FieldName:String;
  val:string;
  Writer: TStreamWriter;
  field:TField;
  date:Tdate;

begin

  { Store the title and then the text. }

  Writer := TStreamWriter.Create(FileName, true, TEncoding.UTF8);
  str:='Select * from ' + table + ' where serial_number= :Serial';
  qr:= TksQuery.Create(cn,str);
  try
    qr.close;
    qr.ParamByName('Serial').Value:=Serial;
    qr.open;
    for  FieldName in fieldArray do begin
      field:=qr.FindField(FieldName);
      if field <>Nil then begin
        val:= field.AsString;
//        ShowMessage(fieldName+'-:'+val);
        Writer.Write(Table+'__'+FieldName+'; ');
      end;
    end;

  finally
    qr.Free;
    Writer.Free();
  end;



end;

procedure TS_LoadDocsFRM.writeValues(Const Table:String; Const Serial :Integer; Const FileName :String;Const fieldArray: Array of String);
var
  str:String;
  qr:TksQuery;
  FieldName:String;
  val:string;
  Writer: TStreamWriter;
  field:TField;
  date:Tdate;

begin

  { Store the title and then the text. }

  Writer := TStreamWriter.Create(FileName, true, TEncoding.UTF8);
  str:='Select * from ' + table + ' where serial_number= :Serial';
  qr:= TksQuery.Create(cn,str);
  try
    qr.close;
    qr.ParamByName('Serial').Value:=Serial;
    qr.open;
    for  FieldName in fieldArray do begin
      field:=qr.FindField(FieldName);
      if field <>Nil then begin
        if (field.DataType in [ftDate,ftDateTime]) then
          val:= field.AsString
//          val:= FormatTimeStampUTCF(field.AsDateTime)
        else
          val:= field.AsString;
        writer.Write(val +'; ');
      end;
    end;

  finally
    qr.Free;
    Writer.Free();
  end;



end;


procedure TS_LoadDocsFRM.writeNewLine( Const FileName :String);
var
  Writer: TStreamWriter;

begin
  Writer := TStreamWriter.Create(FileName, true, TEncoding.UTF8);
  try
    writer.WriteLine();
  finally
    Writer.Free();
  end;
end;




procedure TS_LoadDocsFRM.CreateTextFile(Const seminarSerial, CompSerial:Integer; Const FileName :String);
const
  SemArray :Tarray<String>=['serial_number', 'seminar_name', 'date_started', 'date_completed', 'duration_days', 'duration_hours'];
var
  str2:String;
  qr:TksQuery;
  FS:TMemoryStream;
  InstructorSerial:Integer;
  VenueSerial:Integer;
  FieldName:String;
  val:string;
  Writer: TStreamWriter;
  field:TField;
  date:Tdate;

begin


  { Store the title and then the text. }

  { Close and free the writer. }


CompSQL.Close;
compSQL.ParamByName('PersonSerial').Value:=CompSerial;
CompSQL.Open;

SeminarSQL.Close;
SeminarSQL.ParamByName('SerialNumber').Value:=SeminarSerial;
SeminarSQL.open;
VenueSerial:=SeminarSQL.FieldByName('fk_venue').AsInteger;
InstructorSerial:=SeminarSQL.FieldByName('fk_Instructor').AsInteger;


InstructorSQL.Close;
InstructorSQL.ParamByName('SerialNumber').Value:=InstructorSerial;
InstructorSQL.open;

VenueSQL.Close;
VenueSQL.ParamByName('SerialNumber').Value:=VenueSerial;
VenueSQL.open;

  Writer := TStreamWriter.Create(FileName, false, TEncoding.UTF8);
  str2:='Select * from seminar where serial_number= :SeminarSerial';
  qr:= TksQuery.Create(cn,str2);
  try
    qr.close;
    qr.ParamByName('SeminarSerial').Value:=SeminarSerial;
    qr.open;
    for  FieldName in SemArray do begin
      if qr.FindField(FieldName)<>Nil then begin
        val:= qr.FieldByName(fieldName).AsString;
        ShowMessage(fieldName+'-:'+val);
        Writer.Write(FieldName+'; ');
      end;

    end;
    Writer.WriteLine();

    for  FieldName in SemArray do begin
      field:= qr.FindField(FieldName);
      if field<>Nil then begin
        if (field.DataType in [ftDate,ftDateTime]) then
          val:= FormatTimeStampUTCF(field.AsDateTime)
        else
          val:= field.AsString;
        Writer.Write(val+'; ');
      end;

    end;


  finally
    qr.Free;
    Writer.Free();
  end;




//if CompSQL.IsEmpty then
//  exit;

{

     with ValuesRPT do begin
      AllowPrintToFile:=true;
       ShowPrintDialog := False;
        DeviceType := dtTextFile;
//        DeviceType := dtReportTextFile
        TextFileName := fileName;
        Print;
     end;
}

end;




End.
