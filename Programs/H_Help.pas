unit H_Help;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RzPanel,
  Vcl.Buttons, Vcl.ComCtrls, vcl.wwriched, RzDlgBtn, RzButton;

type
  TH_HelpFRM = class(TForm)
    RzPanel1: TRzPanel;
    RzPanel3: TRzPanel;
    HelpFDL: TwwDBRichEdit;
    RzPanel2: TRzPanel;
    RzButton1: TRzButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure RzButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IN_RtfTExt:String;
  end;

var
  H_HelpFRM: TH_HelpFRM;

implementation

{$R *.dfm}

procedure TH_HelpFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TH_HelpFRM.FormActivate(Sender: TObject);
begin
HelpFDL.SetRtfText(IN_RtfTExt);

end;

procedure TH_HelpFRM.RzButton1Click(Sender: TObject);
begin
close;
end;

end.
