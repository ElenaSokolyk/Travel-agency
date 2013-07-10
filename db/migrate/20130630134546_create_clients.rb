class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :salt
      t.references :category, index: true

      t.timestamps
    end
  end
end
