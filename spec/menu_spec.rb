require "menu"

describe "Menu" do
  it "1. displays the menu" do
    menu = Menu.new
    expect(menu.show_menu).to eq "halloumi: £4.99\nwater: £2.50\ndolma: £10.99"
  end

  it "2. shows the price of an item" do
    menu = Menu.new
    expect(menu.price_check(:dolma)).to eq 10.99
  end

end