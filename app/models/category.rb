class Category < ApplicationRecord
  validates :content, presence: true
end
