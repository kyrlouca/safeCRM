unit M_Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.Buttons, Vcl.ExtCtrls,
  RzPanel, RzSplit, Vcl.StdCtrls, Vcl.Menus;

type
  TM_mainFRM = class(TForm)
    RzSizePanel1: TRzSizePanel;
    PanelButtonsBTN: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ButtonsPNL: TPanel;
    Panel1: TPanel;
    BitBtn1: TRzBitBtn;
    RzSizePanel2: TRzSizePanel;
    LoginBTN: TRzBitBtn;
    Button1: TButton;
    MainMenu1: TMainMenu;
    ab1: TMenuItem;
    Hawb1: TMenuItem;
    Customers2: TMenuItem;
    ables1: TMenuItem;
    ExchangeRates1: TMenuItem;
    User1: TMenuItem;
    ChangePassword1: TMenuItem;
    System1: TMenuItem;
    Security1: TMenuItem;
    UserSecurity1: TMenuItem;
    BaseTables1: TMenuItem;
    Countries2: TMenuItem;
    Params1: TMenuItem;
    EmailSMSmessages1: TMenuItem;
    XMLparameters2: TMenuItem;
    SystemParameters1: TMenuItem;
    Help1: TMenuItem;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Countries2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  M_mainFRM: TM_mainFRM;

implementation

{$R *.dfm}

uses G_generalProcs, M_params, M_Company;

procedure TM_mainFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TM_mainFRM.Button1Click(Sender: TObject);
begin
gpShowModal(TM_paramsFRM);
end;

procedure TM_mainFRM.Countries2Click(Sender: TObject);
begin
gpShowModal(TM_CompanyFRM);
end;

end.
