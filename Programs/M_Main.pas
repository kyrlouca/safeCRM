unit M_Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.Buttons, Vcl.ExtCtrls,
  RzPanel, RzSplit, Vcl.StdCtrls, Vcl.Menus, Vcl.Imaging.pngimage, RzForms,
  Data.DB, MemDS, VirtualTable, Vcl.ExtDlgs, DBAccess, IBC, Vcl.DBCtrls,
  Vcl.ComCtrls, vcl.wwriched;

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
    HelpFile1: TMenuItem;
    Reports1: TMenuItem;
    Reminders1: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    vt: TVirtualTable;
    Button2: TButton;
    qr: TIBCQuery;
    IBCDataSource1: TIBCDataSource;
    CODE: TWideStringField;
    qrINT_1: TIntegerField;
    qrINT_2: TIntegerField;
    qrSTR_1: TWideStringField;
    qrSTR_2: TWideStringField;
    qrSTR_3: TWideStringField;
    qrSTR_4: TWideStringField;
    qrSTR_5: TWideStringField;
    qrSTR_6: TWideStringField;
    qrFLOAT_1: TFloatField;
    qrFLOAT_2: TFloatField;
    qrDESCRIPTION: TWideStringField;
    qrANAD_PICTURE: TBlobField;
    OpenPictureDialog1: TOpenPictureDialog;
    MainHelpRE: TwwDBRichEdit;
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
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure UserSecurity1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Global_UserID:String;
  end;

var
  M_mainFRM: TM_mainFRM;

implementation

{$R *.dfm}

uses G_generalProcs, M_params, M_Company, M_Student, M_Venue, M_seminarType,
  U_Database, M_CostType, L_Seminar, M_Instructor, V_Seminar, M_Instruct,
  p_attendance, H_Help, R_Reminders, I_invoiceSeminar, M_CompanyNew,
  L_Companies, R_invoices, V_SeminarStages, L_reminders, R_expiry,
  G_SFCommonProcs, SN_Login, SN_User;

procedure TM_mainFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;


procedure TM_mainFRM.Button1Click(Sender: TObject);
var
  ch1,ch2:Char;
  str1,str2:String;
  alpha:Char;
  i:integer;
  j:integer;

begin

  str1:='ÌÁrº¢';
  str1:='náñ¼ßá';
  If AllLower(str1) then
    showMessage('all Upper');
  exit;


  STR2:=  G_SFCommonProcs.RemoveAccents(str1);
  ShowMessage(str2);
  exit;

  alpha:='Á';
//  ch:=chr(Ord(char('Á')));

  ch1:=chr(Ord(char('Ù')));
  ch2:=chr(Ord(char('¿')));



  i:=Ord(ch1);
  j:=Ord(ch2);
  ShowMessage('diff='+intToStr(i-j));
  str1:=IntToStr(i);
  str2:=intTOStr(j);
//  Str:=ch+'Â';
  showMessage(str1+'-'+str2);
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
vAR
  Frm:TH_HelpFRM;
begin
  frm := TH_HelpFRM.Create(nil);
  try
    frm.IN_RichEdit:=MainHelpRE;
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TM_mainFRM.LoginBTNClick(Sender: TObject);
begin
gpShowModal(TSN_LoginFRm);
//TODO  Certificates
//TODO  seminar has Status (intial, planned,ARCHIVED (for expiry) ,completed, etc,)
//TODO   seminar-tabsheets save aux tables with ACCEPT button. Save on Close
//TODO  system->allow delete an invoice!
//TODO Cannot delete seminar if approved --> system change status
//TODO sort customer by last name in certificates, invoices, reports, list
//TODO select customer ONLY when is_company='Y'
end;

procedure TM_mainFRM.N10Click(Sender: TObject);
begin
gpShowModal(TR_InvoicesFRM);
end;

procedure TM_mainFRM.N11Click(Sender: TObject);
begin

gpShowModal(TV_SeminarStagesFRM);
end;

procedure TM_mainFRM.N12Click(Sender: TObject);
begin
  gpShowModal(TR_ExpiryFRM);

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
  gpShowModal(TL_RemindersFRM);

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

procedure TM_mainFRM.UserSecurity1Click(Sender: TObject);
begin
gpShowModal(TSN_UserFRM);
end;

end.
