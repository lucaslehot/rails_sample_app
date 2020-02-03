class ProductsController < ApplicationController
    def index
        @products = Product.all.limit(5)
    end

    def name
        puts :name
    end
end
