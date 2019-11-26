require 'application_system_test_case'

class AboutLinkTest < ApplicationSystemTestCase
  test "clicking on action button" do
    visit about_pages_url

    click_on("Hire Us")

    page.assert_current_path('/')
  end
end
