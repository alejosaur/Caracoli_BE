class CreateFreshFishes < ActiveRecord::Migration[5.2]
  def change
    create_table :fresh_fishes do |t|
      t.decimal :final_weight
      t.integer :size
      t.belongs_to :harvest, foreign_key: true

      t.timestamps
    end
  end
end
