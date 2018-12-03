class CreateFreshes < ActiveRecord::Migration[5.2]
  def change
    create_table :freshes do |t|
      t.decimal :final_weight
      t.integer :size, null: false

      t.timestamps
    end
  end
end
