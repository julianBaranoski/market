# app/models/item.rb

class Item < ApplicationRecord
  # outros códigos
  validates :name, presence: true
  validates :quantity, numericality: { only_integer: true, greater_than: 0 }
  validates :price, numericality: { greater_than_or_equal_to: 0 }

  belongs_to :category

  after_save :calculate_total_value, unless: -> { total_value.present? }

  def calculate_total_value
    self.total_value = quantity * price.to_f
    save(validate: false) # Save without validation to avoid recursion
  end

  def mark_as_purchased
    update(purchased: true)
  end

  def mark_as_not_purchased
    update(purchased: false)
  end
end
