class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :ticket_quantity
      t.decimal :payment_amount
      t.integer :user_id
      t.integer :concert_id

      t.timestamps null: false
    end
  end
end
