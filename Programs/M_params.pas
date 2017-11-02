unit M_params;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, DBAccess, IBC,
  MemDS, vcl.wwspeedbutton, vcl.wwdbnavigator, Vcl.ExtCtrls, vcl.wwclearpanel,
  Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid;

type
  TM_paramsFRM = class(TForm)
    TableSQL: TIBCQuery;
    IBCDataSource1: TIBCDataSource;
    wwDBGrid1: TwwDBGrid;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    ReadOnlyTrans: TIBCTransaction;
    UpdateTrans: TIBCTransaction;
    Button1: TButton;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  public
    { Public declarations }
  end;

var
  M_paramsFRM: TM_paramsFRM;

implementation

{$R *.dfm}

uses U_Database, G_KyrSQL;

procedure TM_paramsFRM.Button1Click(Sender: TObject);
var
qr:TksQuery;
name:String;
begin
  try
    qr:=TksQuery.Create(cn,'select * from person');
    qr.Open;
    name:=qr.FieldByName('first_name').AsString;
    showMessage('name'+name);
  finally
    qr.Free;

  end;

end;

procedure TM_paramsFRM.FormActivate(Sender: TObject);
begin
if not TableSQL.Active then
  TableSQL.open;
end;

procedure TM_paramsFRM.FormCreate(Sender: TObject);
begin
cn:=U_databaseFRM.DataConnection;
end;

end.
