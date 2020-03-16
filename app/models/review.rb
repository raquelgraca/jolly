class Review < ApplicationRecord
  belongs_to :reviewer, :class_name => "User"
  belongs_to :reviewee, :class_name => "User"

  def blank_stars
    5 - stars.to_i
  end
end
