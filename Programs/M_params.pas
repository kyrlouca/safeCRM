unit M_params;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, DBAccess, IBC,
  MemDS, vcl.wwspeedbutton, vcl.wwdbnavigator, Vcl.ExtCtrls, vcl.wwclearpanel,
  Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, RzPanel, RzRadGrp, Vcl.Mask,
  vcl.Wwdbedit, Vcl.Buttons, RzButton, Vcl.DBCtrls,jpeg,pngimage, Vcl.ExtDlgs;

type
 TitTYPES=(itJPG,itPNG,itBMP);
  TLabelArray = Array of Tlabel;
  TFieldArray = Array of TwwDbEdit;
  TStringArray= Array of String;
  TM_paramsFRM = class(TForm)
    ReadOnlyTrans: TIBCTransaction;
    UpdateTrans: TIBCTransaction;
    Button1: TButton;
    FindGeneralParameterSQL: TIBCQuery;
    ButtonsPNL: TPanel;
    Panel1: TPanel;
    BitBtn1: TRzBitBtn;
    Panel2: TPanel;
    TitleLbl: TLabel;
    RzPanel1: TRzPanel;
    OptionGRP: TRzRadioGroup;
    GroupBox1: TGroupBox;
    PIdLbl: TLabel;
    PS1Lbl: TLabel;
    PI1Lbl: TLabel;
    PF1Lbl: TLabel;
    PS2LBL: TLabel;
    PS3LBL: TLabel;
    PS4LBL: TLabel;
    PS5LBL: TLabel;
    PS6LBL: TLabel;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    VS1FLD: TwwDBEdit;
    VI1FLD: TwwDBEdit;
    VF1FLD: TwwDBEdit;
    ParamFLD: TwwDBEdit;
    VS2FLD: TwwDBEdit;
    VS3FLD: TwwDBEdit;
    VS4FLD: TwwDBEdit;
    VS5FLD: TwwDBEdit;
    VS6FLD: TwwDBEdit;
    File1FLD: TEdit;
    FindParamSRC: TIBCDataSource;
    FindGeneralParameterSQLCODE: TWideStringField;
    FindGeneralParameterSQLINT_1: TIntegerField;
    FindGeneralParameterSQLINT_2: TIntegerField;
    FindGeneralParameterSQLSTR_1: TWideStringField;
    FindGeneralParameterSQLSTR_2: TWideStringField;
    FindGeneralParameterSQLSTR_3: TWideStringField;
    FindGeneralParameterSQLSTR_4: TWideStringField;
    FindGeneralParameterSQLSTR_5: TWideStringField;
    FindGeneralParameterSQLSTR_6: TWideStringField;
    FindGeneralParameterSQLFLOAT_1: TFloatField;
    FindGeneralParameterSQLFLOAT_2: TFloatField;
    FindGeneralParameterSQLDESCRIPTION: TWideStringField;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    FindGeneralParameterSQLANAD_PICTURE: TBlobField;
    DoSQL: TIBCSQL;
    OpenPictureDialog1: TOpenPictureDialog;
    qr: TIBCQuery;
    CODE: TWideStringField;
    qrINT_1: TIntegerField;
    qrINT_2: TIntegerField;
    qrSTR_1: TWideStringField;
    qrSTR_2: TWideStringField;
    qrSTR_3: TWideStringField;
    qrSTR_4: TWideStringField;
    qrSTR_5: TWideStringField;
    qrSTR_6: TWideStringField;
    qrFLOAT_1: TFloatField;
    qrFLOAT_2: TFloatField;
    qrDESCRIPTION: TWideStringField;
    qrANAD_PICTURE: TBlobField;
    ImgShow: TImage;
    Label3: TLabel;
    RzBitBtn4: TRzBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure OptionGRPClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure LoadPicture;
    procedure Img1Click(Sender: TObject);
    procedure RzBitBtn4Click(Sender: TObject);
    procedure FindGeneralParameterSQLAfterScroll(DataSet: TDataSet);

  private
    { Private declarations }
    cn:TIBCConnection;
    procedure SelectPicture();

    procedure ShowOneRecord(RecordIndex:Integer);
  procedure ShowXLabels(LabelValueLine:TstringArray; LabelArray:TlabelArray;FieldsArray:TFieldArray);
  public
    { Public declarations }
  end;

