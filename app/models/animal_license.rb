class AnimalLicense < ActiveRecord::Base
  validates_presence_of :name, :number_of_pets
end
