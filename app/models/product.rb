class Product < ApplicationRecord
    validates :name, :description, :price, presence: true
    validates :name, length: { in: 2..20 }
    validates :description, length: { maximum: 500 }
    validates :price, length: { in: 1..5 } 
    has_many :comments
    self.per_page = 5
end

class Product < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :player

  rails_admin do
    configure :player do
      label 'Owner of this ball: '
    end
  end
end