class PlaySession < ApplicationRecord
  belongs_to :appointment
  belongs_to :user
end
