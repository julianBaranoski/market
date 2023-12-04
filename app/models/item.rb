# app/models/item.rb
class Item < ApplicationRecord
    # outros códigos
    validates :name, presence: true
    validates :quantity, numericality: { only_integer: true, greater_than: 0 }
  
    # Método para marcar como comprado
    def mark_as_purchased
      update(purchased: true)
    end
  
    # Método para marcar como não comprado
    def mark_as_not_purchased
      update(purchased: false)
    end

    belongs_to :category
  end
  