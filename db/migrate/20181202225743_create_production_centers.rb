class CreateProductionCenters < ActiveRecord::Migration[5.2]
  def change
    create_table :production_centers do |t|

      t.timestamps
    end
  end
end
