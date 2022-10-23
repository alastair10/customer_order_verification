class Menu
  
  def initialize
    @menu = {
      "Halloumi" => 4.99,
      "Water" => 2.50,
      "Dolma" => 10.99
    }
  end

  def show_menu
    @menu.map {|dish, price| "#{dish}: £#{'%.2f' % price}"}.join("\n")
  end

  def price_check(dish)
    @menu[dish]
  end
end