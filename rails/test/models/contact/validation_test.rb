require "test_helper"

class ValidationTest < ActiveSupport::TestCase
  test "#name" do
    contact = Contact.new
    assert_must validate_presence_of(:name), contact
    assert_must validate_length_of(:name).is_at_least(2).is_at_most(100), contact
  end

  test "#email" do
    contact = Contact.new
    assert_must validate_presence_of(:email), contact
    assert_must allow_value("email@example.com").for(:email), contact
  end

  test "#message" do
    contact = Contact.new
    assert_must validate_presence_of(:message), contact
    assert_must validate_length_of(:message).is_at_least(5).is_at_most(2048), contact
  end
end
