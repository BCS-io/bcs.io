require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  test "contact_with" do
    contact = FactoryBot.build(:contact, name: "Jon", email: "a@example")
    mail = ContactMailer.contact_with(contact)

    # Send the email, then test that it got queued
    assert_emails 1 do
      mail.deliver_now
    end

    # Test Header
    assert_equal ['a@example'], mail.from
    # from the rails credentials --environment test
    assert_equal ['default_email@application_mailer'], mail.to
    assert_equal 'Contact message from: Jon', mail.subject


    # Test the body of the sent email contains what we expect it to
    assert_match contact.name, mail.body.encoded
    assert_match contact.email, mail.body.encoded
    assert_match contact.message, mail.body.encoded
  end
end
