require "test_helper"

class ContactSerializerTest < ActiveSupport::TestCase
  test "serializers a contact" do
    contact = FactoryBot.build(:contact, name: "John", email: "j@example.com", message: "Hello")

    serialized = ContactSerializer.serialize(contact)

    assert_equal serialized["name"], "John"
    assert_equal serialized["email"], "j@example.com"
    assert_equal serialized["message"], "Hello"
  end

  test "deserializes a contact" do
    contact_hash = { "name" => "John", "email" => "j@example.com", "message" => "Hello" }

    contact = ContactSerializer.deserialize(contact_hash)

    assert_equal contact.name, "John"
    assert_equal contact.email, "j@example.com"
    assert_equal contact.message, "Hello"
  end
end