var
  M_paramsFRM: TM_paramsFRM;

implementation

{$R *.dfm}

uses U_Database, G_KyrSQL, M_Main;

procedure TM_paramsFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TM_paramsFRM.Button1Click(Sender: TObject);
var
qr:TksQuery;
name:String;
begin
  qr:=TksQuery.Create(cn,'select * from person');
  try
    qr.Open;
    name:=qr.FieldByName('first_name').AsString;
    showMessage('name'+name);
  finally
    qr.Free;
  end;

end;

procedure TM_paramsFRM.FindGeneralParameterSQLAfterScroll(DataSet: TDataSet);
var
  code:string;
  BlobFIeld:TField;
  BS:TStream;
begin
  code:=FindGeneralParameterSQL.FieldByName('code').AsString;

  with qr do begin
    close;
    qr.ParamByName('Thecode').AsString :=Code;
    open;
    if qr.IsEmpty then
      showMessage('empgy');
    BlobField := FieldByName('anad_picture');

    BS := CreateBlobStream(BlobField,bmRead);
    bs.Position:=0;
    ImgShow.Picture.LoadFromStream(bs);
    close;

  end;

end;

procedure TM_paramsFRM.FormActivate(Sender: TObject);
begin
ShowOneRecord(0);
end;

procedure TM_paramsFRM.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
        if self.FindGeneralParameterSQL.State in [dsEdit,dsInsert] then begin
              self.FindGeneralParameterSQL.Post ;
        end;

end;

procedure TM_paramsFRM.FormCreate(Sender: TObject);
begin
cn:=U_databaseFRM.DataConnection;
end;

procedure TM_paramsFRM.Img1Click(Sender: TObject);
begin
  loadPicture();
end;

procedure TM_paramsFRM.OptionGRPClick(Sender: TObject);
begin

  ShowOneRecord(OptionGRP.ItemIndex);
end;



procedure TM_paramsFRM.RzBitBtn1Click(Sender: TObject);
begin
self.FindGeneralParameterSQL.Cancel;
end;

procedure TM_paramsFRM.RzBitBtn2Click(Sender: TObject);
begin
        if self.FindGeneralParameterSQL.State in [dsEdit,dsInsert] then begin
              self.FindGeneralParameterSQL.Post ;
        end;

end;

procedure TM_paramsFRM.RzBitBtn4Click(Sender: TObject);
begin
  SelectPIcture;
end;

procedure TM_paramsFRM.SelectPicture();
var
  BlobField: TField;
  BS: TStream;
  fileName:String;
  code:String;
  str1:String;
  zz:TksQuery;
  imgTemp:TImage;
begin

//code:= 'Τ00'
  code:=FindGeneralParameterSQL.FieldByName('code').AsString;
 if not OpenPictureDialog1.Execute then     begin
  showMessage('exit');
    Exit;
 end;

  imgTemp:=Timage.Create(M_paramsFRM);
   try
    filename :=OpenPictureDialog1.FileName;
    ImgTemp.Picture:=nil;
    imgTemp.Picture.LoadFromFile(filename);
//    code:=FindGeneralParameterSQL.FieldByName('code').AsString;

    with qr do  begin
      close;
      qr.ParamByName('Thecode').AsString :=Code;
      open;
      if qr.IsEmpty then
        showMessage('empgy');
      Edit;
      BlobField := FieldByName('anad_picture');
      BS := CreateBlobStream(BlobField,bmWrite);
