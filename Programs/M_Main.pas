unit M_Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.Buttons, Vcl.ExtCtrls,
  RzPanel, RzSplit, Vcl.StdCtrls;

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
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  M_mainFRM: TM_mainFRM;

implementation

{$R *.dfm}

uses G_generalProcs, M_params;

procedure TM_mainFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TM_mainFRM.Button1Click(Sender: TObject);
begin
gpShowModal(TM_paramsFRM);
end;

end.
