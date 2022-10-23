class Order
  #allows user to select dishes

  def initialize(menu)
    # takes instance of Menu class
    @menu = menu
    @basket = {}
  end

  def add_to_order(item, quantity)
    # adds item to a hash basket
    @basket[item] = quantity
  end

  def show_basket
    @basket
  end
end