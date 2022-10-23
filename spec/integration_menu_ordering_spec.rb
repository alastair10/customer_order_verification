require "menu"
require "ordering"

describe "Integration" do
  xit "1. adds an item to the order list" do
    menu = Menu.new
    order = Ordering.new(menu)
    order.add_to_order("Chips")
    expect(order.tot_order).to eq (["Chips"])
  end

  xit "2. removes an item from the order list" do
    menu = Menu.new
    order = Ordering.new(menu)
    order.add_to_order("Chips")
    order.add_to_order("Water")
    order.remove_from_order("Chips")
    expect(order.tot_order).to eq (["Water"])
  end

  xit "3. shows an itemized receipt" do
    menu = Menu.new
    order = Ordering.new(menu)
    order.add_to_order("Chips")
    expect(order.get_receipt).to eq ("Chips - £4")
  end
end
