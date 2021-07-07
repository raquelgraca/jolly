class JollyDayParticipant < ApplicationRecord
  belongs_to :jolly_day

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :child_name, presence: true
  validates :child_age, presence: true
  validates :email_address, presence: true
  validates :phone_number, presence: true

  after_create :send_confirmation_email

  private

  def send_confirmation_email
    JollyDayParticipantMailer.with(jolly_day_participant: self).confirmation.deliver_now
  end
end
