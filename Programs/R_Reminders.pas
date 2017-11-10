unit R_Reminders;

interface

uses
  Windows, Messages, SysUtils,System.DateUtils,System.math, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc,
   DBAccess, IBC, MemDS, IBCError,  Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit,  DBGrids, wwdbdatetimepicker, ppDB, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppBands, ppProd, ppReport, ppComm, ppRelatv,
  ppCache, ppDBPipe,ppTypes,ppviewr, ppDesignLayer, ppParameter, RzButton,
  RzPanel, Vcl.Imaging.pngimage, VirtualTable;

type
  TReminderResult= Record
    daysLeft:Integer;
    DateFinal:Tdate;
  End;

  TR_remindersFRM = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    SeminarReminderSQL: TIBCQuery;
    SeminarReminderSRC: TDataSource;
    SeminarReminderPIP: TppDBPipeline;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    FromDateFLD: TwwDBDateTimePicker;
    Label1: TLabel;
    ToDateFLD: TwwDBDateTimePicker;
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
    ppDetailBand3: TppDetailBand;
    ppDBText4: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppLine6: TppLine;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppDBText1: TppDBText;
    SeminarReminderSQLSERIAL_NUMBER: TIntegerField;
    SeminarReminderSQLFK_SEMINAR_SERIAL: TIntegerField;
    SeminarReminderSQLDESCRIPTION: TWideStringField;
    SeminarReminderSQLREMINDER_MESSAGE: TWideStringField;
    SeminarReminderSQLAFTER_OR_BEFORE: TWideStringField;
    SeminarReminderSQLPERSON_OR_SEMINAR: TWideStringField;
    SeminarReminderSQLSTART_OR_END: TWideStringField;
    SeminarReminderSQLDAYS_OR_MONTHS: TWideStringField;
    SeminarReminderSQLNUMBER_OF_DAYS_MONTHS: TIntegerField;
    SeminarReminderSQLSEMINAR_NAME: TWideStringField;
    SeminarReminderSQLDATE_STARTED: TDateField;
    SeminarReminderSQLDATE_COMPLETED: TDateField;
    SeminarReminderSQLSTATUS: TWideStringField;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    Vt: TVirtualTable;
    ppVariable1: TppVariable;
    ppDBText5: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure FormActivate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure PrintRBtnClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  Function FindActionDate(const DateSeminar:TDate;Const isAfter,isDayUnit:Boolean;Const NumberOfUnits:Integer):Tdate;
  Function CalcDaysLeft(Const ReminderSerial:Integer):TReminderResult;
  public
    { Public declarations }
  end;

var
  R_remindersFRM: TR_remindersFRM;

implementation

uses U_Database, G_SFCommonProcs, G_KyrSQL;


{$R *.DFM}





procedure TR_remindersFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TR_remindersFRM.BitBtn2Click(Sender: TObject);
begin
close;

end;




procedure TR_remindersFRM.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  (sender as TppReport).PreviewForm.WindowState := wsMaximized;
  TppViewer((sender as TppReport).PreviewForm.Viewer).ZoomSetting := zs100Percent;

end;


procedure TR_remindersFRM.ppVariable1Calc(Sender: TObject; var Value: Variant);
begin
 value:=vt.FieldByName('DaysCalc').AsInteger;
end;

procedure TR_remindersFRM.RzBitBtn1Click(Sender: TObject);
begin
  close;
end;


Function TR_remindersFRM.CalcDaysLeft(Const ReminderSerial:Integer):TReminderResult;

var
  DateSeminar,DateReference:TDate;
  diff:Integer;
  isAfter,IsStartDate:Boolean;
  DaysNumber:integer;
  isDayUnit:Boolean;
begin
  isAfter:=vt.FieldByName('AFTER_OR_BEFORE').AsString='A';
  IsStartDate:=Vt.FieldByName('Start_or_end').AsString='S';
  IsDayUnit:=Vt.FieldByName('DAYS_OR_MONTHS').AsString='D';
  DaysNumber:=Vt.FieldByName('number_of_days_months').AsInteger;

  DateReference:=Date;


  if isStartDate then
      DateSeminar:=Vt.FieldByName('date_started').AsDateTime
  else
      DateSeminar:=Vt.FieldByName('date_Completed').AsDateTime;

    result.DateFinal:= FindActionDate(DateSeminar,isAfter,isDayUnit,DaysNumber);
    Result.daysLeft:=Floor(result.DateFinal) -  Floor(DateReference);
end;



Function TR_remindersFRM.FindActionDate(const DateSeminar:TDate;Const isAfter,isDayUnit:Boolean;Const NumberOfUnits:Integer):Tdate;
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


procedure TR_remindersFRM.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
Text:= 'Period :'+ FromDateFLD.Text+ ' - '+ ToDateFLD.Text;

end;


procedure TR_remindersFRM.PrintRBtnClick(Sender: TObject);

Var
   FromDate:TDateTime;
   ToDate :TDateTime;
   SFromDate:String;
   SToDate:String;
   i:integer;
begin

fromDate:=FromDateFLD.Date;
toDate:= ToDateFLD.Date;


with SeminarReminderSQL do
begin
     Close;
     Open ;
     vt.Close;
      vt.DeleteFields;
      Vt.IndexFieldNames := '';
      vt.Assign(SeminarReminderSQL);
//      vt.FieldDefs[0].Attributes := vt.FieldDefs[0].Attributes - [faReadOnly];
      vt.AddField('DaysCalc',ftInteger,0);
      vt.AddField('ActionDate',ftDate,0);
//      Vt.IndexFieldNames := 'DaysCalc Asc'; //need to populate table and then create index
      vt.Open;
      VT.First;
      while not vt.Eof do begin
        vt.Edit;
        vt.FieldByName('DaysCalc').AsInteger:=CalcDaysLeft(2).daysLeft;
        vt.FieldByName('ActionDate').AsDateTime:=CalcDaysLeft(2).DateFinal;
        vt.Post;
        vt.Next;
      end;
      vt.Close;
      Vt.IndexFieldNames := 'ActionDate Asc';
      vt.Open;


     SeminarReminderSRC.DataSet:=vt;
     PpReport1.Print;

end;

end;

procedure TR_remindersFRM.FormActivate(Sender: TObject);
begin
if (Trim(ToDateFLD.text)='') then
  toDateFLD.Date:=now;

if (Trim(FromDateFLD.text)='') then
   FromDateFLD.Date:=now;

end;


procedure TR_remindersFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;


end.
