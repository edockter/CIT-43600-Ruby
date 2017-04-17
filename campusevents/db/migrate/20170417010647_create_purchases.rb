class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :ticket_quantity
      t.decimal :payment_amount
      t.text :response

      t.timestamps null: false
    end
  end
end
