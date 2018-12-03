class CreateDispatchFrozens < ActiveRecord::Migration[5.2]
  def change
    create_table :dispatch_frozens do |t|
      t.belongs_to :frozen_fish, foreign_key: true
      t.belongs_to :dispatch, foreign_key: true

      t.timestamps
    end
  end
end
