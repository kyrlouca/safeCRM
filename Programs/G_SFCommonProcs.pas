unit G_SFCommonProcs;

interface
uses
G_KyriacosTypes, Messages, System.SysUtils, System.DateUtils,System.Variants,Classes, Graphics, Controls,  Dialogs,
  StdCtrls;

type
  Txxx =(trRead,trWrite);
  TParameterRecord= record
        P_ID:String;
        P_Description:String;
  end;



function test1():Integer;
Function CalcDaysOld(const DateSeminar,DateRef:TDateTime;Const isAfter,isDayUnit:Boolean;Const NumberOfUnits:Integer):Integer;
Function FormatGreekDate(const aDateTime:TDateTime;Const GreekOrEnglish:String):string;

implementation
function test1():Integer;
begin
  result:=1;
end;

Function CalcDaysOld(const DateSeminar,DateRef:TDateTime;Const isAfter,isDayUnit:Boolean;Const NumberOfUnits:Integer):Integer;
var
  mySign:Integer;
  DateReminder:TDatetime;
begin
  if isAfter then
    mySign:=1
  else
    mySign:=-1;

  try
    if IsDayUnit then
      DateReminder:= IncDay( DateSeminar, mySign * NumberOfUnits)
    else
      DateReminder:= IncMonth( DateSeminar, mySign * NumberOFUnits);

    DateREminder:=Trunc( DateREminder);
    result:= Trunc(DateReminder)-TRunc(DateRef);

  except
    result:=-1;
  end;





end;

Function FormatGreekDate(const aDateTime:TDateTime;Const GreekOrEnglish:String):string;
const
  GreekMonths   :Array of String =['Ιανουαρίου', 'Φεβρουαρίου','Μαρτίου','Απριλίου','Μαίου','Ιουνίου','Ιουλίου','Αυγούστου','Σεπτεμβρίου', 'Οκτωβρίου','Νοεμβρίου', 'Δεκεμβρίου'];
  EnglishMonths :Array of String =['Janouary', 'Febrouary','March','April','May','June','Jyly','August','September','October','November','December'];
var
Year,Month,Day:Word;
sMonth:String;
begin

  DecodeDate(aDateTime, Year ,Month,Day);
  if Year=0 then begin
    result:='dd/mm/yyyy';
    exit;
  end;

  if GreekOrEnglish='G' then
    sMOnth:=GreekMonths[Month-1]
  else
    sMonth:=EnglishMonths[MOnth];
  result:= intToStr(day)+' ' + sMonth+' '+IntTOStr(Year);

end;



end.
