unit M_params;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, DBAccess, IBC,
  MemDS, vcl.wwspeedbutton, vcl.wwdbnavigator, Vcl.ExtCtrls, vcl.wwclearpanel,
  Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, RzPanel, RzRadGrp, Vcl.Mask,
  vcl.Wwdbedit, Vcl.Buttons, RzButton;

type
  TLabelArray = Array of Tlabel;
  TFieldArray = Array of TwwDbEdit;
  TStringArray= Array of String;
  TM_paramsFRM = class(TForm)
    ReadOnlyTrans: TIBCTransaction;
    UpdateTrans: TIBCTransaction;
    Button1: TButton;
    FindGeneralParameterSQL: TIBCQuery;
    ButtonsPNL: TPanel;
    Panel1: TPanel;
    BitBtn1: TRzBitBtn;
    Panel2: TPanel;
    TitleLbl: TLabel;
    RzPanel1: TRzPanel;
    OptionGRP: TRzRadioGroup;
    GroupBox1: TGroupBox;
    PIdLbl: TLabel;
    PS1Lbl: TLabel;
    PI1Lbl: TLabel;
    PF1Lbl: TLabel;
    PS2LBL: TLabel;
    PS3LBL: TLabel;
    PS4LBL: TLabel;
    PS5LBL: TLabel;
    PS6LBL: TLabel;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    VS1FLD: TwwDBEdit;
    VI1FLD: TwwDBEdit;
    VF1FLD: TwwDBEdit;
    ParamFLD: TwwDBEdit;
    VS2FLD: TwwDBEdit;
    VS3FLD: TwwDBEdit;
    VS4FLD: TwwDBEdit;
    VS5FLD: TwwDBEdit;
    VS6FLD: TwwDBEdit;
    File1FLD: TEdit;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    FindParamSRC: TIBCDataSource;
    FindGeneralParameterSQLCODE: TStringField;
    FindGeneralParameterSQLINT_1: TIntegerField;
    FindGeneralParameterSQLINT_2: TIntegerField;
    FindGeneralParameterSQLSTR_1: TStringField;
    FindGeneralParameterSQLSTR_2: TStringField;
    FindGeneralParameterSQLSTR_3: TStringField;
    FindGeneralParameterSQLSTR_4: TStringField;
    FindGeneralParameterSQLSTR_5: TStringField;
    FindGeneralParameterSQLSTR_6: TStringField;
    FindGeneralParameterSQLFLOAT_1: TFloatField;
    FindGeneralParameterSQLFLOAT_2: TFloatField;
    FindGeneralParameterSQLDESCRIPTION: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure OptionGRPClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
    procedure ShowOneRecord(RecordIndex:Integer);
  procedure ShowXLabels(LabelValueLine:TstringArray; LabelArray:TlabelArray;FieldsArray:TFieldArray);
  public
    { Public declarations }
  end;

var
  M_paramsFRM: TM_paramsFRM;

implementation

{$R *.dfm}

uses U_Database, G_KyrSQL, M_Main;

procedure TM_paramsFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TM_paramsFRM.Button1Click(Sender: TObject);
var
qr:TksQuery;
name:String;
begin
    qr:=TksQuery.Create(cn,'select * from person');
  try
    qr.Open;
    name:=qr.FieldByName('first_name').AsString;
    showMessage('name'+name);
  finally
    qr.Free;

  end;

end;

procedure TM_paramsFRM.FormActivate(Sender: TObject);
begin
ShowOneRecord(0);
end;

procedure TM_paramsFRM.FormCreate(Sender: TObject);
begin
cn:=U_databaseFRM.DataConnection;
end;

procedure TM_paramsFRM.OptionGRPClick(Sender: TObject);
begin

  ShowOneRecord(OptionGRP.ItemIndex);
end;



procedure TM_paramsFRM.RzBitBtn1Click(Sender: TObject);
begin
self.FindGeneralParameterSQL.Cancel;
end;

procedure TM_paramsFRM.RzBitBtn2Click(Sender: TObject);
begin
        if self.FindGeneralParameterSQL.State in [dsEdit,dsInsert] then begin
              self.FindGeneralParameterSQL.Post ;
        end;

end;

procedure TM_paramsFRM.ShowXLabels(LabelValueLine:TstringArray; LabelArray:TlabelArray;FieldsArray:TFieldArray);


Var
        TheLabel:Tlabel;
        TheField:TwwDBEdit;
        LabelCaption:String;
        i:integer;
        key:string;

begin
        if self.FindGeneralParameterSQL.State in [dsEdit,dsInsert] then begin // to save previoius record
              self.FindGeneralParameterSQL.Post ;
        end;

        Key:=LabelValueLine[0];

        With Self.FindGeneralParameterSQL do begin
          Close;
          ParamByName('Code').Value:=Key;
          Open;
          If Self.FindGeneralParameterSQL.RecordCount>0 then begin
                Edit;
          end else begin
                Insert;
                FieldByName('Code').Value:=Key;
          end;
       end;


       for i:= Low(LabelValueLine)+1 to High(LabelValueLine) do begin

           LabelCaption:=LabelValueLine[i];   // find the caption of the label in the array
           TheLabel:=LabelArray[I];
           TheField:=FieldsArray[I];
          iF LabelCaption>'' then begin
                TheLabel.Visible:=True;
                TheLabel.Caption:=LabelCaption;
                TheField.Visible:=true;
          end else begin
                TheLabel.Visible:=False;
                TheField.Visible:=False;
          end;
       end;



end;

procedure TM_paramsFRM.ShowOneRecord(RecordIndex:Integer);
Const
//        LabelValuesArray:Array[0..4,0..8] of String = (
        LabelValuesArray:Array[0..4] of TStringArray = (
                ['T00','','','','','','','',''],
                ['T01','Reports Title Main','','','Reports Title Second Line','Image File as Invoice logo','Report Footer 1','Report Footer 2',''],
                ['T02','Unused','','','','','','',''],
                ['T03','','VAT Rate','','','','','',''],
                ['T04','','','','','','','','']
                );

Var
        I:Integer;
        max:integer;
        LebelValueLine:Array of String;
        line:Array of String;
        LabelArray : TLabelArray;
        FieldsArray :TFieldArray;

begin
       //zero Element is used for the key
       LabelArray :=[ PIdLbl,Ps1Lbl  ,pf1lbl, pi1lbl,ps2lbl, ps3lbl, ps4lbl, ps5lbl,ps6lbl ];
       FIeldsArray:=[ ParamFLD,VS1FLD ,VF1FLD, VI1FLD,vs2FLD, vs3FLD, vs4FLD, Vs5FLD,Vs6FLD];


       ShowXLabels(LabelValuesArray[RecordIndex],LabelArray,FieldsArray);


end;


end.
