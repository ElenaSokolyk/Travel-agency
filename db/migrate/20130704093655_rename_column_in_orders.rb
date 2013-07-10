class RenameColumnInOrders < ActiveRecord::Migration
  def change
    rename_column :orders, :start_date, :order_date
  end
end
