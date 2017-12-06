unit M_seminarType;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL,G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl, vcl.Wwdbdatetimepicker,
  vcl.wwcheckbox, Vcl.ComCtrls, RzDBEdit, RzTabs, RzRadGrp, RzDBRGrp,
  Vcl.ExtDlgs, vcl.wwclearbuttongroup, vcl.wwradiogroup, vcl.wwriched,codeSiteLogging,CodeSiteMessage,
  Vcl.Menus
;
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
    wwIncrementalSearch1: TwwIncrementalSearch;
    Panel4: TRzPanel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    BitBtn1: TBitBtn;
    CanelBTN: TBitBtn;
    ReminderTS: TRzTabSheet;
    SeminarReminderSRC: TDataSource;
    SeminarReminderSQL: TIBCQuery;
    RzPanel6: TRzPanel;
    wwIncrementalSearch2: TwwIncrementalSearch;
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
    wwDBGrid2: TwwDBGrid;
    AfterFLD: TwwDBComboBox;
    NamePersonFLD: TwwDBComboBox;
    StartEndLD: TwwDBComboBox;
    TableSQLFEE_ESTIMATE: TFloatField;
    TableSQLMAX_CAPACITY: TIntegerField;
    TableSQLHAS_EXPIRY: TWideStringField;
    TableSQLEXPIRY_PERIOD: TIntegerField;
    TableSQLFEE_ACTUAL: TFloatField;
    TableSQLFEE_WITH_ANAD_SUB: TFloatField;
    TitlePNL: TRzPanel;
    RzPanel8: TRzPanel;
    TableSQLTYPE_MONO_POLY: TWideStringField;
    SeminarReminderSQLIS_HIGH: TWideStringField;
    CertificationTS: TRzTabSheet;
    SeminarPictureSQL: TIBCQuery;
    SeminarPictureSRC: TDataSource;
    OpenPictureDialog1: TOpenPictureDialog;
    LanguageRGP: TwwRadioGroup;
    RzGroupBox2: TRzGroupBox;
    SelTopLeftBTN: TRzBitBtn;
    ClearTopLeftBTN: TRzBitBtn;
    TopFLD: TwwDBRichEdit;
    MiddleFLD: TwwDBRichEdit;
    CertDirectorFLD: TwwDBRichEdit;
    CertInstructorFLD: TwwDBRichEdit;
    BottomFLD: TwwDBRichEdit;
    BottomLeftFLD: TwwDBRichEdit;
    RzPanel7: TRzPanel;
    PICTURE_TOP_L1: TImage;
    RzPanel9: TRzPanel;
    PICTURE_TOP_R1: TImage;
    RzPanel10: TRzPanel;
    PICTURE_BOT_L1: TImage;
    RzPanel11: TRzPanel;
    PICTURE_BOT_R1: TImage;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    wwDBEdit11: TwwDBEdit;
    wwDBEdit12: TwwDBEdit;
    wwDBEdit13: TwwDBEdit;
    wwDBEdit14: TwwDBEdit;
    wwDBEdit15: TwwDBEdit;
    CopyDefaultBTN: TRzBitBtn;
    SaveDefaultBTN: TRzBitBtn;
    SeminarPictureSQLSERIAL_NUMBER: TIntegerField;
    SeminarPictureSQLFK_SEMINAR_TYPE_SERIAL: TIntegerField;
    SeminarPictureSQLLANGUAGE_GREEK_OR_ENGLISH: TWideStringField;
    SeminarPictureSQLPICTURE_SEMINAR: TBlobField;
    SeminarPictureSQLLINE_A1: TWideStringField;
    SeminarPictureSQLLINE_A2: TWideStringField;
    SeminarPictureSQLLINE_B1: TWideStringField;
    SeminarPictureSQLLINE_B2: TWideStringField;
    SeminarPictureSQLLINE_B3: TWideStringField;
    SeminarPictureSQLTL_X: TIntegerField;
    SeminarPictureSQLTL_Y: TIntegerField;
    SeminarPictureSQLTR_X: TIntegerField;
    SeminarPictureSQLTR_Y: TIntegerField;
    SeminarPictureSQLBL_X: TIntegerField;
    SeminarPictureSQLBL_Y: TIntegerField;
    SeminarPictureSQLBR_X: TIntegerField;
    SeminarPictureSQLBR_Y: TIntegerField;
    SeminarPictureSQLPICTURE_TOP_L1: TBlobField;
    SeminarPictureSQLPICTURE_TOP_R1: TBlobField;
    SeminarPictureSQLPICTURE_BOT_L1: TBlobField;
    SeminarPictureSQLPICTURE_BOT_R1: TBlobField;
    SeminarPictureSQLLINE_C1: TWideStringField;
    certificatesHelpRE: TwwDBRichEdit;
    MainMenu1: TMainMenu;
    Help1: TMenuItem;
    Certifcates1: TMenuItem;
    CopyHardBTN: TRzBitBtn;
    SaveHardBTN: TRzBitBtn;
    RzPanel12: TRzPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    SerialFLD: TRzDBLabel;
    Label7: TLabel;
    Label18: TLabel;
    FirstFLD: TwwDBEdit;
    wwDBEdit1: TwwDBEdit;
    RzDBRichEdit1: TRzDBRichEdit;
    wwCheckBox1: TwwCheckBox;
    RzGroupBox1: TRzGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    Label17: TLabel;
    wwCheckBox2: TwwCheckBox;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    SecondGRP: TRzGroupBox;
    Label19: TLabel;
    Label21: TLabel;
    Label1: TLabel;
    Label8: TLabel;
    wwDBEdit9: TwwDBEdit;
    wwDBEdit10: TwwDBEdit;
    CompletedFLD: TwwCheckBox;
    wwDBEdit2: TwwDBEdit;
    RzPanel13: TRzPanel;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    wwNavButton7: TwwNavButton;
    wwNavButton8: TwwNavButton;
    RzPanel14: TRzPanel;
    RzPanel17: TRzPanel;
    GroupBox4: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    RzDBLabel1: TRzDBLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label20: TLabel;
    REminderDescFLD: TwwDBEdit;
    wwDBEdit8: TwwDBEdit;
    RzDBRichEdit2: TRzDBRichEdit;
    RzDBRadioGroup2: TRzDBRadioGroup;
    RzDBRadioGroup3: TRzDBRadioGroup;
    RzDBRadioGroup4: TRzDBRadioGroup;
    RzDBRadioGroup1: TRzDBRadioGroup;
    wwCheckBox3: TwwCheckBox;
    RzPanel15: TRzPanel;
    RzPanel16: TRzPanel;
    wwDBNavigator3: TwwDBNavigator;
    wwNavButton9: TwwNavButton;
    wwNavButton10: TwwNavButton;
    wwNavButton11: TwwNavButton;
    wwNavButton12: TwwNavButton;
    wwNavButton13: TwwNavButton;
    wwNavButton14: TwwNavButton;
    wwNavButton15: TwwNavButton;
    wwNavButton16: TwwNavButton;
    RzPanel18: TRzPanel;
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
    procedure CertificationTSShow(Sender: TObject);
    procedure CertificationTSExit(Sender: TObject);
    procedure TableSQLAfterScroll(DataSet: TDataSet);
    procedure PICTURE_TOP_L1DblClick(Sender: TObject);
    procedure PICTURE_TOP_L1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SaveDefaultBTNClick(Sender: TObject);
    procedure CopyDefaultBTNClick(Sender: TObject);
    procedure LanguageRGPChange(Sender: TObject);
    procedure Certifcates1Click(Sender: TObject);
    procedure CopyHardBTNClick(Sender: TObject);
    procedure SaveHardBTNClick(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;

  procedure ShowAll(Const SeminarSerial:integer;Const Language :String);
  procedure CheckPicturesT(COnst TypeSerial:Integer);
  function  SelectPictureT(var img :TImage):Boolean;
  procedure ShowPictureDataT(Const TypeSerial:Integer;Const  Language:String);
  procedure ShowPictureT(Const TypeSerial:Integer;Const aFieldName :String;Const  Language:String;img:TImage);
  procedure SavePictureT(Const SeminarSerial:Integer;Const aFieldName:String; Const Language:String;img:Timage);
  procedure SelectAndSavePictureT(Const SeminarSerial:Integer;Const Language:String; img:TImage);
  procedure ClearPictureT(Const SeminarSerial:Integer;Const aFieldName :String; Const Language:String;img:Timage);



  procedure CopyFromDefault(Const PictureSerial:Integer;Const DefaultPicSerial:Integer; Const Language:String);
  procedure SaveToDefault(Const PictureSerial:Integer;Const DefaultPicSerial:integer;Const Language:String);

  public
    { Public declarations }
    MyInsertState:Boolean;
    IN_ACTION:String;

  end;

var
  M_SeminarTypeFRM: TM_SeminarTypeFRM;

implementation

uses   U_Database, G_generalProcs, G_SFCommonProcs, H_Help;


{$R *.DFM}

procedure TM_SeminarTypeFRM.BitBtn1Click(Sender: TObject);
begin
 if SeminarPictureSQL.State in [dsEdit, dsInsert] then begin
         SeminarPictureSQL.Post;
 end;
end;

procedure TM_SeminarTypeFRM.TableSQLAfterScroll(DataSet: TDataSet);
begin
         TitlePNL.Caption:='TEMPLATE for '+ Trim(Dataset.FieldByName('seminar_name').AsString);
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
  SeminarSerial:Integer;
  Language:String;
begin
  if SeminarPictureSQL.State in [dsEdit,dsInsert] then
    SeminarPictureSQL.Post;
  SeminarSerial:= TableSQL.FieldByName('serial_number').AsInteger;
  Language:=LanguageRGP.Value;
  ShowAll(seminarSerial,Language);

end;

procedure TM_SeminarTypeFRM.ShowAll(Const SeminarSerial:integer;Const Language :String);
begin
  if SeminarSerial<1 then exit;
  if trim(LanguageRGP.Value)='' then exit;

  SHowPictureT(SeminarSerial,Picture_top_l1.Name, Language, Picture_top_L1);
  SHowPictureT(SeminarSerial,Picture_top_R1.Name, Language, Picture_top_R1);
  SHowPictureT(SeminarSerial,Picture_bot_l1.Name, Language, Picture_bot_L1);
  SHowPictureT(SeminarSerial,Picture_bot_R1.Name, Language, Picture_bot_R1);

  ShowPictureDataT(SeminarSerial,Language);
end;



procedure TM_SeminarTypeFRM.Nav1InsertClick(Sender: TObject);
begin
REminderDescFLD.SetFocus;
end;

procedure TM_SeminarTypeFRM.PICTURE_TOP_L1DblClick(Sender: TObject);
begin
  SelectAndSavePictureT(TableSQL.fieldbyName('serial_number').AsInteger,LanguageRGP.Values[LanguageRGP.ItemIndex],TImage(Sender));
end;

procedure TM_SeminarTypeFRM.PICTURE_TOP_L1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (ssCtrl in Shift) then begin
    ClearPictureT(TableSQL.fieldbyName('serial_number').AsInteger,TImage(sender).name, LanguageRGP.Values[LanguageRGP.ItemIndex],TImage(Sender));
  end;
end;

procedure TM_SeminarTypeFRM.Certifcates1Click(Sender: TObject);
vAR
  Frm:TH_HelpFRM;
begin
  frm := TH_HelpFRM.Create(nil);
  try

    frm.IN_RtfTExt:=certificatesHelpRE.Text;
    frm.IN_RichEdit:=certificatesHelpRE;
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TM_SeminarTypeFRM.CertificationTSExit(Sender: TObject);
begin
  If SeminarPictureSQL.State in [dsEdit,dsInsert] then begin
    SeminarPictureSQL.Post;
  end;

end;

procedure TM_SeminarTypeFRM.CertificationTSShow(Sender: TObject);
var
  SeminarSerial:Integer;
begin
  SeminarSerial:= TableSQL.FieldByName('serial_number').AsInteger;
  LanguageRGP.ItemIndex:=0;
//  showMessage(LanguageRGP.Values[LanguageRGP.ItemIndex]);
//  showMessage(languageRGP.Value);
  CheckPicturesT(SeminarSerial);
  SHowPictureT(SeminarSerial,Picture_top_l1.Name,'G',Picture_top_L1);
  SHowPictureT(SeminarSerial,Picture_top_R1.Name,'G',Picture_top_R1);
  SHowPictureT(SeminarSerial,Picture_bot_l1.Name,'G',Picture_bot_L1);
  SHowPictureT(SeminarSerial,Picture_bot_R1.Name,'G',Picture_bot_R1);
  SHowPictureDataT(SeminarSerial,'G');
end;

////////////////////////////////////////

////////////////////////////////////////
///
///
///
procedure TM_SeminarTypeFRM.CheckPicturesT(COnst TypeSerial:Integer);
var
  Serial:Integer;
  str:String;
  strIns:String;
begin
//create the records if not exist

strIns:= 'insert into seminar_Type_pictures '
+'(serial_number,FK_SEMINAR_Type_SERIAL, LANGUAGE_GREEK_OR_ENGLISH) values (:Serial, :typeSerial, :lang)';

  if TypeSerial<1 then exit;

  str:=
' select serial_number'
  +'  from'
  +'      seminar_Type_pictures stp'
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


end;
procedure TM_SeminarTypeFRM.ClearPictureT(Const SeminarSerial:Integer;Const aFieldName :String; Const Language:String;img:Timage);
begin
//  showMessage('clear lang='+language);


  img.Picture:=nil;
  SavePictureT(SeminarSerial,aFieldName, LanguageRGP.Values[LanguageRGP.ItemIndex],img);
end;


procedure TM_SeminarTypeFRM.SavePictureT(Const SeminarSerial:Integer;Const aFieldName :String; Const Language:String;img:Timage);
var
//  BlobField: TField;
  BlobField: TBlobField;
  BS: TStream;
  str2:String;
  qr:TksQuery;
begin

//  CodeSite.send(InttoStr(SeminarSerial));
//
//  CodeSite.Send(afieldName);
//  CodeSite.Send(Language);
//  CodeSite.Send(img.Name);
  str2:='select * from seminar_Type_pictures stp '
  + ' where stp.fk_seminar_Type_serial= :seminarSerial and LANGUAGE_GREEK_OR_ENGLISH = :language';
  qr:= TksQuery.Create(cn,str2);
   try
    with qr do  begin
      close;
      qr.ParamByName('seminarSerial').Value:=seminarSerial;
      qr.ParamByName('Language').Value:=Language;
      open;
      if qr.IsEmpty then
       exit;

      if (qr.FindField(aFieldName)=nil) then begin
        ShowMessage('Cannot find field. Name of the picture =fieldname= '+aFieldName);
        exit;
      end;

      qr.Edit;
      BlobField := FieldByName(aFieldName) as TBlobField;
      BS := qr.CreateBlobStream(BlobField,bmWrite);
      try
        Bs.Position:=0;
        Img.Picture.SaveToStream(BS);

        if BS.Size=0 then begin
          BlobField.Clear;
        end;
        qr.Post;
        qr.close;

      finally
      //    BS.Free;
      // somehow it is freed by itself and i get a runtime erro
      end;

    end;
  finally
    qr.Free;
//    BS.Free;
  end;

end;
function TM_SeminarTypeFRM.SelectPictureT(var img:TImage):Boolean;
var
  fileName:String;
Begin
    result:=false;
    if not OpenPictureDialog1.Execute then     begin
//    showMessage('exit');
      Exit;
    end;
    filename :=OpenPictureDialog1.FileName;
    Img.Picture :=nil;
    img.Picture.LoadFromFile(filename);
    result:=true;
end;
procedure TM_SeminarTypeFRM.ShowPictureDataT(Const TypeSerial:Integer;Const  Language:String);
begin
   SeminarPictureSQL.Close;
   SeminarPictureSQL.ParamByName('SeminarSerial').Value:=TypeSerial;
   SeminarPictureSQL.ParamByName('language').Value:=Language;
   SeminarPictureSQL.Open;

end;
procedure TM_SeminarTypeFRM.ShowPictureT(Const TypeSerial:Integer;Const aFieldName :String; Const  Language:String;img:TImage);
 var
  code:string;
  BlobFIeld:TField;
  BS:TStream;
  qr:TksQuery;
//  imgTemp:TImage;


begin

 if TypeSerial<1 then
    exit;
 if (Language<>'G') ANd (Language<>'E') then begin
  showMessage('ERROR lang='+language);
  exit;
 end;

  Img.Picture:= nil;

  qr:= TksQuery.Create(cn,'select * from seminar_Type_pictures stp where stp.fk_seminar_Type_serial= :seminarSerial and LANGUAGE_GREEK_OR_ENGLISH = :language');
   try
      with qr do begin
        qr.close;
        qr.ParamByName('seminarSerial').Value:=TypeSerial;
        qr.ParamByName('LANGUAGE').Value:=Language;
        qr.open;
        if qr.IsEmpty then
          exit;

        if (qr.FindField(aFieldName)=nil) then begin
        ShowMessage('Cannot find field. Name of the picture =fieldname= '+aFieldName);
        exit;
        end;

//        if aFieldName='PICTURE_TOP_R1' then
//         img.Picture.LoadFromFile('C:\Data\DelphiProjects\Safe_CRM\pictures\SafetyLogo.png');


        BlobField := qr.FieldByName(aFieldName);
        BS := qr.CreateBlobStream(BlobField,bmRead);
        try
          BS.Position:=0;
          if bs.Size>0 then
            Img.Picture.LoadFromStream(bs)
          else
            Img.Picture:= nil;
          qr.Close;
        finally
          bs.Free;
        end;

      end;


   finally
      qr.Free;
   end;


end;


procedure TM_SeminarTypeFRM.SelectAndSavePictureT(Const SeminarSerial:Integer;Const Language:String; img:TImage);
begin
//  SeminarSerial:=SeminarSQL.fieldbyName('serial_number').AsInteger;
  if SelectPictureT(img) then begin
    SavePictureT(SeminarSerial, img.Name, Language,img);
    ShowPictureT(SeminarSerial,img.Name,Language, img);
//    ShowPictureData(TypeSerial,LanguageRGP.Value);
  end;


end;

//////////////////////////////////////////

procedure TM_SeminarTypeFRM.SaveDefaultBTNClick(Sender: TObject);
var
  PictureSerial:Integer;
  Language:string;
begin
    if SeminarPictureSQL.State in [dsEdit,dsInsert] then begin
      SeminarPictureSQL.post;
    end;
    PictureSerial:=SeminarPictureSQL.FieldByName('serial_number').AsInteger;
    Language:= SeminarPictureSQL.FieldByName('LANGUAGE_GREEK_OR_ENGLISH').AsString;
    SaveToDefault(PictureSerial,0,Language);
end;


procedure TM_SeminarTypeFRM.SaveHardBTNClick(Sender: TObject);
var
  PictureSerial:Integer;
  Language:string;
begin
    if SeminarPictureSQL.State in [dsEdit,dsInsert] then begin
      SeminarPictureSQL.post;
    end;
    PictureSerial:=SeminarPictureSQL.FieldByName('serial_number').AsInteger;
    Language:= SeminarPictureSQL.FieldByName('LANGUAGE_GREEK_OR_ENGLISH').AsString;
    SaveToDefault(PictureSerial,-1,Language);

end;

procedure TM_SeminarTypeFRM.SaveToDefault(Const PictureSerial:Integer;Const DefaultPicSerial:Integer;Const Language:String);
var
  DefaultQr:TksQuery;
  pictQR:TksQuery;
//  PictureSerial:integer;
//  Language:String;
begin

  DefaultQR:=TksQuery.Create(cn,'select * from prototype_pictures where serial_number= :defSerial and LANGUAGE_GREEK_OR_ENGLISH = :language');
  PictQR:=TksQuery.Create(cn,'SELECT * FROM seminar_type_pictures where serial_number = :SerialNumber ');

  try

    pictQr.ParamByName('SerialNumber').Value:=PictureSerial;
    PictQr.Open;
    if PictQR.IsEmpty then
      exit;

    DefaultQr.ParamByName('DefSerial').Value:=DefaultPicSerial;
    DefaultQr.ParamByName('Language').Value:=Language;
    DefaultQR.Open;
    if DefaultQR.IsEmpty then begin
      DefaultQR.Insert
    end else begin
      DefaultQR.Edit;
    end;

//    DefaultQr.FieldByName('LANGUAGE_GREEK_OR_ENGLISH').Value:=Language;
    CopyDataRecord(pictQR,DefaultQr);
    DefaultQr.FieldByName('serial_number').Value:=DefaultPicSerial;
    codeSite.Send('TksQuery',DefaultQr);

    DefaultQr.Post;
  finally
    pictQR.Free;
    DefaultQr.Free;
  end;

end;


procedure TM_SeminarTypeFRM.CopyDefaultBTNClick(Sender: TObject);
var
  SeminarSerial:Integer;
  PictureSerial:Integer;
  Language:string;
begin

    SeminarSerial:= TableSQL.FieldByName('serial_number').AsInteger;
    PictureSerial:=SeminarPictureSQL.FieldByName('serial_number').AsInteger;
    Language:= SeminarPictureSQL.FieldByName('LANGUAGE_GREEK_OR_ENGLISH').AsString;
    CopyFromDefault(PictureSerial,0,Language);
    ShowAll(SeminarSerial,Language);

end;

procedure TM_SeminarTypeFRM.CopyFromDefault(Const PictureSerial:Integer;Const DefaultPicSerial:Integer;Const Language:String);
var
  DefaultQr:TksQuery;
  pictQR:TksQuery;
//  PictureSerial:integer;
  Picture_FK:Integer;
//  Language:String;
begin

  DefaultQR:=TksQuery.Create(cn,'select * from prototype_pictures where serial_number= :defSerial and LANGUAGE_GREEK_OR_ENGLISH = :language');
  PictQR:=TksQuery.Create(cn,'SELECT * FROM seminar_type_pictures where serial_number = :SerialNumber ');

  try
//    PictureSerial:=SeminarPictureSQL.FieldByName('serial_number').AsInteger;

    DefaultQr.ParamByName('DefSerial').Value:=DefaultPicSerial;
    DefaultQr.ParamByName('Language').Value:=Language;
    DefaultQR.Open;

    if DefaultQR.IsEmpty then begin
      exit;
    end;

    pictQr.ParamByName('SerialNumber').Value:=PictureSerial;
    PictQr.Open;
    if PictQR.IsEmpty then
      exit;

    Picture_FK:=SeminarPictureSQL.FieldByName('FK_SEMINAR_TYPE_SERIAL').AsInteger;

    pictQR.Edit;
    CopyDataRecord(DefaultQr,pictQR);
    PictQr.FieldByName('FK_SEMINAR_TYPE_SERIAL').Value:=Picture_FK;

    PictQr.Post;
  finally
    pictQR.Free;
    DefaultQr.Free;
  end;



end;



procedure TM_SeminarTypeFRM.CopyHardBTNClick(Sender: TObject);
var
  SeminarSerial:Integer;
  PictureSerial:Integer;
  Language:string;
begin

    SeminarSerial:= TableSQL.FieldByName('serial_number').AsInteger;
    PictureSerial:=SeminarPictureSQL.FieldByName('serial_number').AsInteger;
    Language:= SeminarPictureSQL.FieldByName('LANGUAGE_GREEK_OR_ENGLISH').AsString;
    CopyFromDefault(PictureSerial,-1,Language);
    ShowAll(SeminarSerial,Language);
end;

//////////////////////////////////////////
End.
