class CreateLots < ActiveRecord::Migration[5.2]
  def change
    create_table :lots do |t|
      t.integer :males
      t.integer :females
      t.string :species
      t.decimal :weight
      t.date :date
      t.belongs_to :fry_farms, foreign_key: true

      t.timestamps
    end
  end
end
