class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :guides, dependent: :destroy
  has_many :bookings_as_guide, through: :guides, source: :bookings
  validates :name, presence: true
end
