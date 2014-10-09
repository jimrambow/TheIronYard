class CreateSkateboards < ActiveRecord::Migration
  def change
    create_table :skateboards do |t|
      t.string :name
      t.float :retail_price
      t.float :size
      t.string :description
      t.timestamps
    end
  end
end
