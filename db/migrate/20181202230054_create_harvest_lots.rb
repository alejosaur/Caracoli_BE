class CreateHarvestLots < ActiveRecord::Migration[5.2]
  def change
    create_table :harvest_lots do |t|

      t.timestamps
    end
  end
end
