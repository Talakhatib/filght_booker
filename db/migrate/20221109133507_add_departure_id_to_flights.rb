class AddDepartureIdToFlights < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :departure_id, :integer
  end
end
