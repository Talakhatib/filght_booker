class AddPhoneToPassenger < ActiveRecord::Migration[7.0]
  def change
    add_column :passengers, :phone, :string
  end
end
