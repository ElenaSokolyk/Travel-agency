class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :surname
      t.string :position
      t.text :description
      t.references :company, index: true

      t.timestamps
    end
  end
end
