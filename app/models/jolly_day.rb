class JollyDay < ApplicationRecord
  validates :name, presence: true
  validates :start, presence: true
  validates :end, presence: true
  validates :maximum_capacity, presence: true
  validates :minimum_age, presence: true
  validates :maximum_age, presence: true
end
