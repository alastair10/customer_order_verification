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
    @basket.map {|dish, quantity|
    price = @menu.price_check(dish)
    total_price = tot_price_calc(price, quantity)
    print_order(dish, quantity, total_price)}.join("\n")
  end

  private

  def tot_price_calc(price, quantity)
    price * quantity
  end

  def print_order(dish, quantity, total_price)
    "#{dish.capitalize} x#{quantity} Total Price: £#{'%0.2f' % total_price}"
  end
end