//    bs.Position:=0;
      ImgTEmp.Picture.SaveToStream(BS);
      Post;
      close;
      FindGeneralParameterSQL.Refresh;
    end;
  finally
    imgTEmp.Free;
  end;

end;

procedure TM_paramsFRM.ShowXLabels(LabelValueLine:TstringArray; LabelArray:TlabelArray;FieldsArray:TFieldArray);


Var
        TheLabel:Tlabel;
        TheField:TwwDBEdit;
        LabelCaption:String;
        i:integer;
        key:string;

begin
        if self.FindGeneralParameterSQL.State in [dsEdit,dsInsert] then begin // to save previoius record
              self.FindGeneralParameterSQL.Post ;
        end;

        Key:=LabelValueLine[0];

        With Self.FindGeneralParameterSQL do begin
          Close;
          ParamByName('Code').Value:=Key;
          Open;
          If Self.FindGeneralParameterSQL.RecordCount>0 then begin
                Edit;
          end else begin
                Insert;
                FieldByName('Code').Value:=Key;
          end;
       end;


       for i:= Low(LabelValueLine)+1 to High(LabelValueLine) do begin

           LabelCaption:=LabelValueLine[i];   // find the caption of the label in the array
           TheLabel:=LabelArray[I];
           TheField:=FieldsArray[I];
          iF LabelCaption>'' then begin
                TheLabel.Visible:=True;
                TheLabel.Caption:=LabelCaption;
                TheField.Visible:=true;
          end else begin
                TheLabel.Visible:=False;
                TheField.Visible:=False;
          end;
       end;



end;

procedure TM_paramsFRM.ShowOneRecord(RecordIndex:Integer);
Const
//        LabelValuesArray:Array[0..4,0..8] of String = (
        LabelValuesArray:Array[0..4] of TStringArray = (
                ['T00','Reports Title - First line ','Φ.Π.Α.','% Ελάχιστης Παρακολούθησης','','Image File as Invoice logo','','',''],
                ['T01','Test','','','','','','',''],
                ['T02','Unused','','','','','','',''],
                ['T03','','VAT Rate','','','','','',''],
                ['T04','','','','','','','','']
                );

Var
        I:Integer;
        max:integer;
        LebelValueLine:Array of String;
        line:Array of String;
        LabelArray : TLabelArray;
        FieldsArray :TFieldArray;

begin
       //zero Element is used for the key
       LabelArray :=[ PIdLbl,Ps1Lbl  ,pf1lbl, pi1lbl,ps2lbl, ps3lbl, ps4lbl, ps5lbl,ps6lbl ];
       FIeldsArray:=[ ParamFLD,VS1FLD ,VF1FLD, VI1FLD,vs2FLD, vs3FLD, vs4FLD, Vs5FLD,Vs6FLD];


       ShowXLabels(LabelValuesArray[RecordIndex],LabelArray,FieldsArray);


end;


procedure TM_paramsFRM.LoadPicture;
begin

