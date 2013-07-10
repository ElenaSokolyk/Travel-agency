class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.references :direction, index: true
      t.references :type, index: true
      t.float :price

      t.timestamps
    end
  end
end
