# frozen_string_literal: true

FactoryBot.define do
  factory :contact do
    name { "John" }
    email { "john@example.com" }
    message { "Hello world" }
  end
end
