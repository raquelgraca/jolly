class Kid < ApplicationRecord
  belongs_to :User

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :d_o_b, presence: true
end

