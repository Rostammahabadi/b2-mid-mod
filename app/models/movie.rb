class Movie < ApplicationRecord
  validates_presence_of :title, :creation_year, :genre
  has_many :actors
  belongs_to :studio
end
