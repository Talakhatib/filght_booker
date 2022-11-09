class AddArrivalIdToFlights < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :arrival_id, :integer
  end
end
