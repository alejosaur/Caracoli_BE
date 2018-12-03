class CreateFrozens < ActiveRecord::Migration[5.2]
  def change
    create_table :frozens do |t|
      t.decimal :final_weight, null: false
      t.decimal :entry_weight, null: false
      t.integer :size, null: false
      t.date :packing_date, null: false

      t.timestamps
    end
  end
end
