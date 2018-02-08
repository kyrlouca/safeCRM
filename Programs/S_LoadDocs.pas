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
    Button2: TButton;
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
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure SavetoDBClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure wwButton1Click(Sender: TObject);
    procedure TableSQLNewRecord(DataSet: TDataSet);
    procedure Nav1InsertClick(Sender: TObject);
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
  procedure writeNewLine( Const FileName :String);
  procedure writeValues(Const Prefix:string; Const TableSQL:String; Const Serial :Integer; Const FileName :String;Const fieldArray: Array of String);
  procedure writeTitles(Const Prefix:String; Const TableSQL:String; Const Serial :Integer; Const FileName :String;Const fieldArray: Array of String);
  procedure CreateStudentFile( Const SeminarSerial :Integer; Const FileName :String);

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
begin
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
          fname:= SeminarFolder+'\'+fileName+'.docx';
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
              fname:=UseFOlder+'\'+fileName+Trim(compId)+'_'+'.docx';
              fTextname:=UseFOlder+'\'+fileName+Trim(compId)+'_'+'.csv';
              CopyaFile(DocSerial,fName);
              CreateTextFile(SeminarSerial,CompSerial,fTextName);

              fname:=UseFOlder+'\'+'StudentsFile.txt';
              CreateStudentFile(SeminarSerial,fname);

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

  MessageDlg('Word Files created in '+#13+#10+SeminarFolder, mtInformation, [mbOK], 0);
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

procedure TS_LoadDocsFRM.writeTitles(Const Prefix:String;Const TableSQL:String; Const Serial :Integer; Const FileName :String;Const fieldArray: Array of String);
var
//  str:String;
  qr:TksQuery;
  FieldName:String;
  val:string;
  Writer: TStreamWriter;
  field:TField;
  date:Tdate;

begin

  Writer := TStreamWriter.Create(FileName, true, TEncoding.UTF8);
  qr:= TksQuery.Create(cn,TableSQL);
  try
    qr.close;
    qr.ParamByName('Serial').Value:=Serial;
    qr.open;
    for  FieldName in fieldArray do begin
      field:=qr.FindField(FieldName);
      if field <>Nil then begin
        val:= field.AsString;
//        ShowMessage(fieldName+'-:'+val);
        Writer.Write(Prefix+FieldName+'; ');
      end;
    end;

  finally
    qr.Free;
    Writer.Free();
  end;



end;

procedure TS_LoadDocsFRM.writeValues(Const Prefix:string; Const TableSQL:String; Const Serial :Integer; Const FileName :String;Const fieldArray: Array of String);
var
//  str:String;
  qr:TksQuery;
  FieldName:String;
  val:string;
  Writer: TStreamWriter;
  field:TField;
  date:Tdate;

begin

  { Store the title and then the text. }

  Writer := TStreamWriter.Create(FileName, true, TEncoding.UTF8);
//  str:='Select * from ' + table + ' where serial_number= :Serial';

  qr:= TksQuery.Create(cn,TableSQL);
  try
    qr.close;
    qr.ParamByName('Serial').Value:=Serial;
    qr.open;
    for  FieldName in fieldArray do begin
      field:=qr.FindField(FieldName);
      if field <>Nil then begin
        if (field.DataType in [ftDate,ftDateTime]) then begin
          val:= field.AsString
//          val:= FormatTimeStampUTCF(field.AsDateTime)


        end else if (field.DataType in [ftString, ftFixedChar,ftWideString,ftFixedWideChar]) then begin
           val:='"'+trim(field.AsString)+'"';
        end else begin
          val:= field.AsString;
        end;
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
  SeminarSQL = 'select * from seminar where serial_number = :Serial';
  CompanySQl = 'select * from Person where serial_number = :Serial';
  VenueSQl = 'select * from Venue where serial_number = :Serial';
  InstructorSQl = 'select * from Person where serial_number = :Serial';
  CountStudentSQL = 'select count(sp.fk_person_serial) as count_student from seminar_person sp where sp.is_guest=''N'' and sp.fk_seminar_serial = :Serial';
//  DaysSQL =

  SemArray :Tarray<String>=['serial_number','ANAD_number', 'national_id', 'seminar_name', 'date_started', 'date_completed', 'duration_days', 'duration_hours'];
  CompanyArray :Tarray<String>=['Last_name','company_owner','company_owner_id','company_social_sec','company_contact_last','company_contact_first','company_contact_Phone','company_contact_fax','company_contact_email',
  'address','ADDRESS_POST_CODE','ADDRESS_STREET','ADDRESS_DISTRICT','ADDRESS_CITY','PHONE_FIXED','email','website'];
  VenueArray :Tarray<String>=['Venue_Name','Venue_location','ANAD_Number'];
  InstructorArray :Tarray<String>=['first_name','Last_name','national_id','ANAD_Number'];
  CountStudentArray :Tarray<String>=['count_student'];
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
  str:String;

begin

//  FileName:='C:\Data\DelphiProjects\Safe_CRM\Company.csv';

 if FileExists(Filename) then
  exit;

  str := ' select first 1  sub.fk_instructor, sub.fk_venue from seminar_subject sub where sub.fk_seminar_serial= :Serial';
  qr:= TksQuery.Create(cn,str);
  try
    qr.close;
    qr.ParamByName('Serial').Value:=SeminarSerial;
    qr.open;
    InstructorSerial:=qr.FieldByName('fk_instructor').AsInteger;
    VenueSerial:=qr.FieldByName('fk_venue').AsInteger;
  finally
    qr.Free;
  end;

 writeTitles('Seminar__', SeminarSQL, SeminarSerial,FileName,SemArray);
 writeTitles('studentCount__', CountStudentSQL, SeminarSerial,FileName,CountStudentArray);
 writeTitles('Company__', CompanySQL, CompSerial,FileName,COmpanyArray);
 writeTitles('Venue__', VenueSQL, VenueSerial,FileName,VenueArray);
 writeTitles('Instructor__', InstructorSQL, InstructorSerial,FileName,InstructorArray);

 writeNewLine(FileName);

 writeValues('Seminar__',SeminarSQL, SeminarSerial ,FileName,SemArray);
 writeValues('studentCount__', CountStudentSQL, SeminarSerial,FileName,CountStudentArray);
 writeValues('Company__', CompanySQL, CompSerial,FileName,CompanyArray);
 writeValues('Venue__',VenueSQL, VenueSerial ,FileName,VenueArray);
 writeValues('Instructor__', InstructorSQL, InstructorSerial,FileName,InstructorArray);



//  SeminarSQL.Close;
//  SeminarSQL.ParamByName('SerialNumber').Value:=SeminarSerial;
//  SeminarSQL.open;
//  VenueSerial:=SeminarSQL.FieldByName('fk_venue').AsInteger;
//  InstructorSerial:=SeminarSQL.FieldByName('fk_Instructor').AsInteger;

end;





procedure TS_LoadDocsFRM.CreateStudentFile( Const SeminarSerial :Integer; Const FileName :String);
var
//  str:String;
  qr:TksQuery;
  FieldName:String;
  val:string;
  Writer: TStreamWriter;
  field:TField;
  date:Tdate;
  str :String;
begin

  if FileExists(FileName) then
    exit;

  Writer := TStreamWriter.Create(FileName, true, TEncoding.UTF8);
  str:=
  ' select'
  +'  per.national_id, per.last_name,per.first_name ,per.job from'
  +'  seminar_person sp left outer join'
  +'  person per on sp.fk_person_serial=per.serial_number'
  +'  where sp.fk_seminar_serial= :seminarSerial';

  qr:= TksQuery.Create(cn,str);
  try
    qr.close;
    qr.ParamByName('SeminarSerial').Value:=SeminarSerial;
    qr.open;

//    writer.Write('National_id ; Last_name ; first_name');
//    writer.WriteLine();
    while not qr.Eof do begin
     writer.Write( qr.FieldByName('National_id').AsString +' ; ');
     writer.Write( qr.FieldByName('Last_name').AsString   +' ; ');
     writer.write( qr.FieldByName('first_name').AsString  +' ; ');
     writer.write( qr.FieldByName('job').AsString );
     writer.WriteLine();
     qr.Next;
    end;
   finally
    qr.Free;
    Writer.Free();
  end;



end;


End.
