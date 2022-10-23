require "menu"
require "order"

describe "Integration" do
  it "1. adds an item to the basket" do
    menu = Menu.new
    order = Order.new(menu)
    order.add_to_order("Dolma",2)
    expect(order.show_basket).to eq({"Dolma" => 2})
  end

  it "2. adds multiple items to the basket" do
    menu = Menu.new
    order = Order.new(menu)
    order.add_to_order("Dolma", 4)
    order.add_to_order("Water", 1)
    order.add_to_order("Halloumi", 1)
    expect(order.show_basket).to eq({"Dolma" => 4, "Water" => 1, "Halloumi" => 1})
  end

  it "3. displays an itemised receipt" do
    menu = Menu.new
    order = Order.new(menu)
    order.add_to_order("Dolma", 4)
    order.add_to_order("Water", 1)
    order.add_to_order("Halloumi", 1)
    expect(order.receipt).to eq "Dolma x4 Total Price: £19.96\nWater x1 Total Price: £2.50\n Halloumi x1 Total Price: £10.99"
  end



end