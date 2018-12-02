class CreateLotFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :lot_foods do |t|

      t.timestamps
    end
  end
end
