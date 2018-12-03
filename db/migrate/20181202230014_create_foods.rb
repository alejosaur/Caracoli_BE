class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :brand, null: false
      t.decimal :weight_balance, null: false

      t.timestamps
    end
  end
end
