class CreateFoodInHarvests < ActiveRecord::Migration[5.2]
  def change
    create_table :food_in_harvests do |t|
      t.belongs_to :food, foreign_key: true
      t.belongs_to :harvest, foreign_key: true

      t.timestamps
    end
  end
end
