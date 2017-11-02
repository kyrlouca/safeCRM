unit U_Database;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBAccess, IBC, MemDS, IBCError, Db, DASQLMonitor, IBCSQLMonitor;

type

  TU_databaseFRM = class(TDataModule)
    DataConnection: TIBCConnection;
    ReadOnlyTrans: TIBCTransaction;
    UpdateTrans: TIBCTransaction;
    IBCSQLMonitor1: TIBCSQLMonitor;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ConnectToDatabase;
//    procedure ConnectToCabImage;
//    function OpenFile(const InFileName: string; var InFile: TextFile): Boolean;
  end;

var
  U_databaseFRM: TU_databaseFRM;

implementation

{$R *.DFM}

procedure TU_databaseFRM.ConnectToDatabase;
var
  FBClientPath: string;
  InFile: TextFile;
  LIne: string;
  ServerIP, DatabasePath: string;
  TextArray: array[1..3] of string;
  I: Integer;

  LStrings: TStringList;
  FileName: string;
begin

  FileName := ExtractFilePath(Application.ExeName) + 'DatabaseParams.txt';
  LStrings := TStringList.Create;
  try
    LStrings.Loadfromfile(FileName);
    if LStrings.Count < 2 then
    begin
      raise exception.create('File Must contain at least 2 lines');
    end;
    ServerIP := LStrings[0];
    DatabasePath := LStrings[1];
  finally
    FreeAndNil(LStrings);
  end;


  DataConnection.Server := ServerIP;
  DataConnection.database := DatabasePath;

  FbClientPath := ExtractFileDir(ExtractFilePath(Application.EXEName));
  FbClientPath := FBClientPath + '\gds32.dll';


  DataConnection.ClientLibrary := FBClientPath;
  if DataConnection.connected then
    DataConnection.Disconnect;

  DataConnection.Connect;
  if not DataConnection.Connected then
    ShowMessage('Cannot connect');

end;



procedure TU_databaseFRM.DataModuleCreate(Sender: TObject);
begin
  ConnectToDatabase;

end;

end.

