class RemovePhoneNumberFromRestaurants < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :phone_number, :string
    add_column :restaurants, :phone_number, :string
  end
end
