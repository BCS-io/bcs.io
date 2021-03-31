require 'application_system_test_case'

class HomeMessageTest < ApplicationSystemTestCase
  include ActionMailer::TestHelper

  test "sends message" do
    visit root_url

    fill_in "Name", with: "John"
    fill_in "Email", with: "john@smith"
    fill_in "Message", with: "Hello World"

    assert_emails 1 do
      click_button("Contact")
    end

    assert_selector ".flash__text", text: "Your message has been sent!"
  end

  test "sets error if incomplete" do
    skip "Error messages are not displayed in development"
    visit root_url

    fill_in "Name", with: "John"

    click_button("Contact")

    assert_selector ".message", text: "can't be blank"
  end
end
