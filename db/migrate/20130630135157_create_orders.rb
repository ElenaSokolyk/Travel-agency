class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.date :start_date
      t.date :end_date
      t.references :client, index: true
      t.references :tour, index: true

      t.timestamps
    end
  end
end
