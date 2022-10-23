class Order
  # allows user to select dishes

  def initialize(menu)
    # takes instance of Menu class
    @menu = menu
    @basket = {}
  end

  def add_to_order(dish, quantity)
    # adds item to a hash basket
    @basket[dish] = quantity
  end

  def show_basket
    # shows what's in the basket hash
    @basket
  end

  def receipt
    # takes instance of dish
    # displays itemised receipt
    @basket.map {|dish, quantity| "#{dish} x#{quantity} Total Price: #{@menu.price_check(dish)} Total Price: #{@menu.price_check(dish)*quantity}"}.join("\n")
  end
end