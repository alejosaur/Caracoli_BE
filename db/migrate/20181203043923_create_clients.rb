class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.integer :identification
      t.string :name
      t.string :address
      t.string :city
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