end;
{
var
 jp:TJpegimage;
 img:TImage;
 g:TGraphic;
 qry:TksQuery;
 blobStream: TBlobStream;
  Jpg: TJpegImage;
  fileName:String;
  code:String;
  aStream:TStream;
//  surf:TBitmapSurface;

begin

  code:=FindGeneralParameterSQL.FieldByName('code').AsString;


 if not OpenPictureDialog1.Execute then
    Exit;
    {
    aStream:= TMemoryStream.Create();
    filename :=OpenPictureDialog1.FileName;
    image1.Picture.LoadFromFile(filename);

    Surf := TBitmapSurface.Create;
    Surf.Assign(Image1.Bitmap);
    aStream := TMemoryStream.Create;
    if not TBitmapCodecManager.SaveToStream(aStream, Surf, '.png') then
      raise EBitmapSavingFailed.Create('No');
    BlobStream.Position := 0;

    doSQL.ParamByName('code').Value:=code;
    doSQL.ParamByName('picture').LoadFromStream(aStream,ftBlob);
    doSQL.ExecSQl;

//    myquery2.ParamByName('imagem').LoadFromStream(BlobStream, ftBlob);
//
//    myquery2.ExecSQL;
    Surf.Free;

    {
    Surf := TBitmapSurface.Create;
    Surf.Assign(Image1.Bitmap);


    surf.Picture.SaveToStream(aStream);
    aStream.Position:=0;
    }

 {
    doSQL.Transaction.StartTransaction;
    doSQL.ParamByName('code').Value:=code;
    doSQL.ParamByName('picture').LoadFromStream(aStream,ftBlob);
    doSQL.ExecQuery;
    doSQL.Transaction.Commit;
    FindGeneralParameterSQL.Refresh;
    FindGeneralParameterSQL.FieldByName('anad_picture').


 }

    {
    blobStream := FindGeneralParameterSQL.CreateBlobStream(FindGeneralParameterSQL.FieldByName('ANAD_PICTURE'), bmWrite) as TblobStream;
    image1.Picture.SaveToStream(blobStream);

    If FindGeneralParameterSQL.State in [dsEdit ] then begin
      FindGeneralParameterSQL.Post;
      FindGeneralParameterSQL.Refresh;
    end;

  exit;


    blobStream := Qry.CreateBlobStream(Qry.FieldByName('ANAD_PICTURE'), bmWrite) as TblobStream;
    image1.Picture.SaveToStream(blobStream);

    qry.parambyName('a').LoadFromStream();
    qry.post;
    //Jpg.Assign(Image1.Picture.Graphic);
  finally
    qry.free;
  end;
    }
  {
  procedure TForm1.Button1Click(Sender: TObject);
var
  BlobStream: tStream;
  Surf: TBitmapSurface;
begin
  if Image1 <> nil then
  begin
    Surf := TBitmapSurface.Create;
    Surf.Assign(Image1.Bitmap);
    BlobStream := TMemoryStream.Create;
    if not TBitmapCodecManager.SaveToStream(BlobStream, Surf, '.jpg') then
      raise EBitmapSavingFailed.Create('No');
    BlobStream.Position := 0;
    myquery2.ParamByName('imagem').LoadFromStream(BlobStream, ftBlob);
    myquery2.ExecSQL;
    Surf.Free;
  end;
end;

CODE: SELECT ALL
procedure TForm1.Button2Click(Sender: TObject);
var
  BlobStream: TStream;
  Jpg: TJPEGImage;
begin
  BlobStream := TMemoryStream.Create;
  myquery1.GetBlob(myQuery1.FieldByName('imagem')).SaveToStream(BlobStream);
  Blobstream.Position := 0;
  Jpg := TJPEGImage.Create;
  try
    Jpg.LoadFromStream(BlobStream);
    Image2.Picture.Assign(Jpg);
  finally
    Jpg.Free;
  end;
  BlobStream.Free;
end;

  }

    // Assign other query parameters here

//  Stream := Qry.CreateBlobStream(Qry.FieldByName('ANAD_PICTURE'), bmWrite) as TblobStream;
  //Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);

{
  qry:=TksQuery.Create(cn,'select * from general_parameter where code= ''T00'' ' );
  Jpg := TJpegImage.Create;
  try
    Jpg.Assign(Image1.Picture.Graphic);
    // Assign other query parameters here
  Stream := Qry.CreateBlobStream(Qry.FieldByName('ANAD_PICTURE'), bmWrite) as TblobStream;
//    Stream := Qry.CreateBlobStream(Qry.FieldByName('BLOBVAL'), bmWrite);
    try
      Jpg.SaveToStream(Stream);
      Qry.ExecSQL;
    finally
      Stream.Free;
    end;
  finally
    Jpg.Free;
    qry.free;
  end;
}
//end;

end.
