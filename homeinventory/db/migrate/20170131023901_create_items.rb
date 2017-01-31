class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item_name
      t.date :purchase_date
      t.decimal :purchase_price, precision: 8, scale: 2
      t.string :serial_number

      t.timestamps null: false
    end
  end
end
