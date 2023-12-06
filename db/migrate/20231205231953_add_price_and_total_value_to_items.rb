class AddPriceAndTotalValueToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :price, :decimal, precision: 10, scale: 2
    add_column :items, :total_value, :decimal, precision: 10, scale: 2
  end
end