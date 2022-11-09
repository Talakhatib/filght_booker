class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.datetime :departure
      t.integer :airport_id
      t.datetime :start_time
      t.string :duration

      t.timestamps
    end
  end
end
