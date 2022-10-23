class Ordering
  #allows user to select dishes
  def initialize(menu)
    @menu = menu
    @order = {}
  end

  def add_to_order(item)
    # adds item to an hash
    @order
  end

  def remove_from_order(item)
    # removes dish from order
    @order.delete(item)
  end

  def tot_order
    # shows list of ordered items
    @order
  end

  def get_receipt
    # shows order and price
    @order.each do |item|
      # "@{item} - £" @menu.price_check(item)
    end
  end

end