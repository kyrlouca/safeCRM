unit S_LoadDocs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL, RzButton, RzPanel, vcl.wwcheckbox, Vcl.ExtDlgs, vcl.wwbutton;
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
    StationIdFLD: TwwDBEdit;
    TableSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    Label4: TLabel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    TableSQLPOLY_MONO: TWideStringField;
    TableSQLCODE_KEY: TWideStringField;
    TableSQLDOC_NAME: TWideStringField;
    TableSQLDOC_BLOB: TBlobField;
    SavetoDB: TRzBitBtn;
    Button1: TButton;
    OD1: TOpenDialog;
    wwButton1: TwwButton;
    Panel2: TRzPanel;
    RzPanel2: TRzPanel;
    wwIncrementalSearch1: TwwIncrementalSearch;
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
    wwCheckBox1: TwwCheckBox;
    wwCheckBox2: TwwCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure SavetoDBClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure wwButton1Click(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  procedure WriteStreamToDatabase(Const CodeKey:String;Const FileName :String; Const MonoPOly:String);
  procedure SaveToFile(Const CodeKey:String;Const FileName :String; Const MonoPOly:String);
  procedure SaveToFileXX(Const CodeKey:String;Const FileName :String; Const MonoPOly:String);
  procedure SaveXX(Const CodeKey:String;Const FileName :String; Const MonoPOly:String);
  function FindHex(const FileName:String): Integer;

  public
    { Public declarations }
    MyInsertState:Boolean;
    IN_ACTION:String;
  end;

var
  S_LoadDocsFRM: TS_LoadDocsFRM;

implementation

uses   U_Database;

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
  dCount:intger;
begin
  goOn:=true;
  isPrev:=False;
  dCount:=0;
  AFile := TFileStream.Create(filename, fmOpenRead);
  BR := TBinaryReader.Create(AFile, TEncoding.Unicode, false);
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

  {
    // read a char and write it to the console
    AChar := BR.ReadChar;
    Writeln(AChar);
    // read a string and write it to the console
    AString := BR.ReadString;
    Writeln(AString);
  }
    BR.Close;
  finally

    BR.Free;
    AFile.Free;
  end;

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

procedure TS_LoadDocsFRM.SaveToFile(Const CodeKey:String;Const FileName :String; Const MonoPOly:String);
var
//  BlobField: TField;
  BlobField: TBlobField;
  BS: TStream;
  str2:String;
  qr:TksQuery;
  FS:TMemoryStream;

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

procedure TS_LoadDocsFRM.SaveXX(Const CodeKey:String;Const FileName :String; Const MonoPOly:String);
var
  BlobField: TBlobField;
  BS: TStream;
  str2:String;
  qr:TksQuery;
  FS:TMemoryStream;
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
      TBlobField(qr.FieldByName('doc_blob')).LoadFromFile(filename);
      qr.FieldByName('doc_name').AsString:=filename;
      qr.Post;

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
  finally
     qr.Free;
  end;
end;


procedure TS_LoadDocsFRM.SavetoDBClick(Sender: TObject);
var
  FileName:String;
  codeKey:String;
begin
  if not Od1.Execute then     begin
      showMessage('exit');
      Exit;
  end;
  filename :=od1.FileName;
  ShowMessage(filename);
  codeKEy:=TableSQL.FieldByName('code_key').AsString;
// WriteStreamToDatabase(codeKey,filename,'Y');
  saveXX(codeKey,filename,'Y');

end;


procedure TS_LoadDocsFRM.FormActivate(Sender: TObject);
begin
ksOpenTables([TableSQL])
end;

procedure TS_LoadDocsFRM.FormCreate(Sender: TObject);
begin
  cn:=  U_databaseFRM.DataConnection;
end;

procedure TS_LoadDocsFRM.Button1Click(Sender: TObject);
var
  fileName:String;
  codeKey:String;
  qr:TksQuery;
  str2:string;
  fpath:string;
  fname:string;
begin

  fileName:='C:\Data\DelphiProjects\Safe_CRM\documents\Mono_anadForms\temp.doc';
  codeKEy:=TableSQL.FieldByName('code_key').AsString;

  str2:='Select * from word_docs wd where wd.code_key = :CodeKey';
  qr:= TksQuery.Create(cn,str2);
  try
      qr.close;
      qr.ParamByName('CodeKey').Value:=CodeKey;
      qr.open;
      fileName:=qr.FieldByName('doc_name').AsString;
  finally
    qr.Free;
  end;

      fpath:=ExtractFilePath(filename);
      fname:=ExtractFileName(fileName);
      fname:='x_'+fname;
      fileName:=fpath+fname;

  SaveToFile(CodeKey,fileName,'P');
end;

End.
