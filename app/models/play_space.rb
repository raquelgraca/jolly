class PlaySpace < ApplicationRecord
  belongs_to :user
  has_many :appointments

  has_many_attached :photos
end
