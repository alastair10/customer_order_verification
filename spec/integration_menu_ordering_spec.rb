require "menu"
require "order"

describe "Integration" do
  it "1. adds two items to the basket" do
    menu = Menu.new
    order = Order.new(menu)
    order.add_to_order("Dolma",2)
    expect(order.show_basket).to eq({"Dolma" => 2})
  end
end