program Safe_CRM;

uses
  Vcl.Forms,
  M_params in 'M_params.pas' {M_paramsFRM},
  U_Database in 'U_Database.pas' {U_databaseFRM: TDataModule},
  G_generalProcs in 'G_generalProcs.pas',
  G_KyrSQL in 'G_KyrSQL.pas',
  M_Main in 'M_Main.pas' {M_mainFRM},
  M_Venue in 'M_Venue.pas' {M_venuFRM},
  M_seminarType in 'M_seminarType.pas' {M_SeminarTypeFRM},
  M_CostType in 'M_CostType.pas' {M_CostTypeFRM},
  L_Seminar in 'L_Seminar.pas' {L_SeminarFRM},
  V_Seminar in 'V_Seminar.pas' {V_SeminarFRM},
  M_Instructor in 'M_Instructor.pas' {M_InstructorFRM},
  M_Student in 'M_Student.pas' {M_StudentFRM},
  p_attendance in 'p_attendance.pas' {P_attendanceFRM};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TU_databaseFRM, U_databaseFRM);
  Application.CreateForm(TM_mainFRM, M_mainFRM);
  Application.Run;
end.
