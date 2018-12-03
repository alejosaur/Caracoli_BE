class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.integer :identification, null: false, unique: true
      t.string :name, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
