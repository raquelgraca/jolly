class PlaySession < ApplicationRecord
  belongs_to :appointment
  belongs_to :user

  has_one_attached :photo
  validates :name, presence: true
  validates :description, presence: true
  validates :requirements, presence: true
  validate :photo_presence

  private

  def photo_presence
    if photo.attached? == false
      errors.add(:photo, "required.")
    end
  end

end
