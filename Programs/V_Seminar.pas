unit V_Seminar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL,G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl, vcl.Wwdbdatetimepicker,
  System.ImageList, Vcl.ImgList, RzTabs, vcl.wwcheckbox;
type
  TV_SeminarFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    SeminarSRC: TDataSource;
    SeminarSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    Label4: TLabel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    BitBtn1: TBitBtn;
    CanelBTN: TBitBtn;
    wwIncrementalSearch1: TwwIncrementalSearch;
    DbImages: TImageList;
    RzToolbar1: TRzToolbar;
    BtnLeft: TRzToolButton;
    BtnRight: TRzToolButton;
    BtnPost: TRzToolButton;
    BtnRefresh: TRzToolButton;
    Panel3: TPanel;
    Panel5: TPanel;
    RzPageControl1: TRzPageControl;
    SeminarTS: TRzTabSheet;
    StudentsTS: TRzTabSheet;
    CostTS: TRzTabSheet;
    DaysTS: TRzTabSheet;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    SerialFLD: TRzDBLabel;
    Label6: TLabel;
    FirstFLD: TwwDBEdit;
    wwDBEdit1: TwwDBEdit;
    wwCheckBox1: TwwCheckBox;
    wwDBComboBox1: TwwDBComboBox;
    SeminarSQLSERIAL_NUMBER: TIntegerField;
    SeminarSQLFK_SEMINAR: TIntegerField;
    SeminarSQLFK_INSTRUCTOR: TIntegerField;
    SeminarSQLFK_VENUE: TIntegerField;
    SeminarSQLDATE_STARTED: TDateField;
    SeminarSQLDATE_COMPLETED: TDateField;
    SeminarSQLDURATION_DAYS: TIntegerField;
    SeminarSQLDURATION_HOURS: TIntegerField;
    SeminarSQLCOST_ACTUAL: TFloatField;
    SeminarSQLAMOUNT_ANAD: TFloatField;
    SeminarSQLCOMMENTS: TWideStringField;
    SeminarSQLACTIVE_STATUS: TWideStringField;
    SeminarSQLSEMINAR_NAME: TWideStringField;
    SeminarSQLSEMINAR_CORP_TYPE: TWideStringField;
    SeminarSQLANAD_APPROVED: TWideStringField;
    DatePassedFLD: TwwDBDateTimePicker;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    Label7: TLabel;
    Label8: TLabel;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    SeminarTypeFLD: TwwDBComboBox;
    InstructorFLD: TwwDBComboBox;
    VenueFLD: TwwDBComboBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure SeminarSRCStateChange(Sender: TObject);
    procedure SeminarSQLAfterInsert(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CanelBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure Nav1InsertClick(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  Procedure EditSeminar(Const SeminarSerial:integer);
  public
    { Public declarations }
    IN_ACTION:String;
    IN_SEMINAR_SERIAL:Integer;

  end;

var
  V_SeminarFRM: TV_SeminarFRM;

implementation

uses   U_Database, G_generalProcs;


{$R *.DFM}

procedure TV_SeminarFRM.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TV_SeminarFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TV_SeminarFRM.SeminarSRCStateChange(Sender: TObject);
begin


  with SeminarSQL do begin
     If State<>dsInsert then begin
//         StationIDFLD.Enabled:=false;
     end  else begin
//         StationIDFLD.Enabled:=true;
     end;
  end;//with

end;

procedure TV_SeminarFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TV_SeminarFRM.SeminarSQLAfterInsert(DataSet: TDataSet);
begin
//      StationIDFLD.SetFocus;

end;


procedure TV_SeminarFRM.FormActivate(Sender: TObject);
begin
  ksOpenTables([SeminarSQL]);
  if IN_ACTION='INSERT' then begin
    SeminarSQL.Insert;
  end else if IN_ACTION='EDIT' then begin
     EditSeminar(IN_SEMINAR_SERIAL);
  end;
  ksfillComboF1(cn,SeminarTYpeFLD,'SEMINAR_TYPE','SERIAL_NUMBER','SEMINAR_NAME','SEMINAR_NAME');
  ksfillComboF1(cn,InstructorFLD,'INSTRUCTOR','SERIAL_NUMBER','FULL_NAME','FULL_NAME');
  ksfillComboF1(cn,VenueFLD,'VENUE','SERIAL_NUMBER','VENUE_NAME','VENUE_NAME');

end;

procedure TV_SeminarFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if SeminarSQL.State in [dsInsert, dsEdit] then
   SeminarSQL.Post;
end;

procedure TV_SeminarFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;

procedure TV_SeminarFRM.Nav1InsertClick(Sender: TObject);
begin
//  FirstFLD.SetFocus;
end;

procedure TV_SeminarFRM.CanelBTNClick(Sender: TObject);
begin
SeminarSQL.Cancel;
close;
end;



Procedure TV_SeminarFRM.EditSeminar(Const SeminarSerial:integer);
Var
        Dataset:TIBCQuery;
Begin
        Dataset:=SeminarSQL;

        with Dataset do begin
          close;
          ParamByName('SerialNumber').value:=SeminarSerial;
          Open;
//          clrType:=FieldbyName('FK_CLEARANCE_INSTRUCTION').AsString;
//          CustomerSerial:=FieldByName('fk_customer_Code').AsInteger;
        end;

//        ksOpenTables([SenderInvoiceDS]);
//        DisplayClearanceStatus();



//        if HawbFLD.CanFocus then
//          HawbFLD.SetFocus;

End;


End.
