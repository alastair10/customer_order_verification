class Dish
  
  attr_reader :name
  attr_reader :price

  def initialize (name,price)
    @name = name
    @price = price
  end

  def show_dish
    # returns dish as a string
    "#{@name}: £#{@price}"
  end
end