class Booking < ApplicationRecord
  belongs_to :play_session
  belongs_to :user

  validates :name_of_kid, presence: true
  validates :gender_of_kid , presence: true
  validates :age_of_kid, presence: true
  validates :comment, presence: true
end

