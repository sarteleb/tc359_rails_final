class CreateAnimalLicenses < ActiveRecord::Migration
  def change
    create_table :animal_licenses do |t|
      t.string :name
      t.integer :number_of_pets
      t.boolean :all_licensed

      t.timestamps
    end
  end
end
