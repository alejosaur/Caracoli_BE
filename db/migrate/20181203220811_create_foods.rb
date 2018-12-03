class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :brand
      t.decimal :weight_balance

      t.timestamps
    end
  end
end
