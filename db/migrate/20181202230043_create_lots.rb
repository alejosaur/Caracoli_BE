class CreateLots < ActiveRecord::Migration[5.2]
  def change
    create_table :lots do |t|
      t.integer :units, null: false
      t.decimal :final_weight, null: false
      t.string :species, null: false
      t.integer :males, null: false
      t.integer :females, null: false
      t.date :date, null: false

      t.timestamps
    end
  end
end
