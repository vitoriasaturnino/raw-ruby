class Market
  def initialize(product)
    @product = product
  end

  def buy
    puts "Vocẽ comprou o produto #{@product.name} que custa R$#{@product.price}"
  end
end
