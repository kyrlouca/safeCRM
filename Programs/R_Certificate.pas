unit R_Certificate;

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

  TR_certificateFRM = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    CertificatePIP: TppDBPipeline;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    FromDateFLD: TwwDBDateTimePicker;
    PrintRBtn: TBitBtn;
    Panel11: TRzPanel;
    BitBtn1: TBitBtn;
    ppReport1: TppReport;
    ppParameterList3: TppParameterList;
    ddBand: TppDetailBand;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    CertificateSQL: TIBCQuery;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    CertificateSRC: TDataSource;
    CertificateSQLSERIAL_NUMBER: TIntegerField;
    CertificateSQLFK_SEMINAR_SERIAL: TIntegerField;
    CertificateSQLFK_PERSON_SERIAL: TIntegerField;
    CertificateSQLDATE_ISSUED: TDateField;
    CertificateSQLHOURS_COMPLETED: TIntegerField;
    CertificateSQLPERCENTAGE_COMPLETED: TIntegerField;
    CertificateSQLIS_VALID: TWideStringField;
    CertificateSQLLAST_NAME: TWideStringField;
    CertificateSQLFIRST_NAME: TWideStringField;
    CertificateSQLNATIONAL_ID: TWideStringField;
    CertificateSQLSEMINAR_SUBJECT: TWideStringField;
    CertificateSQLSEMINAR_DURATION: TIntegerField;
    CertificateSQLINSTRUCTOR_NAME: TWideStringField;
    CertificateSQLINSTRUCTOR_JOB_TITLE: TWideStringField;
    CertificateSQLHAS_ANOTHER_DATE: TWideStringField;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    NameFLD: TppVariable;
    ppLabel1: TppLabel;
    IdFLD: TppVariable;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine1: TppLine;
    DurationFLD: TppVariable;
    procedure BitBtn2Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure FormActivate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppVariable3Calc(Sender: TObject; var Value: Variant);
    procedure VtFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure PrintRBtnClick(Sender: TObject);
    procedure NameFLDCalc(Sender: TObject; var Value: Variant);
    procedure IdFLDCalc(Sender: TObject; var Value: Variant);
    procedure DurationFLDCalc(Sender: TObject; var Value: Variant);
  private
    { Private declarations }
    cn:TIBCConnection;
    procedure PrintSeminar(Const SeminarSerial:integer);
//    procedure PrintDayPresence(Const SeminarSerial,DaySerial:integer);

  public
    { Public declarations }
    IN_Seminar_Serial:Integer;
    procedure PrintTheSeminar();
  end;

var
  R_certificateFRM: TR_certificateFRM;

implementation

uses U_Database, G_SFCommonProcs, G_KyrSQL;


{$R *.DFM}





procedure TR_certificateFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TR_certificateFRM.BitBtn2Click(Sender: TObject);
begin
close;

end;




procedure TR_certificateFRM.DurationFLDCalc(Sender: TObject;
  var Value: Variant);
begin
            value:='Διάρκειας:'+CertificateSQL.FieldByName('seminar_duration').AsString + 'ωρών';

end;

procedure TR_certificateFRM.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  (sender as TppReport).PreviewForm.WindowState := wsMaximized;
  TppViewer((sender as TppReport).PreviewForm.Viewer).ZoomSetting := zs100Percent;

end;


procedure TR_certificateFRM.NameFLDCalc(Sender: TObject;
  var Value: Variant);
begin
            value:=Trim(CertificateSQL.FieldByName('First_name').AsString+'     ')+
            Trim(CertificateSQL.FieldByName('First_name').AsString);

end;

procedure TR_certificateFRM.ppVariable3Calc(Sender: TObject; var Value: Variant);
begin
   value:=FromDateFLD.Date;
end;

procedure TR_certificateFRM.RzBitBtn1Click(Sender: TObject);
begin
  close;
end;




procedure TR_certificateFRM.VtFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  accept := Dataset.FieldByName('DaysCalc').asInteger >= 0;
end;


procedure TR_certificateFRM.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
  Text:= 'Reference Date :'+ FromDateFLD.Text;

end;




procedure TR_certificateFRM.PrintRBtnClick(Sender: TObject);
begin
  PrintTheSeminar();
end;


procedure TR_certificateFRM.PrintTheSeminar();
begin
  PrintSeminar(IN_Seminar_Serial);
end;

procedure TR_certificateFRM.PrintSeminar(Const SeminarSerial:Integer);
Var
   FromDate:TDateTime;
   DaysLeft:integer;
begin
  with CertificateSQL do begin
     Close;
     ParamByName('SeminarSerial').Value:=SeminarSerial;
     Open ;
  end;


 PpReport1.Print;

end;

procedure TR_certificateFRM.FormActivate(Sender: TObject);
begin

if (Trim(FromDateFLD.text)='') then
   FromDateFLD.Date:=now;

end;


procedure TR_certificateFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;


procedure TR_certificateFRM.IdFLDCalc(Sender: TObject; var Value: Variant);
begin
    value:='(Αρ. Ταυτότητας:'+Trim(CertificateSQL.FieldByName('National_id').AsString)+ ')' ;

end;

end.
