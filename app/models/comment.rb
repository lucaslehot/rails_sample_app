class Comment < ApplicationRecord

    belongs_to :product
end

class Comment < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :Product

  rails_admin do
    configure :Product do
      label 'Owner of this ball: '
    end
  end
end