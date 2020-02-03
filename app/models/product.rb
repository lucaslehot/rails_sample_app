class Product < ApplicationRecord
    validates :name, :description, :price, presence: true
    validates :name, length: { in: 2..20 }
    validates :description, length: { maximum: 500 }
    validates :price, length: { in: 1..5 } 
end