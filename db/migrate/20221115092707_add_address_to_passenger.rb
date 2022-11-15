class AddAddressToPassenger < ActiveRecord::Migration[7.0]
  def change
    add_column :passengers, :address, :string
  end
end
