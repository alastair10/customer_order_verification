class Menu
  
  def initialize
    @menu = {}
  end

  def add(name,price)
    # adds dishes to menu hash
    @menu[name] = price
  end

  def all
    #returns the entire menu
    @menu
  end

  def dish_name(price)
    # returns dish's name
    return @menu.key(price)

    
  end

  def dish_price(name)
    # returns dish's price
    return @menu[name] 
  end

end