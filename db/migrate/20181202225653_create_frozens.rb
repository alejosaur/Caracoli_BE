class CreateFrozens < ActiveRecord::Migration[5.2]
  def change
    create_table :frozens do |t|

      t.timestamps
    end
  end
end
