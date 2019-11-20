require 'application_system_test_case'

class HomeLinkTest < ApplicationSystemTestCase
  test "clicking on talk button" do
    visit root_url

    click_link("Let's talk")
    page.assert_current_path('/')
  end
end
