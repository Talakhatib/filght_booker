class AddDateOfBirthToPassenger < ActiveRecord::Migration[7.0]
  def change
    add_column :passengers, :date_of_birth, :date
  end
end
