class RemoveAirportIdFromFlights < ActiveRecord::Migration[7.0]
  def change
    remove_column :flights, :airport_id, :integer
  end
end
