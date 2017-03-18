class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :label
      t.integer :category_id
      t.date :due_date
      t.datetime :completion_date

      t.timestamps null: false
    end
  end
end
