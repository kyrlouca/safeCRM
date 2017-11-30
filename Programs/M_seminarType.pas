unit M_seminarType;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL,G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl, vcl.Wwdbdatetimepicker,
  vcl.wwcheckbox, Vcl.ComCtrls, RzDBEdit, RzTabs, RzRadGrp, RzDBRGrp,
  Vcl.ExtDlgs, vcl.wwclearbuttongroup, vcl.wwradiogroup;
type
  TM_SeminarTypeFRM = class(TForm)
    Panel3: TRzPanel;
    TableSRC: TDataSource;
    TableSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    TableSQLSERIAL_NUMBER: TIntegerField;
    TableSQLSEMINAR_NAME: TWideStringField;
    TableSQLSEMINAR_COST: TFloatField;
    TableSQLANAD_APPROVED: TWideStringField;
    TableSQLSEMINAR_CATEGORY: TWideStringField;
    TableSQLDURATION_HOURS: TIntegerField;
    TableSQLDURATION_DAYS: TIntegerField;
    TableSQLCOMMENTS: TWideStringField;
    seminarSubjectSQL: TIBCQuery;
    SeminarSubjectSRC: TDataSource;
    seminarSubjectSQLSERIAL_NUMBER: TIntegerField;
    seminarSubjectSQLSUBJECT: TWideStringField;
    seminarSubjectSQLFK_SEMINAR_TYPE_SERIAL: TIntegerField;
    SeminarPC: TRzPageControl;
    SeminarTS: TRzTabSheet;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    Grid1: TwwDBGrid;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    SerialFLD: TRzDBLabel;
    Label7: TLabel;
    FirstFLD: TwwDBEdit;
    wwDBEdit1: TwwDBEdit;
    RzDBRichEdit1: TRzDBRichEdit;
    SubjectTS: TRzTabSheet;
    GroupBox2: TGroupBox;
    RzPanel4: TRzPanel;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    wwDBGrid1: TwwDBGrid;
    Panel5: TRzPanel;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    wwNavButton7: TwwNavButton;
    wwNavButton8: TwwNavButton;
    wwIncrementalSearch1: TwwIncrementalSearch;
    Panel4: TRzPanel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    BitBtn1: TBitBtn;
    CanelBTN: TBitBtn;
    ReminderTS: TRzTabSheet;
    SeminarReminderSRC: TDataSource;
    SeminarReminderSQL: TIBCQuery;
    GroupBox4: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    RzDBLabel1: TRzDBLabel;
    Label15: TLabel;
    Label16: TLabel;
    REminderDescFLD: TwwDBEdit;
    wwDBEdit8: TwwDBEdit;
    RzDBRichEdit2: TRzDBRichEdit;
    RzPanel6: TRzPanel;
    wwDBNavigator4: TwwDBNavigator;
    wwNavButton16: TwwNavButton;
    wwNavButton17: TwwNavButton;
    wwNavButton18: TwwNavButton;
    wwNavButton19: TwwNavButton;
    wwNavButton20: TwwNavButton;
    wwNavButton21: TwwNavButton;
    wwNavButton22: TwwNavButton;
    wwNavButton23: TwwNavButton;
    wwIncrementalSearch2: TwwIncrementalSearch;
    Label12: TLabel;
    Label13: TLabel;
    RzDBRadioGroup2: TRzDBRadioGroup;
    RzDBRadioGroup3: TRzDBRadioGroup;
    Label11: TLabel;
    RzDBRadioGroup4: TRzDBRadioGroup;
    Label14: TLabel;
    GroupBox3: TGroupBox;
    RzPanel5: TRzPanel;
    SeminarReminderSQLSERIAL_NUMBER: TIntegerField;
    SeminarReminderSQLFK_SEMINAR_TYPE_SERIAL: TIntegerField;
    SeminarReminderSQLDESCRIPTION: TWideStringField;
    SeminarReminderSQLREMINDER_MESSAGE: TWideStringField;
    SeminarReminderSQLAFTER_OR_BEFORE: TWideStringField;
    SeminarReminderSQLPERSON_OR_SEMINAR: TWideStringField;
    SeminarReminderSQLSTART_OR_END: TWideStringField;
    SeminarReminderSQLDAYS_OR_MONTHS: TWideStringField;
    SeminarReminderSQLNUMBER_OF_DAYS_MONTHS: TIntegerField;
    RzDBRadioGroup1: TRzDBRadioGroup;
    wwDBGrid2: TwwDBGrid;
    AfterFLD: TwwDBComboBox;
    NamePersonFLD: TwwDBComboBox;
    StartEndLD: TwwDBComboBox;
    TableSQLFEE_ESTIMATE: TFloatField;
    TableSQLMAX_CAPACITY: TIntegerField;
    TableSQLHAS_EXPIRY: TWideStringField;
    TableSQLEXPIRY_PERIOD: TIntegerField;
    SecondGRP: TRzGroupBox;
    Label22: TLabel;
    Label24: TLabel;
    wwDBEdit9: TwwDBEdit;
    wwDBEdit10: TwwDBEdit;
    RzGroupBox1: TRzGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    Label17: TLabel;
    wwCheckBox2: TwwCheckBox;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    Label1: TLabel;
    CompletedFLD: TwwCheckBox;
    Label8: TLabel;
    wwDBEdit2: TwwDBEdit;
    TableSQLFEE_ACTUAL: TFloatField;
    TableSQLFEE_WITH_ANAD_SUB: TFloatField;
    TitlePNL: TRzPanel;
    RzPanel8: TRzPanel;
    TableSQLTYPE_MONO_POLY: TWideStringField;
    Label18: TLabel;
    wwCheckBox1: TwwCheckBox;
    Label20: TLabel;
    wwCheckBox3: TwwCheckBox;
    SeminarReminderSQLIS_HIGH: TWideStringField;
    CertificationTS: TRzTabSheet;
    RzGroupBox2: TRzGroupBox;
    Label19: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    Label26: TLabel;
    Label27: TLabel;
    wwDBEdit11: TwwDBEdit;
    wwDBEdit12: TwwDBEdit;
    wwDBEdit13: TwwDBEdit;
    SeminarPictureSQL: TIBCQuery;
    SeminarPictureSQLSERIAL_NUMBER: TIntegerField;
    SeminarPictureSQLPICTURE_SEMINAR: TBlobField;
    SeminarPictureSQLLINE_A1: TWideStringField;
    SeminarPictureSQLLINE_A2: TWideStringField;
    SeminarPictureSQLLINE_B1: TWideStringField;
    SeminarPictureSQLLINE_B2: TWideStringField;
    SeminarPictureSQLLINE_B3: TWideStringField;
    SeminarPictureSRC: TDataSource;
    SeminarPictureSQLFK_SEMINAR_TYPE_SERIAL: TIntegerField;
    ImgShow: TImage;
    Label25: TLabel;
    RzBitBtn2: TRzBitBtn;
    OpenPictureDialog1: TOpenPictureDialog;
    LanguageRGP: TwwRadioGroup;
    SeminarPictureSQLLANGUAGE_GREEK_OR_ENGLISH: TWideStringField;
    ClearPictBTN: TRzBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure TableSRCStateChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CanelBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure Nav1InsertClick(Sender: TObject);
    procedure Grid1TitleButtonClick(Sender: TObject; AFieldName: string);
    procedure TableSQLNewRecord(DataSet: TDataSet);
    procedure SubjectTSShow(Sender: TObject);
    procedure ReminderTSShow(Sender: TObject);
    procedure wwNavButton5Click(Sender: TObject);
    procedure SeminarPCChanging(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
    procedure CertificationTSShow(Sender: TObject);
    procedure CertificationTSExit(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure LanguageRGPChange(Sender: TObject);
    procedure TableSQLAfterScroll(DataSet: TDataSet);
    procedure ClearPictBTNClick(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  procedure CheckPictures(COnst TypeSerial:Integer);

  function SelectPicture():Boolean;
  procedure ShowPicture(Const TypeSerial:Integer;Const  Language:String);
  procedure ShowPictureData(Const TypeSerial:Integer;Const  Language:String);
  procedure SavePicture(Const SeminarSerial:Integer; Const Language:String;img:Timage);

  public
    { Public declarations }
    MyInsertState:Boolean;
    IN_ACTION:String;

  end;

var
  M_SeminarTypeFRM: TM_SeminarTypeFRM;

implementation

uses   U_Database, G_generalProcs;


{$R *.DFM}

procedure TM_SeminarTypeFRM.BitBtn1Click(Sender: TObject);
begin
 if SeminarPictureSQL.State in [dsEdit, dsInsert] then begin
         SeminarPictureSQL.Post;
 end;
end;

procedure TM_SeminarTypeFRM.TableSQLAfterScroll(DataSet: TDataSet);
begin
         TitlePNL.Caption:= Trim(Dataset.FieldByName('seminar_name').AsString);
end;

procedure TM_SeminarTypeFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TM_SeminarTypeFRM.TableSQLNewRecord(DataSet: TDataSet);
begin
Dataset.FieldByName('ANAD_APPROVED').value:='Y';
Dataset.FieldByName('SEMINAR_CORP_TYPE').value:='M';

end;

procedure TM_SeminarTypeFRM.TableSRCStateChange(Sender: TObject);
begin


  with TableSQL do begin
     If State<>dsInsert then begin
//         StationIDFLD.Enabled:=false;
     end  else begin
//         StationIDFLD.Enabled:=true;
     end;
  end;//with

end;

procedure TM_SeminarTypeFRM.wwNavButton5Click(Sender: TObject);
begin
FirstFLD.SetFocus;
end;

procedure TM_SeminarTypeFRM.ReminderTSShow(Sender: TObject);
var
  SeminarSerial:Integer;
begin

  SeminarSerial:= TableSQL.FieldByName('serial_number').AsInteger;
  ksOpenTables([SeminarReminderSQL]);

end;

procedure TM_SeminarTypeFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TM_SeminarTypeFRM.RzBitBtn2Click(Sender: TObject);
var
  TypeSerial:Integer;
begin
  TypeSerial:=TableSQL.fieldbyName('serial_number').AsInteger;
  if SelectPicture() then begin
    SavePicture(TypeSerial, LanguageRGP.Value,ImgShow);
    ShowPicture(TypeSerial,LanguageRGP.Value);
//    ShowPictureData(TypeSerial,LanguageRGP.Value);
  end;

end;

procedure TM_SeminarTypeFRM.ClearPictBTNClick(Sender: TObject);
var
  TypeSerial:Integer;
begin
  TypeSerial:=TableSQL.fieldbyName('serial_number').AsInteger;
  ImgShow.Picture:=nil;
  SavePicture(TypeSerial, LanguageRGP.Value,ImgShow);
end;

procedure TM_SeminarTypeFRM.SeminarPCChanging(Sender: TObject;
  NewIndex: Integer; var AllowChange: Boolean);
begin
  If TableSQL.State in [dsEdit,dsInsert] then begin
    TableSQL.Post;
  end;
 AllowChange:= TableSQL.FieldByName('serial_number').AsInteger > 0;
 End;

 procedure TM_SeminarTypeFRM.CanelBTNClick(Sender: TObject);
begin
TableSQL.Cancel;
close;
end;

procedure TM_SeminarTypeFRM.SubjectTSShow(Sender: TObject);
var
  SeminarSerial:Integer;
begin

  SeminarSerial:= TableSQL.FieldByName('serial_number').AsInteger;
  ksOpenTables([SeminarSubjectSQL]);

end;


procedure TM_SeminarTypeFRM.FormActivate(Sender: TObject);
begin
ksOpenTables([TableSQL,SeminarSubjectSQL]);
if IN_ACTION='INSERT' then begin
   TableSQL.Insert;
end;

end;

procedure TM_SeminarTypeFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if TableSQL.State in [dsInsert, dsEdit] then
   TableSQL.Post;
if SeminarPictureSQL.State in [dsInsert, dsEdit] then
   SeminarPictureSQL.Post;
end;

procedure TM_SeminarTypeFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;

procedure TM_SeminarTypeFRM.Grid1TitleButtonClick(Sender: TObject; AFieldName: string);
var
         sortInfoHawb:TSOrtInfo;
         Table:TIBCQuery;
begin
        Table:=TIbcQuery(Grid1.DataSource.DataSet);
        SortInfoHawb.Table:=Table;
        G_GeneralProcs.SortGrid(Table,AFieldName,SOrtInfoHawb);
end;

procedure TM_SeminarTypeFRM.LanguageRGPChange(Sender: TObject);
var
  TypeSerial:Integer;
begin
//  SHowMessage(LanguageRGP.Value);
  if SeminarPictureSQL.State in [dsEdit,dsInsert] then
    SeminarPictureSQL.Post;
  TypeSerial:= TableSQL.FieldByName('serial_number').AsInteger;
  if typeSerial<1 then exit;
  if trim(LanguageRGP.Value)='' then exit;


  ShowPicture(TypeSerial,LanguageRGP.Value);
  ShowPictureData(TypeSerial,LanguageRGP.Value);

end;

procedure TM_SeminarTypeFRM.Nav1InsertClick(Sender: TObject);
begin
REminderDescFLD.SetFocus;
end;

procedure TM_SeminarTypeFRM.CertificationTSExit(Sender: TObject);
begin
  If SeminarPictureSQL.State in [dsEdit,dsInsert] then begin
    SeminarPictureSQL.Post;
  end;
// AllowChange:= SeminarPictureSQL.FieldByName('serial_number').AsInteger > 0;

end;

procedure TM_SeminarTypeFRM.CertificationTSShow(Sender: TObject);
var
  SeminarTypeSerial:Integer;
begin
  SeminarTypeSerial:= TableSQL.FieldByName('serial_number').AsInteger;
  CheckPictures(SeminarTypeSerial);
  LanguageRGP.ItemIndex:=0;
  SHowPicture(SeminarTypeSerial,'G');
  SHowPictureData(SeminarTypeSerial,'G');
end;

procedure TM_SeminarTypeFRM.CheckPictures(COnst TypeSerial:Integer);
var
  Serial:Integer;
  str:String;
  strIns:String;
begin
//create the records if not exist

strIns:= 'insert into seminar_type_pictures '
+'(serial_number,FK_SEMINAR_TYPE_SERIAL, LANGUAGE_GREEK_OR_ENGLISH) values (:Serial, :typeSerial, :lang)';

  if TypeSerial<1 then exit;

  str:=
' select serial_number'
  +'  from'
  +'      seminar_type_pictures stp'
  +'  where'
  +'   stp.fk_seminar_type_serial= :SeminarTYpeSerial and stp.language_greek_or_english = :lang';

  if ksCountRecVarSQL(cn,str,[TypeSerial,'G'])=0 then begin
    serial:=ksGenerateSerial(cn,'GEN_SEMINAR_TYPE_PICTURES');
    ksExecSQLVar(cn,strIns,[serial,TypeSerial,'G']);
  end;

  if ksCountRecVarSQL(cn,str,[TypeSerial,'E'])=0 then begin
    serial:=ksGenerateSerial(cn,'GEN_SEMINAR_TYPE_PICTURES');
    ksExecSQLVar(cn,strIns,[serial, TypeSerial,'E']);
  end;


//  SHowPicture(TypeSerial,'G');
end;

////////////////////////////////////////
procedure TM_SeminarTypeFRM.SavePicture(Const SeminarSerial:Integer; Const Language:String;img:Timage);
var
  BlobField: TField;
  BS: TStream;
  str2:String;
  qr:TksQuery;
begin

  str2:='select * from seminar_type_pictures stp '
  + ' where stp.fk_seminar_type_serial= :seminarSerial and LANGUAGE_GREEK_OR_ENGLISH = :language';
  qr:= TksQuery.Create(cn,str2);
   try
    with qr do  begin
      close;
      qr.ParamByName('seminarSerial').Value:=seminarSerial;
      qr.ParamByName('Language').Value:=Language;
      open;
      if qr.IsEmpty then
       exit;
      qr.Edit;
      BlobField := FieldByName('picture_seminar');
      BS := CreateBlobStream(BlobField,bmWrite);
      //bs.Position:=0;
      Img.Picture.SaveToStream(BS);

      if BS.Size=0 then begin
        BlobField.Clear;
      end;
      qr.Post;
      qr.close;

    end;
  finally
    qr.Free;
  end;

end;
function TM_SeminarTypeFRM.SelectPicture():Boolean;
var
  fileName:String;
Begin
    result:=false;
    if not OpenPictureDialog1.Execute then     begin
//    showMessage('exit');
      Exit;
    end;
    filename :=OpenPictureDialog1.FileName;
    ImgShow.Picture :=nil;
    imgShow.Picture.LoadFromFile(filename);
    result:=true;
end;
procedure TM_SeminarTypeFRM.ShowPictureData(Const TypeSerial:Integer;Const  Language:String);
begin
   SeminarPictureSQL.Close;
   SeminarPictureSQL.ParamByName('SeminarSerial').Value:=TypeSerial;
   SeminarPictureSQL.ParamByName('language').Value:=Language;
   SeminarPictureSQL.Open;

end;
procedure TM_SeminarTypeFRM.ShowPicture(Const TypeSerial:Integer;Const  Language:String);
 var
  code:string;
  BlobFIeld:TField;
  BS:TStream;
  qr:TksQuery;
//  imgTemp:TImage;

begin
 if TypeSerial<1 then
    exit;
 if (Language<>'G') ANd (Language<>'E') then
  exit;

  qr:= TksQuery.Create(cn,'select * from seminar_type_pictures stp where stp.fk_seminar_type_serial= :seminarSerial and LANGUAGE_GREEK_OR_ENGLISH = :language');
   try
      with qr do begin
      close;
      qr.ParamByName('seminarSerial').Value:=TypeSerial;
      qr.ParamByName('LANGUAGE').Value:=Language;
      qr.open;
      if qr.IsEmpty then
        exit;
      BlobField := qr.FieldByName('picture_seminar');
      BS := CreateBlobStream(BlobField,bmRead);
      bs.Position:=0;
      ImgShow.Picture.LoadFromStream(bs);

      if BS.Size=0 then begin
        ImgShow.Picture:=nil;
      end;

      close;
      end;
   finally
      qr.Free;
//      imgTemp.Free;
   end;


end;
//////////////////////////////////////////
End.
