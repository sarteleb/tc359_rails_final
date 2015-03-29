class AnimalLicense < ActiveRecord::Base
  validates_presence_of :name, :number_of_pets
  validates_numericality_of :number_of_pets, :greater_than_or_equal_to => 1
end
