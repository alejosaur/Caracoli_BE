class CreateFrozenFishes < ActiveRecord::Migration[5.2]
  def change
    create_table :frozen_fishes do |t|
      t.decimal :initial_weight
      t.decimal :final_weight
      t.integer :size
      t.date :packing_date
      t.belongs_to :harvest, foreign_key: true

      t.timestamps
    end
  end
end
