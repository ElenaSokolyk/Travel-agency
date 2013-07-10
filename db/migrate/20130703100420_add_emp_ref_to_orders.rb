class AddEmpRefToOrders < ActiveRecord::Migration
  def change
    add_reference :orders, :employee, index: true
  end
end
