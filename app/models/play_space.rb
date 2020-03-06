class PlaySpace < ApplicationRecord
  belongs_to :user
  has_many :appointments
  has_many_attached :photos

  validates :name, presence: true
  validates :street, presence: true
  validates :neighbourhood, presence: true
  validates :city, presence: true
  validates :zip_code, presence: true
  validate :photos_presence_format

private

  def photos_presence_format
    if photos.attached? == false
      errors.add(:photos, "Photos required.")
    end
  end

end
