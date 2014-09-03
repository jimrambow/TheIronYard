class AddBaseCostToCars < ActiveRecord::Migration
  def change
    add_column :cars, :base_cost, :float
  end
end
