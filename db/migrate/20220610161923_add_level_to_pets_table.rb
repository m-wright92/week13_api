class AddLevelToPetsTable < ActiveRecord::Migration[5.2]
  def change
    add_column(:pets, :level, :integer)
  end
end
