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
  end
end
