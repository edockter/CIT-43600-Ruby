class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.decimal :price
      t.integer :tickets_available

      t.timestamps null: false
    end
  end
end
