program Safe_CRM;

uses
  Vcl.Forms,
  CodeSiteLogging,
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
  p_attendance in 'p_attendance.pas' {P_attendanceFRM},
  M_CompanyNew in 'M_CompanyNew.pas' {M_companyNewFRM},
  M_Company in 'M_Company.pas' {M_CompanyFRM},
  L_Seminar in 'L_Seminar.pas' {L_SeminarFRM},
  V_SeminarStages in 'V_SeminarStages.pas' {V_SeminarStagesFRM},
  I_certificates in 'I_certificates.pas' {I_CertificatesFRM},
  I_invoiceSeminar in 'I_invoiceSeminar.pas' {I_InvoiceSeminarFRM},
  R_invoices in 'R_invoices.pas' {R_InvoicesFRM},
  R_PresenceTotal in 'R_PresenceTotal.pas' {R_presenceTotalFRM},
  R_Certificate in 'R_Certificate.pas' {R_certificateFRM},
  R_Presence in 'R_Presence.pas' {R_presenceFRM},
  R_Reminders in 'R_Reminders.pas' {R_remindersFRM},
  G_DebugUnit in 'G_DebugUnit.pas',
  L_reminders in 'L_reminders.pas' {L_RemindersFRM};

{$R *.res}

begin
  Application.Initialize;
     {$IFDEF DEBUG}
    CodeSite.Enabled := True;
    CodeSite.Clear;
 {$ELSE}
    CodeSite.Enabled := False;
 {$ENDIF}

  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TU_databaseFRM, U_databaseFRM);
  Application.CreateForm(TM_mainFRM, M_mainFRM);
  Application.CreateForm(TH_HelpFRM, H_HelpFRM);
  Application.CreateForm(TV_SeminarStagesFRM, V_SeminarStagesFRM);
  Application.CreateForm(TI_CertificatesFRM, I_CertificatesFRM);
  Application.CreateForm(TI_InvoiceSeminarFRM, I_InvoiceSeminarFRM);
  Application.CreateForm(TP_attendanceFRM, P_attendanceFRM);
  Application.CreateForm(TM_companyNewFRM, M_companyNewFRM);
  Application.CreateForm(TM_CompanyFRM, M_CompanyFRM);
  Application.CreateForm(TL_RemindersFRM, L_RemindersFRM);
  Application.CreateForm(TL_SeminarFRM, L_SeminarFRM);
  Application.CreateForm(TI_InvoiceSeminarFRM, I_InvoiceSeminarFRM);
  Application.CreateForm(TR_InvoicesFRM, R_InvoicesFRM);
  Application.CreateForm(TR_presenceTotalFRM, R_presenceTotalFRM);
  Application.CreateForm(TR_certificateFRM, R_certificateFRM);
  Application.CreateForm(TR_certificateFRM, R_certificateFRM);
  Application.CreateForm(TR_presenceFRM, R_presenceFRM);
  Application.CreateForm(TR_remindersFRM, R_remindersFRM);
  Application.CreateForm(TL_RemindersFRM, L_RemindersFRM);
  //  Application.CreateForm(TR_presenceFRM1, R_presenceFRM1);
  Application.CreateForm(TR_presenceTotalFRM, R_presenceTotalFRM);
  Application.Run;
end.
