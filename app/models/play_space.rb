class PlaySpace < ApplicationRecord
  belongs_to :user
  has_many :appointments, dependent: :destroy
  has_many_attached :photos
  has_one :address, as: :address_holder, dependent: :destroy

  validate :photos_presence_format

private

  def photos_presence_format
    if photos.attached? == false
      errors.add(:photos, "required.")
    end
  end

end
