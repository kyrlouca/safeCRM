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
  V_Seminar in 'V_Seminar.pas' {V_SeminarFRM},
  M_Instructor in 'M_Instructor.pas' {M_InstructorFRM},
  H_Help in 'H_Help.pas' {H_HelpFRM},
  G_SFCommonProcs in 'G_SFCommonProcs.pas',
  R_Reminders in 'R_Reminders.pas' {R_remindersFRM},
  I_invoiceSeminar in 'I_invoiceSeminar.pas' {I_InvoiceSeminarFRM},
  p_attendance in 'p_attendance.pas' {P_attendanceFRM},
  M_CompanyNew in 'M_CompanyNew.pas' {M_companyNewFRM},
  M_Company in 'M_Company.pas' {M_CompanyFRM},
  L_Companies in 'L_Companies.pas' {L_companiesFRM};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TU_databaseFRM, U_databaseFRM);
  Application.CreateForm(TM_mainFRM, M_mainFRM);
  Application.CreateForm(TH_HelpFRM, H_HelpFRM);
  Application.CreateForm(TR_remindersFRM, R_remindersFRM);
  Application.CreateForm(TI_InvoiceSeminarFRM, I_InvoiceSeminarFRM);
  Application.CreateForm(TI_InvoiceSeminarFRM, I_InvoiceSeminarFRM);
  Application.CreateForm(TP_attendanceFRM, P_attendanceFRM);
  Application.CreateForm(TM_companyNewFRM, M_companyNewFRM);
  Application.CreateForm(TM_CompanyFRM, M_CompanyFRM);
  Application.CreateForm(TL_companiesFRM, L_companiesFRM);
  Application.CreateForm(TL_companiesFRM, L_companiesFRM);
  Application.Run;
end.
