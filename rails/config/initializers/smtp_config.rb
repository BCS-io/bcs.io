#
# Email account to send notification emails to
#
Rails.application.config.action_mailer.smtp_settings = {
  address: "smtp.gmail.com",
  port: 587,
  user_name: Rails.application.credentials.work_alert_email[:name],
  password: Rails.application.credentials.work_alert_email[:password],
  authentication: "plain",
  enable_starttls_auto: true
}
