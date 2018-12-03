class CreateDispatches < ActiveRecord::Migration[5.2]
  def change
    create_table :dispatches do |t|
      t.date :dispatch_date, null: false

      t.timestamps
    end
  end
end
