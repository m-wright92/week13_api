class AddSpeciesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :species do |t|
      t.string :species_name
      t.string :latin_name
    end
  end
end
