class JollyDayParticipant < ApplicationRecord
  belongs_to :jolly_day

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :child_name, presence: true
  validates :child_age, presence: true
  validates :email_address, presence: true
  validates :phone_number, presence: true
end
