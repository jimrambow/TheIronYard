class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :title
      t.text :notes
      t.integer :user_id
      t.timestamps
    end
  end
end
