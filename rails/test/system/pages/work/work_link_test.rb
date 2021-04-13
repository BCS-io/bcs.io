require 'application_system_test_case'

class WorkLinkTest < ApplicationSystemTestCase
  test "check links work" do
    links = { 'svg.test_letting' => lettings_works_path,
              'svg.test_bcs_io' => 'https://github.com/BCS-io/bcs.io' }

    links.to_a.each do |link|
      visit work_pages_url
      find(:css, link[0]).click
      assert_current_path(link[1])
    end
  end
end

