class CreateSowingTransfers < ActiveRecord::Migration[5.2]
  def change
    create_table :sowing_transfers do |t|

      t.timestamps
    end
  end
end
