class CreateHarvests < ActiveRecord::Migration[5.2]
  def change
    create_table :harvests do |t|
      t.date :date, null: false
      t.decimal :final_weight, null: false

      t.timestamps
    end
  end
end
