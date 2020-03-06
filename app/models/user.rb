class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :play_spaces, dependent: :destroy
  has_many :play_sessions
  has_many :bookings

  ROLE = ['parent', 'recreation worker', 'play space owner']

  validates  :role, presence: true, inclusion: { in: ROLE }

  has_one_attached :avatar

  validates  :first_name, presence: true
  validates  :last_name, presence: true
  validates  :street, presence: true
  validates  :street_number, presence: true
  validates  :neighbourhood, presence: true
  validates  :city, presence: true
  validates  :state, presence: true
  validates  :zip_code, presence: true

  validate   :avatar_presence

  private
  def avatar_presence
    if avatar.attached? == false
      errors.add(:avatar, "Photo required.")
    end
  end

end
