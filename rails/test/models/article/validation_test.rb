require 'test_helper'

class ValidationTest < ActiveSupport::TestCase
  test "#title" do
    article = Article.new

    assert_must validate_presence_of(:title), article
    assert_must validate_length_of(:title).is_at_least(3).is_at_most(120), article
  end

  test "#description" do
    article = Article.new

    assert_must validate_presence_of(:description), article
    assert_must validate_length_of(:description).is_at_least(5).is_at_most(200), article
  end
end
