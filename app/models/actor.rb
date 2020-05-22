class Actor < ApplicationRecord
  validates_presence_of :name, :age
  belongs_to :movie
end
