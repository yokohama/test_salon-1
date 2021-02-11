class Category < ApplicationRecord
  acts_as_paranoid

  validates :name, presence: true
  validates :name, uniqueness: true

  has_many :products, dependent: :destroy
end
