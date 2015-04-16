class CreateCitizens < ActiveRecord::Migration
  def change
    create_table :citizens do |t|
      t.text :name
      t.text :address

      t.timestamps
    end
  end
end
