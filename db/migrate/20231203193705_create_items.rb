class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :quantity
      t.boolean :purchased, default: false  # Adiciona esta linha

      t.references :category, foreign_key: true
      t.timestamps
    end
  end
end
