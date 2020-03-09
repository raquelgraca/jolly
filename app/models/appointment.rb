class Appointment < ApplicationRecord
  belongs_to :play_space
  has_one :play_session

  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :minimum_capacity, presence: true
  validates :maximum_capacity, presence: true
  #validates :owner_fee_per_child, presence: true

  validate :two_hour_validation

  def two_hours_after
    self.starts_time + 2.hours
  end

  private
  def two_hour_validation
    if end_time < start_time + 2.hours
      errors[:base] << "Appointments must be at least 2 hours"
    end
  end



end
