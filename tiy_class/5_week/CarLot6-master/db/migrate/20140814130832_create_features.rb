class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :name
      t.float :cost
      t.text :description

      t.timestamps
    end
  end
end
