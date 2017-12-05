unit R_Certificate;

interface

uses
  Windows, Messages, SysUtils,System.DateUtils,System.math,System.strUtils,system.Character, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc,
   DBAccess, IBC, MemDS, IBCError,  Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit,  DBGrids, wwdbdatetimepicker, ppDB, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppBands, ppProd, ppReport, ppComm, ppRelatv,
  ppCache, ppDBPipe,ppTypes,ppviewr, ppDesignLayer, ppParameter, RzButton,
  RzPanel, Vcl.Imaging.pngimage, VirtualTable, myChkBox, vcl.wwclearbuttongroup,
  vcl.wwradiogroup, ppStrtch, ppRichTx, Vcl.ComCtrls, vcl.wwriched,ClipBrd,
  Vcl.DBCtrls, RzDBEdit;

type
  TReminderResult= Record
    daysLeft:Integer;
    DateFinal:Tdate;
  End;
  TReplaceItem= Record
    text:String;
    Field:String;
  End;
  TImgPos= record
    fName:String;
    Left:double;
    Top:double;
    FieldForLeft:String;
    FieldForRIght:String;
  end;


  TR_certificateFRM = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    CertificatePIP: TppDBPipeline;
    PrintRBtn: TBitBtn;
    Panel11: TRzPanel;
    BitBtn1: TBitBtn;
    ppReport1: TppReport;
    ppParameterList3: TppParameterList;
    ddBand: TppDetailBand;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    CertificateSQL: TIBCQuery;
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
    ppFooterBand1: TppFooterBand;
    LanguageRGP: TwwRadioGroup;
    SeminarPicturesSQL: TIBCQuery;
    SeminarPictureSRC: TDataSource;
    SeminarPIcturePIP: TppDBPipeline;
    TopFld: TppDBRichText;
    ppReport2: TppReport;
    ppDetailBand1: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel7: TppLabel;
    ppVariable1: TppVariable;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppVariable3: TppVariable;
    ppVariable4: TppVariable;
    ppVariable5: TppVariable;
    ppDBRichText2: TppDBRichText;
    ppFooterBand2: TppFooterBand;
    ppLabel16: TppLabel;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    Button1: TButton;
    PICTURE_TOP_L1: TppDBImage;
    ppDBImage2: TppDBImage;
    MiddleFld: TppDBRichText;
    BottomRIghtFLD: TppDBRichText;
    BottomLeftFLD: TppDBRichText;
    SideTopFLD: TppDBRichText;
    ppDBImage3: TppDBImage;
    ppDBRichText7: TppDBRichText;
    CertificateSQLSUBJECT_HOURS: TIntegerField;
    CertificateSQLSEMINAR_CERTIFICATE: TWideStringField;
    CertificateSQLSEX: TWideStringField;
    SeminarPicturesSQLSERIAL_NUMBER: TIntegerField;
    SeminarPicturesSQLFK_SEMINAR_SERIAL: TIntegerField;
    SeminarPicturesSQLLANGUAGE_GREEK_OR_ENGLISH: TWideStringField;
    SeminarPicturesSQLPICTURE_SEMINAR: TBlobField;
    SeminarPicturesSQLLINE_A1: TWideStringField;
    SeminarPicturesSQLLINE_A2: TWideStringField;
    SeminarPicturesSQLLINE_B1: TWideStringField;
    SeminarPicturesSQLLINE_B2: TWideStringField;
    SeminarPicturesSQLLINE_B3: TWideStringField;
    SeminarPicturesSQLLINE_C1: TWideStringField;
    SeminarPicturesSQLPICTURE_TOP_L1: TBlobField;
    SeminarPicturesSQLPICTURE_TOP_R1: TBlobField;
    SeminarPicturesSQLPICTURE_BOT_L1: TBlobField;
    SeminarPicturesSQLPICTURE_BOT_R1: TBlobField;
    SeminarPicturesSQLTL_X: TIntegerField;
    SeminarPicturesSQLTL_Y: TIntegerField;
    SeminarPicturesSQLTR_X: TIntegerField;
    SeminarPicturesSQLTR_Y: TIntegerField;
    SeminarPicturesSQLBL_X: TIntegerField;
    SeminarPicturesSQLBL_Y: TIntegerField;
    SeminarPicturesSQLBR_X: TIntegerField;
    SeminarPicturesSQLBR_Y: TIntegerField;
    CertificateSQLANAD_NUMBER: TWideStringField;
    ppDBImage4: TppDBImage;
    wwMemo: TwwDBRichEdit;
    LeftStartVar: TppVariable;
    procedure BitBtn2Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
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
    procedure SerialLblCalc(Sender: TObject; var Value: Variant);
    procedure SubjectLblCalc(Sender: TObject; var Value: Variant);
    procedure Button1Click(Sender: TObject);
    procedure PICTURE_TOP_L1Print(Sender: TObject);
    procedure TopFldGetRichText(Sender: TObject; var Text: string);
    procedure ppReport1BeforePrint(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  procedure PrintSeminar(Const SeminarSerial,CertificateSerial:Integer;Const language:String);

  function ReplaceText(picFIeldName:String):String;
  procedure MovePosition(img :TppDBImage);

  public
    { Public declarations }
    IN_Seminar_Serial:Integer;
    IN_certificate_serial:Integer;
    IN_Language:String;
    procedure PrintTheSeminar();

  end;

var
  R_certificateFRM: TR_certificateFRM;
  ImgPosArray : array of TImgPos;

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




procedure TR_certificateFRM.Button1Click(Sender: TObject);
begin
showMessage(LanguageRGP.Value);
end;


procedure TR_certificateFRM.DurationFLDCalc(Sender: TObject;
  var Value: Variant);
begin
            value:='Διάρκειας: '+CertificateSQL.FieldByName('seminar_duration').AsString + ' ωρών';

end;

procedure TR_certificateFRM.ppReport1BeforePrint(Sender: TObject);
const
   imgNames :TArray<String> =[ 'PICTURE_TOP_L1', 'PICTURE_TOP_R1' ,'PICTURE_BOT_L1', 'PICTURE_BOT_L1'];
var
  I:integer;
  img:TppdbImage;
   imgPos:TImgPos;
   ndx:Integer;
begin
    for i := 0 to ComponentCount - 1 do    begin
      if  (Components[i] is TppdbImage) then begin
        img:=TppdbImage(Components[i]);
        imgPos.fName:=img.DataField;
        ImgPos.Left:=img.Left;
        ImgPos.Top:=Img.Top;

        Case  IndexStr(imgPos.fName,imgNames ) of
          0:begin imgPos.FieldForLeft:='TL_X';imgPos.FieldForRIght:='TL_Y' end;
          1:begin imgPos.FieldForLeft:='TR_X';imgPos.FieldForRIght:='TR_Y' end;
          2:begin imgPos.FieldForLeft:='BL_X';imgPos.FieldForRIght:='BL_Y' end;
          3:begin imgPos.FieldForLeft:='BR_X';imgPos.FieldForRIght:='BR_Y' end;
          -1:begin imgPos.FieldForLeft:='xxx';imgPos.FieldForRIght:='yyy' end;
        else
          ShowMessage('FIeld NOT FOUND Option'); // present, but not handled above
        end;

        insert(imgPos,ImgPosArray,0);
      end;

    end;
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
            value:=AnsiUpperCase(Trim(CertificateSQL.FieldByName('First_name').AsString))+'  '+
            AnsiUpperCase(Trim(CertificateSQL.FieldByName('First_name').AsString));

end;

procedure TR_certificateFRM.PICTURE_TOP_L1Print(Sender: TObject);
begin
  MovePosition(TppDBImage(Sender));
end;

procedure TR_certificateFRM.ppVariable3Calc(Sender: TObject; var Value: Variant);
begin
//   value:=FromDateFLD.Date;
end;

procedure TR_certificateFRM.RzBitBtn1Click(Sender: TObject);
begin
  close;
end;




procedure TR_certificateFRM.SerialLblCalc(Sender: TObject; var Value: Variant);
begin
  value:='SPCN '+CertificateSQL.FieldByName('serial_number').AsString;
end;

procedure TR_certificateFRM.SubjectLblCalc(Sender: TObject; var Value: Variant);
const
    right = $201D;
   left = $201C;
var
  strLeft:string;
  strRight:String;
begin
    strLeft:=char(left);
    strright:=char(right);
  value:= strLeft +CertificateSQL.FieldByName('Seminar_subject').AsString+StrRight;
end;


procedure TR_certificateFRM.TopFldGetRichText(Sender: TObject;
  var Text: string);
var
  rtfText:String;
begin
  rtfText:=  ReplaceText(TppDBRichText(Sender).DataField);
  text:=rtfText;
end;

procedure TR_certificateFRM.VtFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  accept := Dataset.FieldByName('DaysCalc').asInteger >= 0;
end;


procedure TR_certificateFRM.PrintRBtnClick(Sender: TObject);
begin
  PrintTheSeminar();
end;


procedure TR_certificateFRM.PrintTheSeminar();
var
  Language:String;

begin
  Language:=LanguageRGP.Values[LanguageRGP.ItemIndex];
  PrintSeminar(IN_Seminar_Serial,IN_certificate_serial,Language);
end;

procedure TR_certificateFRM.PrintSeminar(Const SeminarSerial,CertificateSerial:Integer;Const Language:String);
Var
   FromDate:TDateTime;
   DaysLeft:integer;
begin


  CertificateSQL.Close;
  CertificateSQL.RestoreSQL;

  with CertificateSQL do begin
    if CertificateSerial>0 then begin
        CertificateSQL.AddWhere('serial_number = :CertificateSerial');
        CertificateSQL.ParamByName('CertificateSerial').Value:=CertificateSerial;
    end;
    CertificateSQL.ParamByName('SeminarSerial').Value:=SeminarSerial;
    Open ;
  end;

    with SeminarPicturesSQL do begin
    SeminarPicturesSQL.Close ;
    SeminarPicturesSQL.ParamByName('SeminarSerial').Value:=SeminarSerial;
    SeminarPicturesSQL.ParamByName('Language').Value:=Language;
    SeminarPicturesSQL.Open ;
    if     SeminarPicturesSQL.IsEmpty then begin
      showMessage('error: missing seminar picture record');
      exit;
    end;
  end;



 PpReport1.Print;

end;

procedure TR_certificateFRM.FormActivate(Sender: TObject);
begin
LanguageRGP.ItemIndex:=0;

end;


procedure TR_certificateFRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;


procedure TR_certificateFRM.IdFLDCalc(Sender: TObject; var Value: Variant);
begin
    value:='(Αρ. Ταυτότητας: '+Trim(CertificateSQL.FieldByName('National_id').AsString)+ ')' ;

end;


function TR_certificateFRM.ReplaceText(picFIeldName:String):String;
const
  ReplaceArray : array of String= ['[NAME]','[SEX]','[ID]','[HOURS]','[DATE]','[ANAD]' ];
//  ReplaceArray : array of String= ['[NAME]'];

var
  SelPos: Integer;
  txt:String;
  toEnd:Integer;
  Token:String;
  TokenInMemo:String;
  temp:String;
  GreekOrEnglish:String;
  isAllUpper:Boolean;
  isAllLower:Boolean;
begin

  wwMemo.Clear;
  wwMemo.SetRtfText(SeminarPicturesSQL.FieldByName(picFieldName).AsString);


 For token in ReplaceArray do begin

  selPos:=wwMemo.FindText(token,0,3000,[]);

  wwMemo.SelStart:=SelPos;
  if selPos<0 then
    continue;
  wwMemo.SelLength := Length(token);

  tokenInMemo:=wwMemo.SelText;
  isAllUpper:=AllUPper(tokenInMemo);
  isAllLower:=AllLower(tokenInMemo);

          if token='[NAME]' then begin
            temp:=Trim(CertificateSQL.FieldByName('First_name').AsString) +' '+Trim(CertificateSQL.FieldByName('Last_Name').AsString);
             if isAllUpper then begin
                temp:= ToUpper(temp);
                temp:= RemoveAccents(Temp);
             end;

             if isAllLower then begin
                temp:= ToLower(Temp);
             end;

         end else if token='[SEX]' then begin

            temp:=CertificateSQL.FieldByName('SEX').AsString;
            if temp='M' then
              temp:='Ο'
            else
              temp:='Η';

             if isAllUpper then begin
                temp:= ToUpper(temp);
                temp:= RemoveAccents(Temp);
             end;

             if isAllLower then begin
                temp:= ToLower(Temp);
             end;

         end else if token='[ID]' then begin
            temp:=CertificateSQL.FieldByName('National_id').AsString;
         end else if token='[HOURS]' then begin
            temp:=CertificateSQL.FieldByName('SEMINAR_DURATION').AsString;
         end else if token='[DATE]' then begin
            GreekOrEnglish:=SeminarPicturesSQL.FieldByName('LANGUAGE_GREEK_OR_ENGLISH').AsString;
            temp:=FormatGreekDate(CertificateSQL.FieldByName('DATE_ISSUED').AsDateTime,GreekOrEnglish);
             if isAllUpper then begin
                temp:= ToUpper(temp);
                temp:= RemoveAccents(Temp);
             end;

             if isAllLower then begin
                temp:= ToLower(Temp);
             end;
         end else if token='[ANAD]' then begin
            temp:=CertificateSQL.FieldByName('ANAD_NUMBER').AsString;

         end;
        wwMemo.SelText :=Temp;

 end;
 result:=wwMemo.GetRTFText;
end;



procedure TR_certificateFRM.MovePosition(img :TppDBImage);
type
TPosRec= record
    fName:String;
    Left:string;
    Top:string;
  end;


var
  SelPos: Integer;
  LeftPos,TopPos:Double;
  LeftMove,TopMove:Double;
  posRec:TPosRec;


function findElement(const fFieldName:string):TPosRec;
  const
    NulRec :TposRec =  	( Fname : 'NULL'; Left:'';TOp:'');
  var
  item:TPosRec;
  begin
    result:=NulRec;
    for Item in Items do begin
      if item.fName=fFieldName then begin
        result:=item;
        exit;
      end;
    end;

  end;


begin


  leftPos:=img.Left;
  posRec:=findElement(img.DataField);
  if (SeminarPicturesSQL.FindField(posRec.fName) <> nil ) then begin
    img.Left:=img.Left+ SeminarPicturesSQL.FieldByName(posRec.Left).AsFloat/10.0;
    img.Top:=img.Top+ SeminarPicturesSQL.FieldByName(posRec.Top).AsFloat/10;
  end;


//  img.Left:=
//  SHowMessage(posRec.fName);

end;

























end.
