class AddRaceToPerson < ActiveRecord::Migration
  def change
    add_column :people, :race_id, :integer
  end
end
