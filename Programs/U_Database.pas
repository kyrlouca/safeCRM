unit U_Database;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBAccess, IBC, MemDS, IBCError, Db, DASQLMonitor, IBCSQLMonitor;

type

  TU_databaseFRM = class(TDataModule)
    DataConnection: TIBCConnection;
    DatabaseUpdateTrans: TIBCTransaction;
    IBCSQLMonitor1: TIBCSQLMonitor;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure CheckStatusActivity();
    procedure CheckStatusNormal();
  public
    { Public declarations }
     cn:TIBCConnection;
    procedure ConnectToDatabase;

  end;

var
  U_databaseFRM: TU_databaseFRM;

implementation

{$R *.DFM}

uses G_KyrSQL;

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
 CheckStatusActivity();
 CheckStatusNormal();
end;


procedure TU_databaseFRM.CheckStatusActivity();
begin
  ConnectToDatabase;
  cn:=DataConnection;

   if ksCountRecSQL(cn,'select STATUS from STATUS_ACTIVITY where STATUS= :VAL',['P'])=0 then begin
      ksExecSQLVar(cn,'insert into STATUS_ACTIVITY (STATUS, DESCRIPTION,description_Greek) values( :ST,:DS,:Gr)',['P','Prepared','Σε Προετοιμασία']);
   end;

   if ksCountRecSQL(cn,'select STATUS from STATUS_ACTIVITY where STATUS= :VAL',['A'])=0 then begin
      ksExecSQLVar(cn,'insert into STATUS_ACTIVITY (STATUS, DESCRIPTION,description_Greek) values( :ST,:DS,:Gr)',['A','ANAD Approved','Έγκριση ΑΝΑΔ']);
   end;

   if ksCountRecSQL(cn,'select STATUS from STATUS_ACTIVITY where STATUS= :VAL',['F'])=0 then begin
      ksExecSQLVar(cn,'insert into STATUS_ACTIVITY (STATUS, DESCRIPTION,description_Greek) values( :ST,:DS,:Gr)',['F','Completed','Ολοκληρωμένο']);
   end;



end;

procedure TU_databaseFRM.CheckStatusNormal();
begin
  ConnectToDatabase;
  cn:=DataConnection;

   if ksCountRecSQL(cn,'select nt.CATEGORY_CODE from SEM_CATEGORY nt where nt.CATEGORY_CODE= ''N'' ',[])=0 then begin
      ksExecSQLVar(cn,'INSERT INTO SEM_CATEGORY (CATEGORY_CODE,ORDER_NUMBER, DESCRIPTION, DESCRIPTION_GREEK) VALUES (:T,:o,:D,:DG)',['N',0,'Normal','Κανονικό']);
   end;

   if ksCountRecSQL(cn,'select nt.CATEGORY_CODE from SEM_CATEGORY nt where nt.CATEGORY_CODE= ''F'' ',[])=0 then begin
      ksExecSQLVar(cn,'INSERT INTO SEM_CATEGORY (CATEGORY_CODE,ORDER_NUMBER, DESCRIPTION, DESCRIPTION_GREEK) VALUES (:T,:O,:D,:DG)',['F',1,'Future','Μελλοντικό']);
   end;

   if ksCountRecSQL(cn,'select nt.CATEGORY_CODE from SEM_CATEGORY nt where nt.CATEGORY_CODE= ''M'' ',[])=0 then begin
      ksExecSQLVar(cn,'INSERT INTO SEM_CATEGORY (CATEGORY_CODE,ORDER_NUMBER, DESCRIPTION, DESCRIPTION_GREEK) VALUES (:T,:o,:D,:DG)',['M',2,'Monitor','Παρακολούθηση']);
   end;




end;




end.

