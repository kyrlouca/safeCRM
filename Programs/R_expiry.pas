unit R_expiry;

interface

uses
  Windows, Messages, SysUtils,System.DateUtils,System.math, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc,
   DBAccess, IBC, MemDS, IBCError,  Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit,  DBGrids, wwdbdatetimepicker, ppDB, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppBands, ppProd, ppReport, ppComm, ppRelatv,
  ppCache, ppDBPipe,ppTypes,ppviewr, ppDesignLayer, ppParameter, RzButton,
  RzPanel, Vcl.Imaging.pngimage, VirtualTable, myChkBox;

type
  TReminderResult= Record
    daysLeft:Integer;
    DateFinal:Tdate;
  End;

  TR_ExpiryFRM = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    SeminarReminderSQL: TIBCQuery;
    SeminarReminderSRC: TDataSource;
    SeminarReminderPIP: TppDBPipeline;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    FromDateFLD: TwwDBDateTimePicker;
    PrintRBtn: TBitBtn;
    Panel11: TRzPanel;
    BitBtn1: TBitBtn;
    ppReport1: TppReport;
    ppParameterList3: TppParameterList;
    ppTitleBand3: TppTitleBand;
    ppLabel4: TppLabel;
    ppImage3: TppImage;
    ppHeaderBand3: TppHeaderBand;
    ppLine5: TppLine;
    ppLabel5: TppLabel;
    ddBand: TppDetailBand;
    ppDBText4: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppLine6: TppLine;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppDBText1: TppDBText;
    ppDBText5: TppDBText;
    ppLabel1: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppShape1: TppShape;
    ppVariable3: TppVariable;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText3: TppDBText;
    ppLabel13: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    SeminarReminderSQLDaysLeft: TIntegerField;
    DaysLeftLBL: TppDBText;
    SeminarReminderSQLSERIAL_NUMBER: TIntegerField;
    SeminarReminderSQLFK_SEMINAR_SERIAL: TIntegerField;
    SeminarReminderSQLDESCRIPTION: TWideStringField;
    SeminarReminderSQLREMINDER_MESSAGE: TWideStringField;
    SeminarReminderSQLAFTER_OR_BEFORE: TWideStringField;
    SeminarReminderSQLPERSON_OR_SEMINAR: TWideStringField;
    SeminarReminderSQLSTART_OR_END: TWideStringField;
    SeminarReminderSQLDAYS_OR_MONTHS: TWideStringField;
    SeminarReminderSQLNUMBER_OF_DAYS_MONTHS: TIntegerField;
    SeminarReminderSQLREMINDER_TYPE: TWideStringField;
    SeminarReminderSQLIS_COMPLETED: TWideStringField;
    SeminarReminderSQLDATE_TARGETED: TDateField;
    SeminarReminderSQLDATE_COMPLETED: TDateField;
    SeminarReminderSQLSEMINAR_NAME: TWideStringField;
    SeminarReminderSQLSEMINAR_SERIAL: TIntegerField;
    procedure BitBtn2Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure FormActivate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure FormCreate(Sender: TObject);
    procedure ppVariable2Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable3Calc(Sender: TObject; var Value: Variant);
    procedure VtFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure SeminarReminderSQLCalcFields(DataSet: TDataSet);
    procedure DaysLeftLBLPrint(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  Function FindActionDate(const DateSeminar:TDate;Const isAfter,isDayUnit:Boolean;Const NumberOfUnits:Integer):Tdate;
  Function CalcDaysLeft():TReminderResult;
  public
    { Public declarations }
    IN_SeminarSerial:Integer;
    IN_isCompleted:String;
    IN_HasDate:String;
    IN_DateRef:TDate;
    Procedure PrintTheSeminar();

  end;

var
  R_ExpiryFRM: TR_ExpiryFRM;

implementation

uses U_Database, G_SFCommonProcs, G_KyrSQL;


{$R *.DFM}





procedure TR_ExpiryFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TR_ExpiryFRM.BitBtn2Click(Sender: TObject);
begin
close;

end;




procedure TR_ExpiryFRM.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  (sender as TppReport).PreviewForm.WindowState := wsMaximized;
  TppViewer((sender as TppReport).PreviewForm.Viewer).ZoomSetting := zs100Percent;

end;


procedure TR_ExpiryFRM.ppVariable1Calc(Sender: TObject; var Value: Variant);
begin
// value:=vt.FieldByName('DaysCalc').AsInteger;
end;

procedure TR_ExpiryFRM.ppVariable2Calc(Sender: TObject; var Value: Variant);
begin
// value:=vt.FieldByName('ActionDate').AsDateTime;

end;

procedure TR_ExpiryFRM.ppVariable3Calc(Sender: TObject; var Value: Variant);
begin
   value:=IN_DateRef;
end;

procedure TR_ExpiryFRM.RzBitBtn1Click(Sender: TObject);
begin
  close;
end;




procedure TR_ExpiryFRM.SeminarReminderSQLCalcFields(DataSet: TDataSet);
var
  days:integer;
begin
  Days:= Trunc(Dataset.FieldByName('date_targeted').AsDateTime - IN_DateRef);
  Dataset.FieldByName('daysLeft').AsInteger:=days;
end;

procedure TR_ExpiryFRM.VtFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  accept := Dataset.FieldByName('DaysCalc').asInteger >= 0;
end;

Function TR_ExpiryFRM.CalcDaysLeft():TReminderResult;
begin

end;



Function TR_ExpiryFRM.FindActionDate(const DateSeminar:TDate;Const isAfter,isDayUnit:Boolean;Const NumberOfUnits:Integer):Tdate;
var
  mySign:Integer;
  DateReminder:TDate;
begin
  if isAfter then
    mySign:=1
  else
    mySign:=-1;

  try
    if IsDayUnit then
      DateReminder:= IncDay( DateSeminar, mySign * NumberOfUnits)
    else
      DateReminder:= IncMonth( DateSeminar, mySign * NumberOFUnits);

    Result:=Trunc( DateREminder);
  except
    result:=EncodeDate(1900,01,01);
  end;


end;


procedure TR_ExpiryFRM.DaysLeftLBLPrint(Sender: TObject);
begin
  if (SeminarReminderSQL.FieldByName('DaysLeft').AsInteger<8)
  and (SeminarReminderSQL.FieldByName('is_completed').AsString<>'Y') then
  begin
    DaysLeftLBL.Font.Color:=clRed;
    DaysLeftLBL.Font.Size:=12;
  end else begin
    DaysLeftLBL.Font.Color:=clBlack;
    DaysLeftLBL.Font.Size:=9;

  end;
end;

procedure TR_ExpiryFRM.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
Text:= 'Reference Date :'+ FromDateFLD.Text;

end;

Procedure TR_ExpiryFRM.PrintTheSeminar();

Var
   FromDate:TDateTime;
   DaysLeft:integer;
begin

fromDate:=FromDateFLD.Date;

  if IN_isCompleted='C' then begin
     SeminarReminderSQL.AddWhere('is_completed = ''Y'' ');
  end else if IN_isCompleted='P' then begin
    SeminarReminderSQL.AddWhere('is_completed = ''N'' ');
  end;

  if IN_SeminarSerial >0  then begin
    SeminarReminderSQL.AddWhere('fk_seminar_serial = :seminarSerial');
  end;

  if IN_HasDate ='D' then begin
      SeminarReminderSQL.AddWhere('Date_targeted is not null');
  end else if IN_HasDate ='N' then begin
      SeminarReminderSQL.AddWhere('Date_targeted is null');
  end;

  if SeminarReminderSQL.FindParam('SeminarSerial')<>nil then begin
    SeminarReminderSQL.ParamByName('seminarSerial').Value:=IN_SeminarSerial;
  end;
 SeminarReminderSQL.ParamByName('DateRef').AsDate:= IN_DateRef;

  SeminarReminderSQL.Open;
     PpReport1.Print;

end;


procedure TR_ExpiryFRM.FormActivate(Sender: TObject);
begin

if (Trim(FromDateFLD.text)='') then
   FromDateFLD.Date:=date;

end;


procedure TR_ExpiryFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;


end.
