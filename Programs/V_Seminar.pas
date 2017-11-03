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
    Panel2: TPanel;
    SeminarSRC: TDataSource;
    SeminarSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    Label4: TLabel;
    DbImages: TImageList;
    RzToolbar1: TRzToolbar;
    BtnLeft: TRzToolButton;
    BtnRight: TRzToolButton;
    BtnPost: TRzToolButton;
    BtnRefresh: TRzToolButton;
    Panel3: TPanel;
    PageControlPC: TRzPageControl;
    SeminarTS: TRzTabSheet;
    StudentsTS: TRzTabSheet;
    CostTS: TRzTabSheet;
    DaysTS: TRzTabSheet;
    FirstGRP: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    SerialFLD: TRzDBLabel;
    Label6: TLabel;
    FirstFLD: TwwDBEdit;
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
    SeminarTypeFLD: TwwDBComboBox;
    SeminarSQLCOST_ESTIMATE: TFloatField;
    wwDBEdit4: TwwDBEdit;
    SecondGRP: TRzGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DatePassedFLD: TwwDBDateTimePicker;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    InstructorFLD: TwwDBComboBox;
    VenueFLD: TwwDBComboBox;
    Label11: TLabel;
    InstructorBTN: TSpeedButton;
    VenueBTN: TSpeedButton;
    Label12: TLabel;
    TabSheet1: TRzTabSheet;
    RzGroupBox1: TRzGroupBox;
    RzGroupBox2: TRzGroupBox;
    AttendingSQL: TIBCQuery;
    AttendingSQLFIRST_NAME: TWideStringField;
    AttendingSQLLAST_NAME: TWideStringField;
    AttendingSQLFK_PERSON_SERIAL: TIntegerField;
    AttendingSQLATTENDANCE_STATUS: TWideStringField;
    MembersGRD: TwwDBGrid;
    AttendingSRC: TDataSource;
    AttendingSQLFK_SEMINAR_SERIAL: TIntegerField;
    NonAttendSQL: TIBCQuery;
    NonAttendSRC: TDataSource;
    AllPersonsGRD: TwwDBGrid;
    AttendingSQLSERIAL_NUMBER: TIntegerField;
    SearchPersonFLD: TwwIncrementalSearch;
    NonAttendSQLSERIAL_NUMBER: TIntegerField;
    NonAttendSQLLAST_NAME: TWideStringField;
    NonAttendSQLFIRST_NAME: TWideStringField;
    NonAttendSQLNATIONAL_ID: TWideStringField;
    Panel4: TRzPanel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    BitBtn1: TBitBtn;
    CanelBTN: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure SeminarSRCStateChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CanelBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure Nav1InsertClick(Sender: TObject);
    procedure InstructorBTNClick(Sender: TObject);
    procedure VenueBTNClick(Sender: TObject);
    procedure SeminarTypeFLDCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure StudentsTSShow(Sender: TObject);
    procedure PageControlPCChanging(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
    procedure AllPersonsGRDDblClick(Sender: TObject);
    procedure AllPersonsGRDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MembersGRDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MembersGRDDblClick(Sender: TObject);
    procedure SearchPersonFLDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    cn:TIBCConnection;
  Procedure EditSeminar(Const SeminarSerial:integer);
  procedure RemovePerson();
  procedure InsertPerson();
  public
    { Public declarations }
    IN_ACTION:String;
    IN_SEMINAR_SERIAL:Integer;

  end;

var
  V_SeminarFRM: TV_SeminarFRM;

implementation

uses   U_Database, G_generalProcs, M_Instructor, M_Venue;


{$R *.DFM}

procedure TV_SeminarFRM.BitBtn1Click(Sender: TObject);
begin
  if SeminarSQL.State in [dsEdit,dsInsert] then begin
    seminarSQL.Post;
  end;
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

procedure TV_SeminarFRM.SeminarTypeFLDCloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
var
  qr:TksQuery;
  serial:Integer;
begin
 serial:=strToIntdef(SeminarTypeFLD.Value,0);
 if (not select) or (serial<0) then exit;
 qr:=TksQuery.Create(cn,'select * from seminar_type where serial_number= :serial');
 try
   qr.ParamByName('serial').Value:=serial;
   qr.Open;
   seminarSQL.fieldbyName('seminar_name').value:= qr.FieldByName('seminar_name').AsString;
   seminarSQL.fieldbyName('DURATION_HOURS').value:= qr.FieldByName('DURATION_HOURS').AsString;
   seminarSQL.fieldbyName('DURATION_DAYS').value:= qr.FieldByName('DURATION_DAYS').AsString;
   seminarSQL.fieldbyName('ANAD_APPROVED').value:= qr.FieldByName('ANAD_APPROVED').AsString;
   seminarSQL.fieldbyName('COST_ESTIMATE').value:= qr.FieldByName('SEMINAR_COST').AsString;
 finally
   qr.Free;
 end;

 end;

procedure TV_SeminarFRM.StudentsTSShow(Sender: TObject);
var
  SeminarSerial:Integer;
begin

  SeminarSerial:= SEminarSQL.FieldByName('serial_number').AsInteger;
  NonAttendSQL.Close;
  NonAttendSQL.ParamByName('seminarSerial').Value:=seminarSerial;
  NonAttendSQL.Open;

  ksOpenTables([AttendingSQL]);

end;

procedure TV_SeminarFRM.InstructorBTNClick(Sender: TObject);
vAR

Frm:TM_InstructorFRM;
Serial:Integer;
begin
  if seminarSQL.State in [dsEdit] then SeminarSQL.Post;
  serial:=strToIntdef(InstructorFLD.Value,0);
  if Serial<1 then exit;
  frm := TM_InstructorFRM.Create(nil);
  frm.IN_ACTION :='DISPLAY';
  frm.in_INSTRUCTOR_SERIAL:=Serial;
  try
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;


procedure TV_SeminarFRM.MembersGRDDblClick(Sender: TObject);
begin
    RemovePerson();

end;

procedure TV_SeminarFRM.MembersGRDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF KEY=VK_RETURN THEN begin
    RemovePerson();
  end;
end;

procedure TV_SeminarFRM.VenueBTNClick(Sender: TObject);
vAR

Frm:TM_venuFRM;
Serial:Integer;
begin
  if seminarSQL.State in [dsEdit] then SeminarSQL.Post;
  serial:=strToIntdef(venueFLD.Value,0);
  if Serial<1 then exit;
  frm := TM_venuFRM.Create(nil);
  frm.IN_ACTION :='EDIT';
  frm.in_SERIAL:=Serial;
  try
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TV_SeminarFRM.SearchPersonFLDKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

  IF KEY=VK_RETURN THEN begin
    if SearchPersonFLD.Text='' then
      exit;
    InsertPerson();
    SearchPersonFLD.Clear;
    SearchPersonFLD.ClearSelection;


  end;

end;

procedure TV_SeminarFRM.AllPersonsGRDDblClick(Sender: TObject);
begin
  InsertPerson();
end;

procedure TV_SeminarFRM.InsertPerson();
var
  qr:TksQuery;
  Personserial:Integer;
  seminarSerial:Integer;
  str:string;
begin
  PersonSerial:=NonAttendSQL.FieldByName('serial_number').AsInteger;
  SeminarSerial:=SeminarSQL.FieldByName('serial_number').AsInteger;
  if Personserial<1 then exit;
  str:=' insert into seminar_person  (fk_seminar_serial,fk_person_serial,attendance_status) '
    +' values(:seminar,:person,:attend)';
  ksExecSQLVar(cn,str,[seminarSerial,Personserial,'fff']);

  AttendingSQL.Refresh;
  NonAttendSQL.Refresh;



end;

procedure TV_SeminarFRM.AllPersonsGRDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF KEY=VK_RETURN THEN begin
    InsertPerson();
  end;

end;

procedure TV_SeminarFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TV_SeminarFRM.FormActivate(Sender: TObject);
begin
  ksfillComboF1(cn,SeminarTYpeFLD,'SEMINAR_TYPE','SERIAL_NUMBER','SEMINAR_NAME','SEMINAR_NAME');
  ksfillComboF1(cn,InstructorFLD,'INSTRUCTOR','SERIAL_NUMBER','FULL_NAME','FULL_NAME');
  ksfillComboF1(cn,VenueFLD,'VENUE','SERIAL_NUMBER','VENUE_NAME','VENUE_NAME');
  ksOpenTables([SeminarSQL]);
  if IN_ACTION='INSERT' then begin
    SeminarSQL.Insert;
  end else if IN_ACTION='EDIT' then begin
     EditSeminar(IN_SEMINAR_SERIAL);
  end;
PageControlPC.ActivePageIndex:=0;

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

procedure TV_SeminarFRM.RemovePerson();
var
  qr:TksQuery;
  Personserial:Integer;
  seminarSerial:Integer;
  str:string;
begin
  PersonSerial:=AttendingSQL.FieldByName('fk_person_serial').AsInteger;
  SeminarSerial:=AttendingSQL.FieldByName('fk_seminar_serial').AsInteger;
  if (Personserial<1) or (seminarSerial<1) then exit;
  str:=' delete from seminar_person where fk_person_serial= :personSerial and fk_seminar_serial= :seminarSerial';
  ksExecSQLVar(cn,str,[Personserial,seminarSerial]);

  AttendingSQL.Refresh;
  NonAttendSQL.Refresh;
end;


procedure TV_SeminarFRM.Nav1InsertClick(Sender: TObject);
begin
//  FirstFLD.SetFocus;
end;

procedure TV_SeminarFRM.PageControlPCChanging(Sender: TObject;
  NewIndex: Integer; var AllowChange: Boolean);
begin
  try
    if SeminarSQL.State in [dsInsert,dsEdit] then
      SeminarSQl.Post;
  except
    allowChange:= false;
    exit;
  end;
  allowChange:=  (SeminarSQL.FieldByName('serial_number').AsInteger >0);

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
          if FirstFLD.CanFocus then
          firstFLD.SetFocus;

End;


End.
