class CreateCarFeatures < ActiveRecord::Migration
  def change
    create_table :car_features do |t|
      t.integer :car_id
      t.integer :feature_id

      t.timestamps
    end
  end
end
