class CreateAnimalLicenses < ActiveRecord::Migration
  def change
    create_table :animal_licenses do |t|
      t.text :animal_type
      t.integer :citizen_id

      t.timestamps
    end
  end
end
