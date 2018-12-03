class CreateDispatches < ActiveRecord::Migration[5.2]
  def change
    create_table :dispatches do |t|

      t.timestamps
    end
  end
end
