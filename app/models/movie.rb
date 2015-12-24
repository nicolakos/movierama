class Movie < ActiveRecord::Base
  belongs_to :user
  has_many :ratings
  has_many :raters, through: :ratings, source: :user
end
