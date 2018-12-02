class CreateHarvestFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :harvest_foods do |t|

      t.timestamps
    end
  end
end
