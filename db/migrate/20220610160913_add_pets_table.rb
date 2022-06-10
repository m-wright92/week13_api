class AddPetsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :klass
      t.string :quote

      t.integer :species_id
    end
  end
end
