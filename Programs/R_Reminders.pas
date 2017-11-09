unit R_Reminders;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc,
   DBAccess, IBC, MemDS, IBCError,  Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit,  DBGrids, wwdbdatetimepicker, ppDB, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppBands, ppProd, ppReport, ppComm, ppRelatv,
  ppCache, ppDBPipe,ppTypes,ppviewr, ppDesignLayer, ppParameter, RzButton,
  RzPanel, Vcl.Imaging.pngimage, VirtualTable;

type
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
    procedure BitBtn2Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure FormActivate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure PrintRBtnClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SeminarReminderSQLFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  R_remindersFRM: TR_remindersFRM;

implementation

uses U_Database, G_SFCommonProcs;


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
 value:=vt.FieldByName('maka').AsString;
end;

procedure TR_remindersFRM.RzBitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TR_remindersFRM.SeminarReminderSQLFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var
  DateSeminar,DateToday:TDateTime;
  diff:Integer;
  isAfter,IsStartDate:Boolean;
  DaysNumber:integer;
  isDayUnit:Boolean;
begin
  isAfter:=SeminarReminderSQL.FieldByName('AFTER_OR_BEFORE').AsString='A';
  IsStartDate:=SeminarReminderSQL.FieldByName('Start_or_end').AsString='S';
  IsDayUnit:=SeminarReminderSQL.FieldByName('DAYS_OR_MONTHS').AsString='D';
  DaysNumber:=SeminarReminderSQL.FieldByName('number_of_days_months').AsInteger;

  DateTOday:=Now;


  if isStartDate then
      DateSeminar:=SeminarReminderSQL.FieldByName('date_started').AsDateTime
  else
      DateSeminar:=SeminarReminderSQL.FieldByName('date_Completed').AsDateTime;

  diff:= CalcDays(DateSeminar,DateToday,isAfter,isDayUnit,DaysNumber);
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
     SeminarREminderSQL.RestoreSQL;
     Prepare;
     Open ;
      vt.Assign(SeminarReminderSQL);
      vt.Close;
      vt.FieldDefs[0].Attributes :=
      vt.FieldDefs[0].Attributes - [faReadOnly];
      vt.AddField('maka',ftString,10);
      vt.Open;
      i:=0;
      while not vt.Eof do begin
        vt.Edit;
        vt.FieldByName('maka').Value:=IntToStr(i);
        vt.Post;
        vt.Next;
        inc(i);
      end;
      vt.Close;
      Vt.IndexFieldNames := 'maka Desc';
      vt.Open;



     PpReport1.Print;
     close;
end;

end;

procedure TR_remindersFRM.FormActivate(Sender: TObject);
begin
if (Trim(ToDateFLD.text)='') then
  toDateFLD.Date:=now;

if (Trim(FromDateFLD.text)='') then
   FromDateFLD.Date:=now;

end;

end.
