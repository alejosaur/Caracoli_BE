class CreateHarvestTransfers < ActiveRecord::Migration[5.2]
  def change
    create_table :harvest_transfers do |t|

      t.timestamps
    end
  end
end
