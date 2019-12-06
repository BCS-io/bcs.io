require 'application_system_test_case'

class MainHeaderTest < ApplicationSystemTestCase
  test "walks through menu links" do
    visit root_url

    assert_current_path('/')
    assert_title 'BCS.io'

    click_on("About")

    assert_current_path('/about')
    assert_title "About | BCS.io"

    click_on("Work")

    assert_current_path('/work')
    assert_title "Work | BCS.io"

    click_on("Contact")

    assert_current_path('/')

    click_on("home-logo")

    assert_current_path('/')
    assert_title 'BCS.io'
  end
end