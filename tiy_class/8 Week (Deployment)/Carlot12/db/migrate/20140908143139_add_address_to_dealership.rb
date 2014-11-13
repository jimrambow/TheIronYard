class AddAddressToDealership < ActiveRecord::Migration
  def change
    add_column :dealerships, :address, :text
  end
end
