require 'application_system_test_case'

class HomeVisitTest < ApplicationSystemTestCase
   test "visit index" do
    visit root_url
    assert_selector "h1", text: 'We create'
  end
end
