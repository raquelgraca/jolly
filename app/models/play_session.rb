class PlaySession < ApplicationRecord
  belongs_to :appointment
  belongs_to :user

  has_one_attached :photo
  validates :name, presence: true
  validates :description, presence: true
  validates :requirements, presence: true
  validate :photo_presence
  monetize :worker_fee_per_kid_cents
  validates :worker_fee_per_kid_cents, presence: true

  private

  def photo_presence
    if photo.attached? == false
      errors.add(:photo, "required.")
    end
  end

end
