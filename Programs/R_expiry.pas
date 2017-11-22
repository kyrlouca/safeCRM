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
    ppLabel3: TppLabel;
    DaysLeftLBL: TppDBText;
    SeminarReminderSQLPERSON_SERIAL: TIntegerField;
    SeminarReminderSQLSEMINAR_SERIAL: TIntegerField;
    SeminarReminderSQLTYPE_SERIAL: TIntegerField;
    SeminarReminderSQLHAS_EXPIRY: TWideStringField;
    SeminarReminderSQLEXPIRY_PERIOD: TIntegerField;
    SeminarReminderSQLDATE_COMPLETED: TDateField;
    SeminarReminderSQLFINDATE: TDateField;
    PersonSQL: TIBCQuery;
    PersonSRC: TDataSource;
    PersonSQLFK_SEMINAR_SERIAL: TIntegerField;
    PersonSQLATTENDANCE_STATUS: TWideStringField;
    PersonSQLIS_GUEST: TWideStringField;
    PersonSQLPERSON_SERIAL: TIntegerField;
    PersonSQLFK_COMPANY_SERIAL: TIntegerField;
    PersonSQLLAST_NAME: TWideStringField;
    PersonSQLFIRST_NAME: TWideStringField;
    PersonSQLFIRST_LAST_NAME: TWideStringField;
    PersonSQLLAST_FIRST_NAME: TWideStringField;
    PersonSQLNATIONAL_ID: TWideStringField;
    PersonSQLNICKNAME: TWideStringField;
    PersonSQLOCCUPATION: TWideStringField;
    PersonSQLPHONE_MOBILE: TWideStringField;
    PersonSQLPHONE_FIXED: TWideStringField;
    PersonSQLPHONE_ALTERNATE: TWideStringField;
    PersonSQLFAX: TWideStringField;
    PersonSQLEMAIL: TWideStringField;
    PersonSQLEMAIL_2: TSmallintField;
    PersonSQLADDRESS: TWideStringField;
    PersonSQLADDRESS_STREET: TWideStringField;
    PersonSQLADDRESS_POST_CODE: TWideStringField;
    PersonSQLADDRESS_CITY: TWideStringField;
    PersonSQLADDRESS_DISTRICT: TWideStringField;
    PersonSQLDATE_STARTED: TDateField;
    PersonSQLDATE_BIRTH: TDateField;
    PersonSQLDATE_USER: TDateField;
    PersonSQLLIST_SOURCE: TWideStringField;
    PersonSQLFACEBOOK: TWideStringField;
    PersonSQLWEBSITE: TWideStringField;
    PersonSQLTWITTER: TWideStringField;
    PersonSQLSTATUS_ACTIVE: TWideStringField;
    PersonSQLSEX: TWideStringField;
    PersonSQLIS_COMPANY: TWideStringField;
    PersonSQLCOMPANY_OWNER: TWideStringField;
    PersonSQLCOMPANY_CONTACT: TWideStringField;
    PersonSQLCOMPANY_REGISTRATION_DATE: TDateField;
    PersonSQLPHONE_CONTACT: TWideStringField;
    PersonSQLSEMINAR_SERIAL: TIntegerField;
    PersonSQLSEMINAR_NAME: TWideStringField;
    PersonSQLSEMINAR_DATE_STARTED: TDateField;
    PersonSQLSEMINAR_HAS_EXPIRY: TWideStringField;
    PersonSQLSEMINAR_EXPIRY_PERIOD: TIntegerField;
    PersonPIP: TppDBPipeline;
    SeminarReminderSQLdaysLeft: TIntegerField;
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
    procedure SeminarReminderSQLCalcFields(DataSet: TDataSet);
    procedure DaysLeftLBLPrint(Sender: TObject);
    procedure PrintRBtnClick(Sender: TObject);
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
//  Days:= Trunc(Dataset.FieldByName('date_targeted').AsDateTime - IN_DateRef);
//  Dataset.FieldByName('daysLeft').AsInteger:=days;
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
{
  if (SeminarReminderSQL.FieldByName('DaysLeft').AsInteger<8)
  and (SeminarReminderSQL.FieldByName('is_completed').AsString<>'Y') then
  begin
    DaysLeftLBL.Font.Color:=clRed;
    DaysLeftLBL.Font.Size:=12;
  end else begin
    DaysLeftLBL.Font.Color:=clBlack;
    DaysLeftLBL.Font.Size:=9;

  end;
  }
end;

procedure TR_ExpiryFRM.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
Text:= 'Reference Date :'+ FromDateFLD.Text;

end;

procedure TR_ExpiryFRM.PrintRBtnClick(Sender: TObject);
begin

PrintTheSeminar;

end;

Procedure TR_ExpiryFRM.PrintTheSeminar();

Var
   FromDate:TDateTime;
   DaysLeft:integer;
begin

//fromDate:=FromDateFLD.Date;

  SeminarReminderSQL.Open;
  PErsonSQL.Open;
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
