class Address < ApplicationRecord
  belongs_to :address_holder, polymorphic: true

  NEIGHBOURHOOD = ["Arpoador", "Botafogo", "Catete", "Copacabana", "Cosme Velho", "Flamengo", "Gávea" ,"Glória", "Humaitá", "Ipanema", "Jardim Botanico", "Lagoa", "Laranjeiras", "Leblon", "Leme", "Santa Teresa", "São Conrado", "Urca"]
  CITY = ["Rio de Janeiro"]
  STATE = ["RJ"]

  validates :name, presence: true
  validates :street, presence: true
  validates :street_number, presence: true
  validates :neighbourhood, presence: true, inclusion: { in: NEIGHBOURHOOD }
  validates :city, presence: true, inclusion: { in: CITY }
  validates :state, presence: true, inclusion: { in: STATE }
  validates :zip_code, presence: true
end
