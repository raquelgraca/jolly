class Review < ApplicationRecord
  belongs_to :reviewer, :class_name => "User"
  belongs_to :reviewee, :class_name => "User"

  STARS = (0..5).to_a

  validates  :stars, presence: true,  inclusion: { in: STARS }
  validates  :content, presence: true

  def blank_stars
    5 - stars
  end

end
