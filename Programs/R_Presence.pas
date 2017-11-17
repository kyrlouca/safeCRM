unit R_Presence;

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

  TR_presenceFRM = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    SeminarPresenceSQL: TIBCQuery;
    SeminarPresenceSRC: TDataSource;
    SeminarPresencePIP: TppDBPipeline;
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
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppShape1: TppShape;
    ppLabel10: TppLabel;
    SeminarPresenceSQLPERSON_SERIAL: TIntegerField;
    SeminarPresenceSQLLAST_FIRST_NAME: TWideStringField;
    SeminarPresenceSQLIS_PRESENT: TWideStringField;
    SeminarPresenceSQLHOURS_PRESENT: TIntegerField;
    SeminarPresenceSQLDAYSERIAL: TIntegerField;
    SeminarPresenceSQLSEMINAR_DAY: TDateField;
    ppDBText2: TppDBText;
    SeminarPresenceSQLNATIONAL_ID: TWideStringField;
    ppLabel2: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine1: TppLine;
    SeminarSQL: TIBCQuery;
    SeminarSQLSERIAL_NUMBER: TIntegerField;
    SeminarSQLSEMINAR_NAME: TWideStringField;
    SeminarSQLDATE_STARTED: TDateField;
    SeminarSRC: TDataSource;
    SeminarPIP: TppDBPipeline;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel7: TppLabel;
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
  private
    { Private declarations }
    cn:TIBCConnection;
    procedure PrintSeminar(Const SeminarSerial,DaySerial:integer);
//    procedure PrintDayPresence(Const SeminarSerial,DaySerial:integer);

  public
    { Public declarations }
    IN_Seminar_Serial:Integer;
    IN_Day_Serial:Integer;
    procedure PrintTheSeminar();
  end;

var
  R_presenceFRM: TR_presenceFRM;

implementation

uses U_Database, G_SFCommonProcs, G_KyrSQL;


{$R *.DFM}





procedure TR_presenceFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TR_presenceFRM.BitBtn2Click(Sender: TObject);
begin
close;

end;




procedure TR_presenceFRM.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  (sender as TppReport).PreviewForm.WindowState := wsMaximized;
  TppViewer((sender as TppReport).PreviewForm.Viewer).ZoomSetting := zs100Percent;

end;


procedure TR_presenceFRM.ppVariable3Calc(Sender: TObject; var Value: Variant);
begin
   value:=FromDateFLD.Date;
end;

procedure TR_presenceFRM.RzBitBtn1Click(Sender: TObject);
begin
  close;
end;




procedure TR_presenceFRM.VtFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  accept := Dataset.FieldByName('DaysCalc').asInteger >= 0;
end;


procedure TR_presenceFRM.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
  Text:= 'Reference Date :'+ FromDateFLD.Text;

end;




procedure TR_presenceFRM.PrintRBtnClick(Sender: TObject);
begin
  PrintTheSeminar();
end;


procedure TR_presenceFRM.PrintTheSeminar();
begin
  PrintSeminar(IN_Seminar_Serial,IN_Day_Serial);
end;

procedure TR_presenceFRM.PrintSeminar(Const SeminarSerial,DaySerial:integer);
Var
   FromDate:TDateTime;
   DaysLeft:integer;
begin
  with SeminarSQL do begin
     Close;
     SeminarSQL.ParamByName('SeminarSerial').Value:=SeminarSerial;
     Open ;
  end;

  SeminarPresenceSQL.RestoreSQL;
  if DaySerial>0 then begin
      SeminarPresenceSQL.AddWhere('ssd.serial_number = :daySerial');
  end;

  with SeminarPresenceSQL do begin
     Close;
     SeminarPresenceSQL.ParamByName('SeminarSerial').Value:=SeminarSerial;
     if DaySerial>0 then
       SeminarPresenceSQL.ParamByName('daySerial').Value:=DaySerial;
     Open ;
  end;

  PpReport1.Print;

end;

procedure TR_presenceFRM.FormActivate(Sender: TObject);
begin

if (Trim(FromDateFLD.text)='') then
   FromDateFLD.Date:=now;

end;


procedure TR_presenceFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;


end.
