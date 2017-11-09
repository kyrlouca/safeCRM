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
Function CalcDays(const DateSeminar,DateRef:TDateTime;Const isAfter,isDayUnit:Boolean;Const NumberOfUnits:Integer):Integer;

implementation
function test1():Integer;
begin
  result:=1;
end;

Function CalcDays(const DateSeminar,DateRef:TDateTime;Const isAfter,isDayUnit:Boolean;Const NumberOfUnits:Integer):Integer;
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





end.
