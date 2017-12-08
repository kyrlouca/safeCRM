unit v_SeminarPictureTemplate;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL,G_kyriacosTypes, RzButton, RzPanel, RzLabel, RzDBLbl, vcl.Wwdbdatetimepicker,
  vcl.wwcheckbox, RzTabs, vcl.wwclearbuttongroup, vcl.wwradiogroup,
  Vcl.ComCtrls, vcl.wwriched,codeSiteLogging,
    CodeSiteMessage, Vcl.ExtDlgs, Vcl.Menus;
type
  TV_SeminarPictureTemplateFRM = class(TForm)
    Panel4: TPanel;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    RzPanel1: TRzPanel;
    CloseBTN: TRzBitBtn;
    BitBtn1: TBitBtn;
    CanelBTN: TBitBtn;
    Panel1: TRzPanel;
    SeminarPictureSRC: TDataSource;
    SeminarPictureSQL: TIBCQuery;
    SeminarPictureSQLSERIAL_NUMBER: TIntegerField;
    SeminarPictureSQLPICTURE_SEMINAR: TBlobField;
    SeminarPictureSQLLINE_A1: TWideStringField;
    SeminarPictureSQLLINE_A2: TWideStringField;
    SeminarPictureSQLLINE_B1: TWideStringField;
    SeminarPictureSQLLINE_B2: TWideStringField;
    SeminarPictureSQLLINE_B3: TWideStringField;
    SeminarPictureSQLFK_SEMINAR_SERIAL: TIntegerField;
    SeminarPictureSQLLANGUAGE_GREEK_OR_ENGLISH: TWideStringField;
    SeminarPictureSQLLINE_C1: TWideStringField;
    SeminarPictureSQLPICTURE_TOP_L1: TBlobField;
    SeminarPictureSQLPICTURE_TOP_R1: TBlobField;
    SeminarPictureSQLPICTURE_BOT_L1: TBlobField;
    SeminarPictureSQLPICTURE_BOT_R1: TBlobField;
    SeminarPictureSQLTL_X: TIntegerField;
    SeminarPictureSQLTL_Y: TIntegerField;
    SeminarPictureSQLTR_X: TIntegerField;
    SeminarPictureSQLTR_Y: TIntegerField;
    SeminarPictureSQLBL_X: TIntegerField;
    SeminarPictureSQLBL_Y: TIntegerField;
    SeminarPictureSQLBR_X: TIntegerField;
    SeminarPictureSQLBR_Y: TIntegerField;
    OpenPictureDialog1: TOpenPictureDialog;
    RzPanel2: TRzPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    PictureGRP: TRzGroupBox;
    SelTopLeftBTN: TRzBitBtn;
    ClearTopLeftBTN: TRzBitBtn;
    TopFLD: TwwDBRichEdit;
    MiddleFLD: TwwDBRichEdit;
    CertDirectorFLD: TwwDBRichEdit;
    CertInstructorFLD: TwwDBRichEdit;
    BottomFLD: TwwDBRichEdit;
    BottomLeftFLD: TwwDBRichEdit;
    RzPanel3: TRzPanel;
    PICTURE_TOP_L1: TImage;
    RzPanel4: TRzPanel;
    PICTURE_TOP_R1: TImage;
    RzPanel5: TRzPanel;
    PICTURE_BOT_L1: TImage;
    RzPanel6: TRzPanel;
    PICTURE_BOT_R1: TImage;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    wwDBEdit8: TwwDBEdit;
    LanguageRGP: TwwRadioGroup;
    certificatesHelpRE: TwwDBRichEdit;
    MainMenu1: TMainMenu;
    Help1: TMenuItem;
    Certifcates1: TMenuItem;
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure CloseBTNClick(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure LanguageRGPChange(Sender: TObject);
    procedure PictureGRPExit(Sender: TObject);
    procedure PICTURE_TOP_L1DblClick(Sender: TObject);
    procedure PICTURE_TOP_L1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Certifcates1Click(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
    procedure CheckPicturesX(const TypeSerial: Integer);
    function SelectPictureX(var img: TImage): Boolean;
    procedure ShowPictureDataX(const TypeSerial: Integer; const Language:  string);
    procedure ShowPictureX(const TypeSerial: Integer; const aFieldName: string; const Language: string; img: TImage);
    procedure SavePictureX(const SeminarSerial: Integer; const aFieldName:string; const Language: string; img: Timage);
    procedure SelectAndSavePictureX(const SeminarSerial: Integer; const Language: string; img: TImage);
    procedure ClearPictureX(const SeminarSerial: Integer; const aFieldName:string; const Language: string; img: Timage);

  public
    { Public declarations }
    IN_SeminarSerial:Integer;
    IN_allowModify:boolean;

  end;

var
  V_SeminarPictureTemplateFRM: TV_SeminarPictureTemplateFRM;

implementation

uses   U_Database, G_generalProcs, H_Help;


{$R *.DFM}

procedure TV_SeminarPictureTemplateFRM.BitBtn2Click(Sender: TObject);
begin
    ksPostTables([SeminarPictureSQL]);

end;

procedure TV_SeminarPictureTemplateFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TV_SeminarPictureTemplateFRM.TabSheet1Show(Sender: TObject);
var
  allowModify: boolean;
SeminarSerial:Integer;
begin
  IN_allowMOdify:=True;

  allowModify := IN_AllowMOdify;
  PictureGRP.Enabled := allowModify;

  SeminarSerial := IN_SeminarSerial;
  LanguageRGP.ItemIndex := 0;

  CheckPicturesX(SeminarSerial);
  SHowPictureX(SeminarSerial, Picture_top_l1.Name, 'G', Picture_top_L1);
  SHowPictureX(SeminarSerial, Picture_top_R1.Name, 'G', Picture_top_R1);
  SHowPictureX(SeminarSerial, Picture_bot_l1.Name, 'G', Picture_bot_L1);
  SHowPictureX(SeminarSerial, Picture_bot_R1.Name, 'G', Picture_bot_R1);
  SHowPictureDataX(SeminarSerial, 'G');

end;

procedure TV_SeminarPictureTemplateFRM.CloseBTNClick(Sender: TObject);
begin
close;
end;



procedure TV_SeminarPictureTemplateFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;

procedure TV_SeminarPictureTemplateFRM.LanguageRGPChange(Sender: TObject);
var
  SeminarSerial: Integer;
begin
  if SeminarPictureSQL.State in [dsEdit, dsInsert] then
    SeminarPictureSQL.Post;
  SeminarSerial := IN_SeminarSerial;
  if SeminarSerial < 1 then
    exit;
  if trim(LanguageRGP.Value) = '' then
    exit;

  SHowPictureX(SeminarSerial, Picture_top_l1.Name, LanguageRGP.Value,
    Picture_top_L1);
  SHowPictureX(SeminarSerial, Picture_top_R1.Name, LanguageRGP.Value,
    Picture_top_R1);
  SHowPictureX(SeminarSerial, Picture_bot_l1.Name, LanguageRGP.Value,
    Picture_bot_L1);
  SHowPictureX(SeminarSerial, Picture_bot_R1.Name, LanguageRGP.Value,
    Picture_bot_R1);

  ShowPictureDataX(SeminarSerial, LanguageRGP.Value);
end;

procedure TV_SeminarPictureTemplateFRM.PictureGRPExit(Sender: TObject);
begin
  if SeminarPictureSQL.State in [dsEdit, dsInsert] then
  begin
    SeminarPictureSQL.Post;
  end;

end;

procedure TV_SeminarPictureTemplateFRM.PICTURE_TOP_L1DblClick(Sender: TObject);
begin
  SelectAndSavePictureX(IN_SeminarSerial,
    LanguageRGP.Values[LanguageRGP.ItemIndex], TImage(Sender));

end;

procedure TV_SeminarPictureTemplateFRM.PICTURE_TOP_L1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (ssCtrl in Shift) then
  begin
    ClearPictureX(IN_SeminarSerial,
      TImage(sender).name, LanguageRGP.Values[LanguageRGP.ItemIndex],
      TImage(Sender));
  end;

end;

////////////////////////////////////////
///
///
///

procedure TV_SeminarPictureTemplateFRM.SelectAndSavePictureX(const SeminarSerial: Integer; const
  Language: string; img: TImage);
begin
//  SeminarSerial:=SeminarSQL.fieldbyName('serial_number').AsInteger;
  if SelectPicturex(img) then
  begin
    SavePictureX(SeminarSerial, img.Name, Language, img);
    ShowPictureX(SeminarSerial, img.Name, Language, img);
//    ShowPictureData(TypeSerial,LanguageRGP.Value);
  end;

end;



procedure TV_SeminarPictureTemplateFRM.Certifcates1Click(Sender: TObject);
var
  Frm: TH_HelpFRM;
begin

  frm := TH_HelpFRM.Create(nil);
  try

    frm.IN_RtfTExt := certificatesHelpRE.Text;
    frm.IN_RichEdit := certificatesHelpRE;
    frm.ShowModal;
  finally
    frm.Free;
  end;

end;

procedure TV_SeminarPictureTemplateFRM.CheckPicturesX(const TypeSerial: Integer);
var
  Serial: Integer;
  str: string;
  strIns: string;
begin
//create the records if not exist

  strIns := 'insert into seminar_pictures '
    + '(serial_number,FK_SEMINAR_SERIAL, LANGUAGE_GREEK_OR_ENGLISH) values (:Serial, :typeSerial, :lang)';

  if TypeSerial < 1 then
    exit;

  str :=
    ' select serial_number'
    + '  from'
    + '      seminar_pictures stp'
    + '  where'
    + '   stp.fk_seminar_serial= :SeminarTYpeSerial and stp.language_greek_or_english = :lang';

  if ksCountRecVarSQL(cn, str, [TypeSerial, 'G']) = 0 then
  begin
    serial := ksGenerateSerial(cn, 'GEN_SEMINAR_PICTURES');
    ksExecSQLVar(cn, strIns, [serial, TypeSerial, 'G']);
  end;

  if ksCountRecVarSQL(cn, str, [TypeSerial, 'E']) = 0 then
  begin
    serial := ksGenerateSerial(cn, 'GEN_SEMINAR_PICTURES');
    ksExecSQLVar(cn, strIns, [serial, TypeSerial, 'E']);
  end;

end;

procedure TV_SeminarPictureTemplateFRM.ClearPictureX(const SeminarSerial: Integer; const
  aFieldName: string; const Language: string; img: Timage);
begin
//  showMessage('clear lang='+language);

  img.Picture := nil;
  SavePictureX(SeminarSerial, aFieldName,
    LanguageRGP.Values[LanguageRGP.ItemIndex], img);
end;

procedure TV_SeminarPictureTemplateFRM.SavePictureX(const SeminarSerial: Integer; const
  aFieldName: string; const Language: string; img: Timage);
var
//  BlobField: TField;
  BlobField: TBlobField;
  BS: TStream;
  str2: string;
  qr: TksQuery;
begin

  CodeSite.send(InttoStr(SeminarSerial));

  CodeSite.Send(afieldName);
  CodeSite.Send(Language);
  CodeSite.Send(img.Name);
  str2 := 'select * from seminar_pictures stp '
    + ' where stp.fk_seminar_serial= :seminarSerial and LANGUAGE_GREEK_OR_ENGLISH = :language';
  qr := TksQuery.Create(cn, str2);
  try
      qr.close;
      qr.ParamByName('seminarSerial').Value := seminarSerial;
      qr.ParamByName('Language').Value := Language;
      qr.open;
      if qr.IsEmpty then
        exit;

      if (qr.FindField(aFieldName) = nil) then
      begin
        ShowMessage('Cannot find field. Name of the picture =fieldname= ' +
          aFieldName);
        exit;
      end;

      qr.Edit;
      BlobField := qr.FieldByName(aFieldName) as TBlobField;
      BS := qr.CreateBlobStream(BlobField, bmWrite);
      try
        Bs.Position := 0;
        Img.Picture.SaveToStream(BS);

        if BS.Size = 0 then
        begin
          BlobField.Clear;
        end;
        qr.Post;
//        qr.close;


      finally
    //        BS.Free;
      // it seems that delphi makes the pointer nil if reference count of the object is decreased to zero.
      //  where qr is closed and i get a runtime error
      end;

  finally
    BS.Free;
    qr.Free;
  end;

end;

function TV_SeminarPictureTemplateFRM.SelectPictureX(var img: TImage): Boolean;
var
  fileName: string;
begin
  result := false;
  if not OpenPictureDialog1.Execute then
  begin
//    showMessage('exit');
    Exit;
  end;
  filename := OpenPictureDialog1.FileName;
  Img.Picture := nil;
  img.Picture.LoadFromFile(filename);
  result := true;
end;

procedure TV_SeminarPictureTemplateFRM.ShowPictureDataX(const TypeSerial: Integer; const
  Language: string);
begin
  SeminarPictureSQL.Close;
  SeminarPictureSQL.ParamByName('SeminarSerial').Value := TypeSerial;
  SeminarPictureSQL.ParamByName('language').Value := Language;
  SeminarPictureSQL.Open;

end;

procedure TV_SeminarPictureTemplateFRM.ShowPictureX(const TypeSerial: Integer; const
  aFieldName: string; const Language: string; img: TImage);
var
  code: string;
  BlobFIeld: TField;
  BS: TStream;
  qr: TksQuery;
//  imgTemp:TImage;

begin

  if TypeSerial < 1 then
    exit;
  if (Language <> 'G') and (Language <> 'E') then
  begin
    showMessage('ERROR lang=' + language);
    exit;
  end;

  Img.Picture := nil;

  qr := TksQuery.Create(cn,
    'select * from seminar_pictures stp where stp.fk_seminar_serial= :seminarSerial and LANGUAGE_GREEK_OR_ENGLISH = :language');
  try
      qr.close;
      qr.ParamByName('seminarSerial').Value := TypeSerial;
      qr.ParamByName('LANGUAGE').Value := Language;
      qr.open;
      if qr.IsEmpty then
        exit;

      if (qr.FindField(aFieldName) = nil) then
      begin
        ShowMessage('Cannot find field. Name of the picture =fieldname= ' +
          aFieldName);
        exit;
      end;

//        if aFieldName='PICTURE_TOP_R1' then
//         img.Picture.LoadFromFile('C:\Data\DelphiProjects\Safe_CRM\pictures\SafetyLogo.png');

      BlobField := qr.FieldByName(aFieldName);

      BS := qr.CreateBlobStream(BlobField, bmRead);
      try
        BS.Position := 0;
        if bs.Size > 0 then
          Img.Picture.LoadFromStream(bs)
        else
          Img.Picture := nil;
      finally
      end;
//     qr.Close;


  finally
    bs.Free;
    qr.Free;
  end;

end;
//////////////////////////////////////////


End.
