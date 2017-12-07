unit R_invoices;

interface

uses
  Windows, Messages, SysUtils,System.DateUtils,System.math, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc,
   DBAccess, IBC, MemDS, IBCError,  Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit,  DBGrids, wwdbdatetimepicker, ppDB, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppBands, ppProd, ppReport, ppComm, ppRelatv,
  ppCache, ppDBPipe,ppTypes,ppviewr, ppDesignLayer, ppParameter, RzButton,
  RzPanel, Vcl.Imaging.pngimage, VirtualTable, vcl.Wwdotdot, vcl.Wwdbcomb,
  RzLabel, RzDBLbl, vcl.wwdblook;

type
  TReminderResult= Record
    daysLeft:Integer;
    DateFinal:Tdate;
  End;

  TR_InvoicesFRM = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    InvoiceSQL: TIBCQuery;
    InvoiceSRC: TDataSource;
    InvoicePIP: TppDBPipeline;
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
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppDBText6: TppDBText;
    ppShape1: TppShape;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    TableSQL: TIBCQuery;
    TableSQLSERIAL_NUMBER: TIntegerField;
    TableSQLFK_SEMINAR: TIntegerField;
    TableSQLSEMINAR_NAME: TWideStringField;
    TableSQLFK_INSTRUCTOR: TIntegerField;
    TableSQLFK_VENUE: TIntegerField;
    TableSQLDATE_STARTED: TDateField;
    TableSQLDATE_COMPLETED: TDateField;
    TableSQLDURATION_DAYS: TIntegerField;
    TableSQLDURATION_HOURS: TIntegerField;
    TableSQLFEE_ACTUAL: TFloatField;
    TableSQLAMOUNT_ANAD: TFloatField;
    TableSQLCOMMENTS: TWideStringField;
    TableSQLANAD_APPROVED: TWideStringField;
    TableSQLFEE_ESTIMATE: TFloatField;
    TableSQLSTATUS: TWideStringField;
    TableSQLIS_INVOICED: TWideStringField;
    TableSQLIS_CERTIFICATED: TWideStringField;
    TableSQLMAX_CAPACITY: TIntegerField;
    TableSQLFK_COMPANY_PERSON_SERIAL: TIntegerField;
    TableSQLFEE_WITH_ANAD_SUB: TFloatField;
    TableSQLLAST_NAME: TWideStringField;
    TableSRC: TIBCDataSource;
    FirstGRP: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    SerialFLD: TRzDBLabel;
    Label5: TLabel;
    Label4: TLabel;
    RzDBLabel1: TRzDBLabel;
    RzDBLabel2: TRzDBLabel;
    Label6: TLabel;
    Label7: TLabel;
    SeminarFLD: TRzDBLabel;
    Companylbl: TLabel;
    RzDBLabel3: TRzDBLabel;
    wwDBEdit1: TRzDBLabel;
    wwDBEdit2: TRzDBLabel;
    wwDBComboBox1: TwwDBComboBox;
    InvoiceSQLSERIAL_NUMBER: TIntegerField;
    InvoiceSQLFK_SEMINAR_SERIAL: TIntegerField;
    InvoiceSQLFK_PERSON_SERIAL: TIntegerField;
    InvoiceSQLINVOICE_STATUS: TWideStringField;
    InvoiceSQLDATE_INVOICED: TDateField;
    InvoiceSQLVAT_RATE: TFloatField;
    InvoiceSQLDISCOUNT_BY_SAFE: TFloatField;
    InvoiceSQLDISCOUNT_CUSTOMER: TFloatField;
    InvoiceSQLAMOUNT_GROSS: TFloatField;
    InvoiceSQLAMOUNT_NET: TFloatField;
    InvoiceSQLAMOUNT_VAT: TFloatField;
    InvoiceSQLAMOUNT_WITH_VAT: TFloatField;
    InvoiceSQLIS_ANAD: TWideStringField;
    SeminarSQL: TIBCQuery;
    SeminarSQLSERIAL_NUMBER: TIntegerField;
    SeminarSQLFK_SEMINAR: TIntegerField;
    SeminarSQLFK_INSTRUCTOR: TIntegerField;
    SeminarSQLFK_VENUE: TIntegerField;
    SeminarSQLFK_COMPANY_PERSON_SERIAL: TIntegerField;
    SeminarSQLSEMINAR_NAME: TWideStringField;
    SeminarSQLDATE_STARTED: TDateField;
    SeminarSQLDATE_COMPLETED: TDateField;
    SeminarSQLDURATION_DAYS: TIntegerField;
    SeminarSQLDURATION_HOURS: TIntegerField;
    SeminarSQLFEE_ACTUAL: TFloatField;
    SeminarSQLAMOUNT_ANAD: TFloatField;
    SeminarSQLCOMMENTS: TWideStringField;
    SeminarSQLANAD_APPROVED: TWideStringField;
    SeminarSQLFEE_ESTIMATE: TFloatField;
    SeminarSQLSTATUS: TWideStringField;
    SeminarSQLIS_INVOICED: TWideStringField;
    SeminarSQLIS_CERTIFICATED: TWideStringField;
    SeminarSQLMAX_CAPACITY: TIntegerField;
    SeminarSQLFEE_WITH_ANAD_SUB: TFloatField;
    SeminarSRC: TDataSource;
    SeminarPIP: TppDBPipeline;
    ppDBText7: TppDBText;
    InvoiceSQLFIRST_NAME: TWideStringField;
    InvoiceSQLLAST_NAME: TWideStringField;
    InvoiceSQLNATIONAL_ID: TWideStringField;
    ppDBText8: TppDBText;
    ppDBText5: TppDBText;
    ppLabel2: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel7: TppLabel;
    TableSQLANAD_NUMBER: TWideStringField;
    TableSQLFK_EXAMINER: TIntegerField;
    TableSQLHAS_EXPIRY: TWideStringField;
    TableSQLEXPIRY_PERIOD: TIntegerField;
    TableSQLTYPE_MONO_POLY: TWideStringField;
    TableSQLSEM_CATEGORY: TWideStringField;
    SeminarSQLANAD_NUMBER: TWideStringField;
    SeminarSQLFK_EXAMINER: TIntegerField;
    SeminarSQLHAS_EXPIRY: TWideStringField;
    SeminarSQLEXPIRY_PERIOD: TIntegerField;
    SeminarSQLTYPE_MONO_POLY: TWideStringField;
    SeminarSQLSEM_CATEGORY: TWideStringField;
    ppLabel9: TppLabel;
    ppDBText11: TppDBText;
    procedure BitBtn2Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure PrintRBtnClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppVariable3Calc(Sender: TObject; var Value: Variant);
    procedure VtFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  Function FindActionDate(const DateSeminar:TDate;Const isAfter,isDayUnit:Boolean;Const NumberOfUnits:Integer):Tdate;
  Function CalcDaysLeft():TReminderResult;
  public
    { Public declarations }
    IN_SeminarSerial:Integer;
    IN_InvoiceSerial:Integer;
  procedure PrintSeminar();
  end;

