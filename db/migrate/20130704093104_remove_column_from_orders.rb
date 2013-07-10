class RemoveColumnFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :end_date, :date
  end
end
