# frozen_string_literal: true

# Contact
#  - wraps a contact form message
#    - validates
#    - data ready for mailer
#  - model without database
#
class Contact
  include ActiveModel::Model
  attr_accessor :name, :email, :message

  validates :name, presence: true, length: { minimum: 2, maximum: 100 }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :message, presence: true, length: { minimum: 5, maximum: 2048 }
end
