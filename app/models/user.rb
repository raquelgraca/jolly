class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :play_spaces, dependent: :destroy
  has_many :play_sessions, dependent: :destroy
  has_many :bookings, dependent: :destroy

  ROLE = ['parent', 'recreation worker', 'play space owner']
  NEIGHBOURHOOD = ["Arpoador", "Botafogo", "Catete", "Copacabana", "Cosme Velho", "Flamengo", "Gávea" ,"Glória", "Humaitá", "Ipanema", "Jardim Botanico", "Lagoa", "Laranjeiras", "Leblon", "Leme", "Santa Teresa", "São Conrado", "Urca"]
  CITY = ["Rio de Janeiro"]


  has_one_attached :avatar

  validates  :first_name, presence: true
  validates  :last_name, presence: true
  validates  :role, presence: true, inclusion: { in: ROLE }
  validates  :street, presence: true
  validates  :street_number, presence: true
  validates :neighbourhood, presence: true, inclusion: { in: NEIGHBOURHOOD }
  validates :city, presence: true, inclusion: { in: CITY }
  validates  :state, presence: true
  validates  :zip_code, presence: true

  validate   :avatar_presence

  private
  def avatar_presence
    if avatar.attached? == false
      errors.add(:avatar, "Photo required.")
    end
  end

end
