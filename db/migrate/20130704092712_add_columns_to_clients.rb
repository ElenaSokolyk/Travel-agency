class AddColumnsToClients < ActiveRecord::Migration
  def change
    add_column :clients, :surname, :string
    add_column :clients, :date_of_birth, :date
    add_column :clients, :passport, :string
    add_column :clients, :foreign_passport, :string
    add_column :clients, :tel_number, :string
    add_column :clients, :address, :string
  end
end
