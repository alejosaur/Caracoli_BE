class CreateFoodInLots < ActiveRecord::Migration[5.2]
  def change
    create_table :food_in_lots do |t|
      t.belongs_to :lot, foreign_key: true
      t.belongs_to :food, foreign_key: true

      t.timestamps
    end
  end
end
