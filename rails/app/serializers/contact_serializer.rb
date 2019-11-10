# frozen_string_literal: true

# ContactSerializer
#  - deserialize and deserialze Contact
#    - used in moving a contact to active job
#
class ContactSerializer < ActiveJob::Serializers::ObjectSerializer
  def serialize?(contact)
    contact.is_a?(Contact)
  end

  def serialize(contact)
    super(
      "name" => contact.name,
      "email" => contact.email,
      "message" => contact.message
    )
  end

  def deserialize(hash)
    Contact.new(name: hash["name"], email: hash["email"], message: hash["message"])
  end

  def klass
    Contact
  end
end
