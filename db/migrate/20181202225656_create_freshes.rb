class CreateFreshes < ActiveRecord::Migration[5.2]
  def change
    create_table :freshes do |t|

      t.timestamps
    end
  end
end
