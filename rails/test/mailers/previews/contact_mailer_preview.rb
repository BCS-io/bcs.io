# frozen_string_literal: true

# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
  def contact_with
    contact = FactoryBot.build(:contact)
    ContactMailer.contact_with(contact)
  end
end
