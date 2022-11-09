class RemoveDepartureFromFlights < ActiveRecord::Migration[7.0]
  def change
    remove_column :flights, :departure, :datetime
  end
end
