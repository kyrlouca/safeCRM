unit S_LoadDocs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL, RzButton, RzPanel, vcl.wwcheckbox, Vcl.ExtDlgs;
type
  TS_LoadDocsFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Nav1: TwwDBNavigator;
    Nav1Prior: TwwNavButton;
    Nav1Next: TwwNavButton;
    Nav1Insert: TwwNavButton;
    Nav1Delete: TwwNavButton;
    Nav1Post: TwwNavButton;
    Nav1Cancel: TwwNavButton;
    Panel3: TPanel;
    TableSRC: TDataSource;
    SearchFieldFLD: TwwIncrementalSearch;
    Panel5: TPanel;
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
    wwDBEdit1: TwwDBEdit;
    Label5: TLabel;
    TableSQLPOLY_MONO: TWideStringField;
    TableSQLCODE_KEY: TWideStringField;
    TableSQLDOC_NAME: TWideStringField;
    TableSQLDOC_BLOB: TBlobField;
    SavetoDB: TRzBitBtn;
    Button1: TButton;
    OD1: TOpenDialog;
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure SavetoDBClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  procedure WriteStreamToDatabase(Const CodeKey:String;Const FileName :String; Const MonoPOly:String);
  procedure SaveToFile(Const CodeKey:String;Const FileName :String; Const MonoPOly:String);
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



procedure TS_LoadDocsFRM.SaveToFile(Const CodeKey:String;Const FileName :String; Const MonoPOly:String);
var
//  BlobField: TField;
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
 WriteStreamToDatabase(codeKey,filename,'Y');

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
