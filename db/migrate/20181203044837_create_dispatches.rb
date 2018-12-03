class CreateDispatches < ActiveRecord::Migration[5.2]
  def change
    create_table :dispatches do |t|
      t.date :dispatch_date
      t.belongs_to :client, foreign_key: true

      t.timestamps
    end
  end
end
