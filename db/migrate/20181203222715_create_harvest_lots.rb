class CreateHarvestLots < ActiveRecord::Migration[5.2]
  def change
    create_table :harvest_lots do |t|
      t.belongs_to :lot, foreign_key: true
      t.belongs_to :harvest, foreign_key: true

      t.timestamps
    end
  end
end
