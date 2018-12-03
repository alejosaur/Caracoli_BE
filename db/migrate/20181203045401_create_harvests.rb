class CreateHarvests < ActiveRecord::Migration[5.2]
  def change
    create_table :harvests do |t|
      t.date :harvest_date
      t.decimal :final_weight
      t.belongs_to :production_center, foreign_key: true

      t.timestamps
    end
  end
end
