class Product < ApplicationRecord
  acts_as_paranoid
  
  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true

  belongs_to :category
end
