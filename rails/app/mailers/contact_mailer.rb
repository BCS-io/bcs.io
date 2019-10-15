# frozen_string_literal: true

# ContactMailer
#  - renders an email view for Contact
#
class ContactMailer < ApplicationMailer
  default to: -> { work_alert_email }

  def contact_with(contact)
    @contact = contact
    mail(from: contact.email,
         subject: "Contact message from: #{@contact.name}")
  end

  private

  def work_alert_email
    Rails.application.credentials.work_alert_email[:name]
  end
end
