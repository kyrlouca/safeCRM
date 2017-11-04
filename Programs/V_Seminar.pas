unit V_Seminar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL,G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl, vcl.Wwdbdatetimepicker,
  System.ImageList, Vcl.ImgList, RzTabs, vcl.wwcheckbox, RzSplit;
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
    AttendingSQL: TIBCQuery;
    AttendingSQLFIRST_NAME: TWideStringField;
    AttendingSQLLAST_NAME: TWideStringField;
    AttendingSQLFK_PERSON_SERIAL: TIntegerField;
    AttendingSQLATTENDANCE_STATUS: TWideStringField;
    AttendingSRC: TDataSource;
    AttendingSQLFK_SEMINAR_SERIAL: TIntegerField;
    NonAttendSQL: TIBCQuery;
    NonAttendSRC: TDataSource;
    AttendingSQLSERIAL_NUMBER: TIntegerField;
    NonAttendSQLSERIAL_NUMBER: TIntegerField;
    NonAttendSQLLAST_NAME: TWideStringField;
    NonAttendSQLFIRST_NAME: TWideStringField;
    NonAttendSQLNATIONAL_ID: TWideStringField;
    Panel4: TRzPanel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    BitBtn1: TBitBtn;
    CanelBTN: TBitBtn;
    RzPanel2: TRzPanel;
    RzGroupBox1: TRzGroupBox;
    MembersGRD: TwwDBGrid;
    RzPanel3: TRzPanel;
    ToRightBTN: TBitBtn;
    ToLeftBTN: TBitBtn;
    RzGroupBox2: TRzGroupBox;
    AllPersonsGRD: TwwDBGrid;
    RzSizePanel1: TRzSizePanel;
    SearchPersonFLD: TwwIncrementalSearch;
    RzSizePanel2: TRzSizePanel;
    RzPanel5: TRzPanel;
    GroupBox1: TGroupBox;
    RzPanel6: TRzPanel;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    wwDBGrid1: TwwDBGrid;
    seminarSubjectSQL: TIBCQuery;
    SeminarSubjectSRC: TDataSource;
    seminarSubjectSQLSERIAL_NUMBER: TIntegerField;
    seminarSubjectSQLSUBJECT: TWideStringField;
    seminarSubjectSQLFK_SEMINAR_SERIAL: TIntegerField;
    RzPanel4: TRzPanel;
    RzPanel7: TRzPanel;
    GroupBox2: TGroupBox;
    RzPanel8: TRzPanel;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    wwNavButton7: TwwNavButton;
    wwDBGrid2: TwwDBGrid;
    SeminarDaySQL: TIBCQuery;
    SeminarDaySRC: TDataSource;
    SeminarDaySQLSERIAL_NUMBER: TIntegerField;
    SeminarDaySQLSEMINAR_DAY: TDateField;
    SeminarDaySQLDURATION_HOURS: TIntegerField;
    SeminarDaySQLFK_SEMINAR_SUBJECT_SERIAL: TIntegerField;
    SeminarDaySQLFK_SEMINAR_SERIAL: TIntegerField;
    SeminarDayFLD: TwwDBDateTimePicker;
    procedure BitBtn1Click(Sender: TObject);
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
    procedure ToRightBTNClick(Sender: TObject);
    procedure ToLeftBTNClick(Sender: TObject);
    procedure SeminarSQLNewRecord(DataSet: TDataSet);
    procedure SeminarTSShow(Sender: TObject);
    procedure DaysTSShow(Sender: TObject);
    procedure SeminarDaySQLNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    cn:TIBCConnection;
  Procedure EditSeminar(Const SeminarSerial:integer);
  procedure RemovePerson();
  procedure InsertPerson();
  procedure UseSeminarTemplate(Const SeminarSerial, TypeSerial:Integer);

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

procedure TV_SeminarFRM.ToLeftBTNClick(Sender: TObject);
begin
InsertPerson();
end;

procedure TV_SeminarFRM.ToRightBTNClick(Sender: TObject);
begin
  RemovePerson();
end;

procedure TV_SeminarFRM.SeminarDaySQLNewRecord(DataSet: TDataSet);
begin
  Dataset.FieldByName('fk_seminar_serial').Value:=seminarSubjectSQL.FieldByName('fk_seminar_serial').AsInteger;
end;

procedure TV_SeminarFRM.SeminarSQLNewRecord(DataSet: TDataSet);
begin
Dataset.FieldByName('ANAD_APPROVED').Value:='Y';
Dataset.FieldByName('SEMINAR_CORP_TYPE').Value:='P';

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

procedure TV_SeminarFRM.SeminarTSShow(Sender: TObject);
begin
SeminarTypeFLD.SetFocus;
end;


procedure TV_SeminarFRM.SeminarTypeFLDCloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
var
  TypeSerial:Integer;
  SeminarSerial:Integer;
begin
 if SeminarSQL.State in [dsEdit,dsInsert] then SeminarSQL.Post;
 SeminarSerial:=SeminarSQL.FieldByName('serial_number').AsInteger;
 TYpeserial:=SeminarSQL.FieldByName('FK_Seminar').AsInteger;
 if (not select) or (Seminarserial<1) or (TypeSerial<1) then exit;
 UseSeminarTEmplate(SeminarSerial,TypeSerial);
 ksOpenTables([SeminarSQL])

end;

procedure TV_SeminarFRM.UseSeminarTemplate(Const SeminarSerial, TypeSerial:Integer);
var
  serial:Integer;
  qr:TksQuery;
   fhours, fdays:integer;
   fName,fAnad:String;
   fcost:double;
begin

 qr:=TksQuery.Create(cn,'select * from seminar_type where serial_number= :serial');
 try
   qr.ParamByName('serial').Value:=TYpeSerial;
   qr.Open;
   fname:=qr.FieldByName('seminar_name').AsString;
   fhours:=qr.FieldByName('DURATION_HOURS').AsInteger;;
   fDays:=qr.FieldByName('DURATION_DAYS').AsInteger;
   fAnad:=   qr.FieldByName('ANAD_APPROVED').AsString;
   fCost:=  qr.FieldByName('SEMINAR_COST').AsFloat;
   ksExecSQLVar(cn,'update seminar set seminar_Name= :fname, Duration_hours = :fhours, Duration_days= :fdays, anad_approved= :fAnad, cost_eSTIMATE= :focst where serial_number= :fSerial',
   [fname,fhours,fdays,fAnad,fcost,seminarSerial] );

 finally
   qr.Free;
 end;

 ksExecSQLVar(cn,'delete from seminar_subject where fk_seminar_serial= :semSerial',[SeminarSerial]);
 qr:=TksQuery.Create(cn,'select * from seminar_type_subject where FK_SEMINAR_TYPE_SERIAL= :serial');
 try
   qr.ParamByName('serial').Value:=TypeSerial;
   qr.Open;
   while not qr.Eof do begin
    serial:=ksGenerateSerial(cn,'GEN_SEMINAR_SUBJECT');
    fname:=qr.FieldByName('SUBJECT').AsString;
    ksExecSQLVar(cn,'INSERT INTO SEMINAR_SUBJECT (SERIAL_NUMBER, FK_SEMINAR_SERIAL,SUBJECT) VALUES (:serial,:semSerial, :subject)',
    [serial,seminarSerial,fname] );
    qr.Next;
   end;

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



procedure TV_SeminarFRM.DaysTSShow(Sender: TObject);
begin
ksOpenTables([seminarSubjectSQL,SeminarDaySQL]);
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
