class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :given_reviews, :class_name => 'Review', :foreign_key => 'reviewer_id', dependent: :destroy
  has_many :received_reviews, :class_name => 'Review', :foreign_key => 'reviewee_id', dependent: :destroy

  has_many :play_spaces, dependent: :destroy
  has_many :play_sessions, dependent: :destroy
  has_many :bookings, dependent: :destroy

  has_many :addresses, as: :address_holder, dependent: :destroy
  ROLE = ['parent', 'recreation worker', 'play space owner']


  has_one_attached :avatar

  validates  :first_name, presence: true
  validates  :last_name, presence: true
  validates  :role, presence: true, inclusion: { in: ROLE }

  validate   :avatar_presence

  def average_stars
    if received_reviews.count > 0
      received_reviews.map(&:stars).sum / received_reviews.count
    else
      -1
    end
  end

   def blank_stars
    5 - average_stars
  end

  private
  def avatar_presence
    if avatar.attached? == false
      errors.add(:avatar, "Photo required.")
    end
  end
end
