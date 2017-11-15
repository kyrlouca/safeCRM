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
    SystemParameters1: TMenuItem;
    Help1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    ables2: TMenuItem;
    Image1: TImage;
    N6: TMenuItem;
    HelpFile1: TMenuItem;
    Reports1: TMenuItem;
    Reminders1: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Countries2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure ExchangeRates1Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure HelpFile1Click(Sender: TObject);
    procedure Reminders1Click(Sender: TObject);
    procedure LoginBTNClick(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure SystemParameters1Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
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
  U_Database, M_CostType, L_Seminar, M_Instructor, V_Seminar, M_Instruct,
  p_attendance, H_Help, R_Reminders, I_invoiceSeminar, M_CompanyNew,
  L_Companies, R_invoices;

procedure TM_mainFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TM_mainFRM.Button1Click(Sender: TObject);
begin
//gpShowModal(TM_paramsFRM);
gpShowModal(TP_attendanceFRM);
end;

procedure TM_mainFRM.Countries2Click(Sender: TObject);
begin
//gpShowModal(TM_CompanyFRM);
gpShowModal(TL_companiesFRM);
end;

procedure TM_mainFRM.ExchangeRates1Click(Sender: TObject);
begin
  gpShowModal(TL_SeminarFRM);
end;

procedure TM_mainFRM.HelpFile1Click(Sender: TObject);
begin
gpShowModal(TH_HelpFRM);

end;

procedure TM_mainFRM.LoginBTNClick(Sender: TObject);
begin
//TODO  Certificates
//TODO  only if student has more than %presence in ALL subjects (some students may attend a subject in another seminar)
//TODO  seminar has Status (intial, planned, completed, etc,)
//TODO   seminar-tabsheets save aux tables with ACCEPT button. Save on Close
//TODO Reports
//TODO companies used as persons (type=company) for invoice reasons
//TODO  system->allow delete an invoice!
//Cannot delete seminar if approved --> system change status
end;

procedure TM_mainFRM.N10Click(Sender: TObject);
begin
gpShowModal(TR_InvoicesFRM);
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

procedure TM_mainFRM.N6Click(Sender: TObject);
begin
gpShowModal(TP_attendanceFRM);

end;

procedure TM_mainFRM.N7Click(Sender: TObject);
begin
  gpShowModal(TI_InvoiceSeminarFRM);

end;

procedure TM_mainFRM.N9Click(Sender: TObject);
begin
//
end;

procedure TM_mainFRM.Reminders1Click(Sender: TObject);
begin
  gpShowModal(TR_remindersFRM);

end;

procedure TM_mainFRM.SpeedButton1Click(Sender: TObject);
begin
  gpShowModal(TL_SeminarFRM);

end;

procedure TM_mainFRM.SystemParameters1Click(Sender: TObject);
begin
  gpShowModal(TM_paramsFRM);
end;

end.
