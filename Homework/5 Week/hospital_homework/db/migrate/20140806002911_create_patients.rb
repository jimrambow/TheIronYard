class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :gender
      t.date :birth 
      t.text :diagnosis

      t.timestamps
    end
    end
  end
