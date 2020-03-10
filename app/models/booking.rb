class Booking < ApplicationRecord
  belongs_to :play_session
  belongs_to :user

end
