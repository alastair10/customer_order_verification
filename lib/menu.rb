class Menu

  DEFAULT_MENU = {
    halloumi: 4.99,
    water: 2.50,
    dolma: 10.99
  }
  
  def initialize(menu = DEFAULT_MENU)
    @menu = menu
  end

  def show_menu
    @menu.map {|dish, price| "#{dish}: £#{'%0.2f' % price}"}.join("\n")
  end

  def price_check(dish)
    @menu[dish]
  end

end