class PlaySession < ApplicationRecord
  belongs_to :appointment
  belongs_to :user

  has_one_attached :photo
end
