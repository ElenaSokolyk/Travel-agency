class AddColumnsToTours < ActiveRecord::Migration
  def change
    add_column :tours, :description, :text
    add_column :tours, :start_date, :date
    add_column :tours, :end_date, :date
    add_column :tours, :num_of_places, :integer
  end
end
