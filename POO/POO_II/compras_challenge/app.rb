require_relative './market.rb'
require_relative './product.rb'

product = Product.new
product.name = "Maçã"
product.price = 0.30

market = Market.new(product)

market.buy
