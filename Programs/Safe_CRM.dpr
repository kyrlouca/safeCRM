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
  H_Help in 'H_Help.pas' {H_HelpFRM},
  G_SFCommonProcs in 'G_SFCommonProcs.pas',
  p_attendance in 'p_attendance.pas' {P_attendanceFRM},
  M_Company in 'M_Company.pas' {M_CompanyFRM},
  L_Seminar in 'L_Seminar.pas' {L_SeminarFRM},
  V_SeminarStages in 'V_SeminarStages.pas' {V_SeminarStagesFRM},
  I_certificates in 'I_certificates.pas' {I_CertificatesFRM},
  I_invoiceSeminar in 'I_invoiceSeminar.pas' {I_InvoiceSeminarFRM},
  R_PresenceTotal in 'R_PresenceTotal.pas' {R_presenceTotalFRM},
  R_Certificate in 'R_Certificate.pas' {R_certificateFRM},
  R_Presence in 'R_Presence.pas' {R_presenceFRM},
  G_DebugUnit in 'G_DebugUnit.pas',
  L_reminders in 'L_reminders.pas' {L_RemindersFRM},
  M_CompanyNew in 'M_CompanyNew.pas' {M_companyNewFRM},
  L_Companies in 'L_Companies.pas' {L_companiesFRM},
  M_reminderComplete in 'M_reminderComplete.pas' {M_ReminderCompleteFRM},
  v_SeminarPictureTemplate in 'v_SeminarPictureTemplate.pas' {V_SeminarPictureTemplateFRM},
  SN_Login in 'SN_Login.pas' {SN_LoginFRm},
  SN_User in 'SN_User.pas' {SN_UserFRM},
  SN_SecurityAccess in 'SN_SecurityAccess.pas' {SN_SecurityAccessFRM},
  SN_AddUser in 'SN_AddUser.pas' {SN_AddUserFRM},
  P_ViewPayment in 'P_ViewPayment.pas' {P_ViewPaymentFRM},
  l_listInvoices in 'l_listInvoices.pas' {L_listInvoicesFRM},
  r_certificateDates in 'r_certificateDates.pas' {R_CertificateDatesFRM},
  R_SeminarListingRevenues in 'R_SeminarListingRevenues.pas' {R_SeminarListingRevenuesFRM},
  R_expiry in 'R_expiry.pas' {R_ExpiryFRM},
  R_SeminarRevenues in 'R_SeminarRevenues.pas' {R_SeminarRevenuesFRM},
  M_Student in 'M_Student.pas' {M_StudentFRM},
  R_presencePerDay in 'R_presencePerDay.pas' {R_presencePErDayFRM},
  SN_ModifyPassword in 'SN_ModifyPassword.pas' {SN_ModifyPasswordFRM},
  M_Instructor in 'M_Instructor.pas' {M_InstructorFRM},
  R_invoices in 'R_invoices.pas' {R_InvoicesFRM},
  R_InvoicesUnpaid in 'R_InvoicesUnpaid.pas' {R_invoicesUnpaidFRM},
  M_reminder in 'M_reminder.pas' {M_reminderFRM};

//  R_PendingCertificates in 'R_PendingCertificates.pas' {R_PendingCertificatesFRM};

{$R *.res}

begin
ReportMemoryLeaksOnShutdown := DebugHook <> 0;

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
  Application.CreateForm(TSN_LoginFRm, SN_LoginFRm);
  Application.CreateForm(TSN_UserFRM, SN_UserFRM);
  Application.CreateForm(TSN_SecurityAccessFRM, SN_SecurityAccessFRM);
  Application.CreateForm(TSN_AddUserFRM, SN_AddUserFRM);
  Application.CreateForm(TP_ViewPaymentFRM, P_ViewPaymentFRM);
  Application.CreateForm(TL_listInvoicesFRM, L_listInvoicesFRM);
  Application.CreateForm(TR_CertificateDatesFRM, R_CertificateDatesFRM);
  Application.CreateForm(TM_ReminderCompleteFRM, M_ReminderCompleteFRM);
  Application.CreateForm(TR_SeminarListingRevenuesFRM, R_SeminarListingRevenuesFRM);
  Application.CreateForm(TR_ExpiryFRM, R_ExpiryFRM);
  Application.CreateForm(TR_SeminarRevenuesFRM, R_SeminarRevenuesFRM);
  Application.CreateForm(TR_presencePErDayFRM, R_presencePErDayFRM);
  Application.CreateForm(TM_StudentFRM, M_StudentFRM);
  Application.CreateForm(TR_presencePErDayFRM, R_presencePErDayFRM);
  Application.CreateForm(TSN_ModifyPasswordFRM, SN_ModifyPasswordFRM);
  Application.CreateForm(TR_invoicesUnpaidFRM, R_invoicesUnpaidFRM);
  Application.CreateForm(TM_InstructorFRM, M_InstructorFRM);
  Application.CreateForm(TR_InvoicesFRM, R_InvoicesFRM);
  Application.CreateForm(TM_reminderFRM, M_reminderFRM);
  Application.Run;
end.