var
  R_InvoicesFRM: TR_InvoicesFRM;

implementation

uses U_Database, G_SFCommonProcs, G_KyrSQL;


{$R *.DFM}





procedure TR_InvoicesFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TR_InvoicesFRM.BitBtn2Click(Sender: TObject);
begin
close;

end;




procedure TR_InvoicesFRM.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  (sender as TppReport).PreviewForm.WindowState := wsMaximized;
  TppViewer((sender as TppReport).PreviewForm.Viewer).ZoomSetting := zs100Percent;

end;


procedure TR_InvoicesFRM.ppVariable3Calc(Sender: TObject; var Value: Variant);
begin
//   value:=FromDateFLD.Date;
end;

procedure TR_InvoicesFRM.RzBitBtn1Click(Sender: TObject);
begin
  close;
end;




procedure TR_InvoicesFRM.VtFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  accept := Dataset.FieldByName('DaysCalc').asInteger >= 0;
end;

Function TR_InvoicesFRM.CalcDaysLeft():TReminderResult;
begin


end;



Function TR_InvoicesFRM.FindActionDate(const DateSeminar:TDate;Const isAfter,isDayUnit:Boolean;Const NumberOfUnits:Integer):Tdate;
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

procedure TR_InvoicesFRM.PrintRBtnClick(Sender: TObject);
begin
  PrintSeminar();
end;

procedure TR_InvoicesFRM.PrintSeminar();

Var
   FromDate:TDateTime;
   DaysLeft:integer;
   SeminarSerial:Integer;
begin
  SeminarSerial:=IN_SeminarSerial;
  if SeminarSerial<1 then begin
    showMessage('Invalid Selected Seminar');
    exit;
  end;


  SeminarSQL.Close;
  SeminarSQL.ParamByName('SeminarSerial').Value:=SeminarSerial;
  SeminarSQL.Open;

  InvoiceSQL.Close;
  InvoiceSQL.Open;

  PpReport1.Print;

end;

procedure TR_InvoicesFRM.FormActivate(Sender: TObject);
begin
ksOpenTables([TableSQL])
end;

procedure TR_InvoicesFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;


end.
