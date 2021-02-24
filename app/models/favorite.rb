class Favorite < ApplicationRecord
  belongs_to :member
  belongs_to :product

  validates :member_id, uniqueness: { scope: :product_id}
end
