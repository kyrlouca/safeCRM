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
  R_invoices in 'R_invoices.pas' {R_InvoicesFRM},
  R_PresenceTotal in 'R_PresenceTotal.pas' {R_presenceTotalFRM},
  R_Certificate in 'R_Certificate.pas' {R_certificateFRM},
  R_Presence in 'R_Presence.pas' {R_presenceFRM},
  G_DebugUnit in 'G_DebugUnit.pas',
  L_reminders in 'L_reminders.pas' {L_RemindersFRM},
  M_CompanyNew in 'M_CompanyNew.pas' {M_companyNewFRM},
  M_Student in 'M_Student.pas' {M_StudentFRM},
  R_expiry in 'R_expiry.pas' {R_ExpiryFRM},
  L_Companies in 'L_Companies.pas' {L_companiesFRM},
  M_reminderComplete in 'M_reminderComplete.pas' {M_ReminderCompleteFRM},
  v_SeminarPictureTemplate in 'v_SeminarPictureTemplate.pas' {V_SeminarPictureTemplateFRM},
  SN_Login in 'SN_Login.pas' {SN_LoginFRm},
  SN_User in 'SN_User.pas' {SN_UserFRM},
  SN_SecurityAccess in 'SN_SecurityAccess.pas' {SN_SecurityAccessFRM},
  SN_AddUser in 'SN_AddUser.pas' {SN_AddUserFRM},
  R_Reminders in 'R_Reminders.pas' {R_remindersFRM},
  M_payment in 'M_payment.pas' {M_PaymentFRM},
  P_makePayment in 'P_makePayment.pas' {P_MakePaymentFRM};

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
  Application.CreateForm(TR_remindersFRM, R_remindersFRM);
  Application.CreateForm(TM_PaymentFRM, M_PaymentFRM);
  Application.CreateForm(TP_MakePaymentFRM, P_MakePaymentFRM);
  //  Application.CreateForm(TM_SeminarPictureTemplateFRM, M_SeminarPictureTemplateFRM);
  //  Application.CreateForm(TM_reminderFRM1, M_reminderFRM1);
  Application.CreateForm(TM_ReminderCompleteFRM, M_ReminderCompleteFRM);
  Application.Run;
end.
