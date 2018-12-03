class CreateLotTransports < ActiveRecord::Migration[5.2]
  def change
    create_table :lot_transports do |t|
      t.date :transport_date
      t.string :transport_origin
      t.string :transport_destination
      t.belongs_to :lot, foreign_key: true

      t.timestamps
    end
  end
end
