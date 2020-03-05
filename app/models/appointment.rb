class Appointment < ApplicationRecord
  belongs_to :play_space
  has_one :play_session

end
