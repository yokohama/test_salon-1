class Staff < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable, :registerable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable

  # Categoryのバリデーション
  validates :name, presence: true 
end
