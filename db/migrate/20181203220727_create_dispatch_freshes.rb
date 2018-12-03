class CreateDispatchFreshes < ActiveRecord::Migration[5.2]
  def change
    create_table :dispatch_freshes do |t|
      t.belongs_to :fresh_fish, foreign_key: true
      t.belongs_to :dispatch, foreign_key: true

      t.timestamps
    end
  end
end
