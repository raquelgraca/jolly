class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :play_spaces

  validates  :role, presence: true
  validates  :first_name, presence: true
  validates  :last_name, presence: true
  validates  :street, presence: true
  validates  :street_number, presence: true
  validates  :neighbourhood, presence: true
  validates  :city, presence: true
  validates  :state, presence: true
  validates  :zip_code, presence: true
  validates  :avatar, presence: true
end
