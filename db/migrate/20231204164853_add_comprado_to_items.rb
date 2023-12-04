class AddCompradoToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :comprado, :integer
  end
end
