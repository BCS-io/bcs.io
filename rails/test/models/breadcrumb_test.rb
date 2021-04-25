require 'test_helper'

class BreadcrumbTest < ActiveSupport::TestCase
  test "can have link" do
    breadcrumb = Breadcrumb.new(name: "lettings", path: "work")

    assert_equal true, breadcrumb.link?
  end

  test "can miss link" do
    breadcrumb = Breadcrumb.new(name: "lettings")

    assert_equal false, breadcrumb.link?
  end
end
