class CreateHarvestTransports < ActiveRecord::Migration[5.2]
  def change
    create_table :harvest_transports do |t|
      t.date :transport_date
      t.string :transport_origin
      t.string :transport_destination
      t.belongs_to :harvest, foreign_key: true

      t.timestamps
    end
  end
end
