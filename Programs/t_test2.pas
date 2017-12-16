unit t_test2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  MemDS, DBAccess, IBC, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, VirtualTable,
  ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppBands, ppCache,
  ppDesignLayer, ppParameter, ppPrnabl, ppCtrls, ppVar, Vcl.Imaging.pngimage;

type
  TT_test2FRM = class(TForm)
    SeminarPresenceSQL: TIBCQuery;
    SeminarPresenceSQLPERSON_SERIAL: TIntegerField;
    SeminarPresenceSQLLAST_FIRST_NAME: TWideStringField;
    SeminarPresenceSQLIS_PRESENT: TWideStringField;
    SeminarPresenceSQLHOURS_PRESENT: TIntegerField;
    SeminarPresenceSQLDAYSERIAL: TIntegerField;
    SeminarPresenceSQLSEMINAR_DAY: TDateField;
    SeminarPresenceSQLNATIONAL_ID: TWideStringField;
    SeminarSRC: TDataSource;
    PrintRBtn: TBitBtn;
    vt1: TVirtualTable;
    Vt1SRC: TDataSource;
    d: TwwDBGrid;
    BitBtn1: TBitBtn;
    vtpip: TppDBPipeline;
    ppReport1: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel4: TppLabel;
    ppImage1: TppImage;
    ppHeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    ddBand: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLine2: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppShape2: TppShape;
    ppLabel9: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel11: TppLabel;
    procedure PrintRBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  function GetDayFromSerial(Const DaySerial:Integer):TDate;
  function GetNameFromSerial(Const PersonSerial:Integer):String;
  public
    { Public declarations }
  end;

var
  T_test2FRM: TT_test2FRM;

implementation

{$R *.dfm}

uses G_KyrSQL, G_generalProcs, U_Database;

procedure TT_test2FRM.BitBtn1Click(Sender: TObject);
var
  PersonQR:TksQuery;
  PresenceQR:TksQuery;
  str:String;
  seminarSerial:Integer;
  PersonSerial:Integer;
  DaySerial:integer;
  fSubject:Integer;
  fdate:TDate;
  fname:String;
  I:Integer;
  vfield:TField;
  RField1: TppDBText;
  lbl1:TppLabel;
  RfPos:Integer;
begin
// POPULATE Fields
//

  seminarSerial:=94;
  vt1.Close;


  str:='select  sp.fk_person_serial from seminar_person sp where sp.fk_seminar_serial= :seminarSerial';
  Personqr:=TksQuery.Create(cn,str);

  str:= 'select pp.person_serial,pp.day_serial,pp.present_hours '
      +' from person_presence_view pp '
      +'  where pp.seminar_serial= :seminarSerial   and pp.person_serial = :personSerial ';
  Presenceqr:=TksQuery.Create(cn,str);

  try
    vt1.close;
    vt1.Open;
    PersonQr.Close;
    personQR.ParamByName('SeminarSerial').Value:=SeminarSerial;
    personQR.Open;
    while not PersonQR.Eof do begin
    //for every person
      vt1.insert;
      PersonSerial:=PersonQR.FieldByName('fk_person_serial').AsInteger;
      vt1.fieldbyName('Person_serial').value:=PersonSerial;

      PresenceQR.Close;
      presenceQR.ParamByName('SeminarSerial').value:=SeminarSerial;
      presenceQR.ParamByName('PersonSerial').value:= PersonSerial;
      presenceQR.Open;
      while not PresenceQR.Eof do begin

        vt1.FieldByName(PresenceQR.FieldByName('day_serial').AsString).Value:=
          PresenceQR.FieldByName('present_hours').AsInteger;

        PresenceQR.Next;
      end;
      vt1.post;

      PersonQR.Next;
    end;

  finally
    Personqr.Free;
    PresenceQr.Free;
  end;


    rfPos:=0;
    For I:=0 to vt1.FieldCount-1 do begin
     vField:=vt1.Fields[i];
//     ShowMessage(vField.FieldName);
      lbl1 := TppLabel.Create(Self);
      lbl1.Band := ppReport1.HeaderBand;
      lbl1.spLeft := rfPos+ I*100;
      lbl1.spTop := 2;

      if StrToIntDef( vField.FieldName,0)>0 then begin
        lbl1.Caption := FormatDateTime('dd/mm/yyyy', GetDayFromSerial (StrToInt(vField.FieldName)));
      end else begin
        lbl1.Caption := vField.FieldName;

      end;



//    ppReport1.DetailBand.f
     RField1:= TppDBText.Create(self);
     RField1.Band := ppReport1.DetailBand;
      RField1.spLeft := rfPos + I* 100;
      RField1.spTop := 3;
      RField1.DataPipeline := ppReport1.DataPipeline;
      RField1.DataField := vField.FieldName;

  end;

  ppReport1.print;
end;

procedure TT_test2FRM.FormCreate(Sender: TObject);
begin
  cn:=U_databaseFRM.DataConnection;
end;

procedure TT_test2FRM.PrintRBtnClick(Sender: TObject);
var
  qr:TksQuery;
  str:String;
  seminarSerial:Integer;
  fSubject:Integer;
  fday:Integer;
  fname:String;
begin
  seminarSerial:=94;
  vt1.Close;

  str:='select ssv.daySerial from seminar_day_view ssv '
    +' where  ssv.seminar_serial= :SeminarSerial ';
  qr:=TksQuery.Create(cn,str);

  try
    vt1.AddField('Person_Serial',ftinteger);
    vt1.AddField('Percent',ftFloat);
    qr.ParamByName('SeminarSerial').Value:=seminarSerial;
    qr.Open;
    while not qr.Eof do begin
      fday:=qr.fieldByName('daySerial').AsInteger;
      vt1.AddField(IntToStr(fday),ftInteger);
      qr.Next;
    end;
    vt1.Open;

  finally
    qr.Free;
end;

end;


function TT_test2FRM.GetDayFromSerial(Const DaySerial:Integer):TDate;
var
  qr:TksQuery;
begin
  qr:=TksQuery.Create(cn,'select sd.seminar_day from seminar_day_view sd where sd.dayserial = :daySerial');
  try
    qr.ParamByName('daySerial').Value:=daySerial;
    qr.open;
    result:=qr.FieldByName('seminar_day').AsDateTime;
  finally
    qr.Free;
  end;

end;

function TT_test2FRM.GetNameFromSerial(Const PersonSerial:Integer):String;
var
  qr:TksQuery;
  str:string;
begin
  str:= 'select pe.first_last_name,pe.national_id from person_view pe where pe.serial_number= :personSerial';
  qr:=TksQuery.Create(cn,str);

  try
    qr.ParamByName('PersonSerial').Value:=PersonSerial;
    qr.open;
    result:=qr.FieldByName('first_last_name').AsString;
  finally
    qr.Free;
  end;

end;




end.
