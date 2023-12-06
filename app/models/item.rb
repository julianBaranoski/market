# app/models/item.rb

class Item < ApplicationRecord
  # outros códigos
  validates :name, presence: true
  validates :quantity, numericality: { only_integer: true, greater_than: 0 }
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :category_id, presence: true

  belongs_to :category

  def mark_as_purchased
    update_attribute(:purchased, true)
  end

  def mark_as_not_purchased
    update_attribute(:purchased, false)
  end
end
