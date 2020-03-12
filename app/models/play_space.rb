class PlaySpace < ApplicationRecord
  belongs_to :user
  has_many :appointments, dependent: :destroy
  has_many_attached :photos

  NEIGHBOURHOOD = ["Arpoador", "Botafogo", "Catete", "Copacabana", "Cosme Velho", "Flamengo", "Gávea" ,"Glória", "Humaitá", "Ipanema", "Jardim Botanico", "Lagoa", "Laranjeiras", "Leblon", "Leme", "Santa Teresa", "São Conrado", "Urca"]
  CITY = ["Rio de Janeiro"]

  validates :name, presence: true
  validates :street, presence: true
  validates :neighbourhood, presence: true, inclusion: { in: NEIGHBOURHOOD }
  validates :city, presence: true, inclusion: { in: CITY }
  validates :zip_code, presence: true
  validate :photos_presence_format

private

  def photos_presence_format
    if photos.attached? == false
      errors.add(:photos, "required.")
    end
  end

end
