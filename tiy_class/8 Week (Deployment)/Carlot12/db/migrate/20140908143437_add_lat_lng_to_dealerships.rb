class AddLatLngToDealerships < ActiveRecord::Migration
  def change
    add_column :dealerships, :latitude, :float
    add_column :dealerships, :longitude, :float
  end
end
