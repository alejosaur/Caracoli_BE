class CreateFryFarms < ActiveRecord::Migration[5.2]
  def change
    create_table :fry_farms do |t|
      t.string :nit

      t.timestamps
    end
  end
end
