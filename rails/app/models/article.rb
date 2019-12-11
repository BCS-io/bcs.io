# frozen_string_literal: true

# Article
#  - informational post related to bcs
#
class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3, maximum: 120 }
  validates :description, presence: true, length: { minimum: 5, maximum: 200 }
end
