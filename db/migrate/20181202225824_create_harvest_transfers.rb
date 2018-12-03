class CreateHarvestTransfers < ActiveRecord::Migration[5.2]
  def change
    create_table :harvest_transfers do |t|
      t.date :date, null: false
      t.string :origin, null: false
      t.string :destination, null: false

      t.timestamps
    end
  end
end
