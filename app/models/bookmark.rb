class Bookmark < ApplicationRecord
  belongs_to :book
  validates :content, length: {maximum: 200}, presence: true
end
