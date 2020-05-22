class Movie < ApplicationRecord
  validates_presence_of :title, :creation_year, :genre
  has_many :actors
  belongs_to :studio

  def average_actor_age
    actors.average(:age)
  end

  def order_by_actor_age
    actors.order(:age)
  end
end
