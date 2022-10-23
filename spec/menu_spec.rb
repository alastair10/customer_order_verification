require "menu"

describe "Menu" do
  it "1. displays the menu" do
    menu = Menu.new
    expect(menu.show_menu).to eq "Halloumi: £4.99\nWater: £2.50\nDolma: £10.99"
  end

  it "2. shows the price of an item" do
    menu = Menu.new
    expect(menu.price_check("Dolma")).to eq 10.99
  end

end