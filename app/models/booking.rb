class Booking < ApplicationRecord
  belongs_to :play_session
  belongs_to :user
  monetize :sum_fee_cents
  before_save :sum_fees

  validates :name_of_kid, presence: true
  validates :gender_of_kid , presence: true
  validates :age_of_kid, presence: true
  validates :comment, presence: true

  def sum_fees
    self.sum_fee_cents = self.play_session.worker_fee_per_kid_cents + self.play_session.appointment.owner_fee_per_kid_cents
  end

end

