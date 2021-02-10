class Category < ApplicationRecord
  acts_as_paranoid
  
  validates :name, presence: true

  has_many :products, dependent: :destroy
end
