unit M_Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.Buttons, Vcl.ExtCtrls,
  RzPanel, RzSplit, Vcl.StdCtrls, Vcl.Menus, Vcl.Imaging.pngimage, RzForms;

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
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    ables2: TMenuItem;
    RzFormShape1: TRzFormShape;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Countries2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  M_mainFRM: TM_mainFRM;

implementation

{$R *.dfm}

uses G_generalProcs, M_params, M_Company, M_Student, M_Venue, M_seminarType,
  U_Database, M_CostType, L_Seminar, M_Instructor, V_Seminar, M_Instruct;

procedure TM_mainFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TM_mainFRM.Button1Click(Sender: TObject);
begin
//gpShowModal(TM_paramsFRM);
gpShowModal(TM_InstructFRM);
end;

procedure TM_mainFRM.Countries2Click(Sender: TObject);
begin
gpShowModal(TM_CompanyFRM);
end;

procedure TM_mainFRM.N1Click(Sender: TObject);
begin
gpShowModal(TM_StudentFRM);

end;

procedure TM_mainFRM.N2Click(Sender: TObject);
begin
gpShowModal(TM_venuFRM);

end;

procedure TM_mainFRM.N3Click(Sender: TObject);
begin
  gpShowModal(TM_SeminarTypeFRM);

end;

procedure TM_mainFRM.N4Click(Sender: TObject);
begin
  gpShowModal(TM_CostTypeFRM);

end;

procedure TM_mainFRM.N5Click(Sender: TObject);
begin
  gpShowModal(TM_InstructorFRM);

end;

procedure TM_mainFRM.SpeedButton1Click(Sender: TObject);
begin
  gpShowModal(TL_SeminarFRM);

end;

end.
