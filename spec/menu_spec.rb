require "menu"

describe "Menu" do
  it "shows an empty menu" do
    menu = Menu.new
    expect(menu.all).to eq({})
  end

  it "adds a dish to the menu" do
    menu = Menu.new
    menu.add("Pizza", 10)
    expect(menu.all).to eq({"Pizza" => 10})
  end

  context "given a dish" do
    it "returns the price" do
      menu = Menu.new
      menu.add("Pizza", 10)
      expect(menu.dish_price("Pizza")).to eq(10)
    end
  end

  context "given a dish" do
    it "returns the name" do
      menu = Menu.new
      menu.add("Pizza", 10)
      expect(menu.dish_name(10)).to eq("Pizza")
    end
  end

  context "given multiple dishes" do
    it "returns the price of one" do
      menu = Menu.new
      menu.add("Pizza", 10)
      menu.add("Chips", 4)
      expect(menu.dish_price("Chips")).to eq(4)
    end
  end

  context "given multiple dishes" do
    it "returns the name of one" do
      menu = Menu.new
      menu.add("Pizza", 10)
      menu.add("Chips", 4)
      expect(menu.dish_name(4)).to eq("Chips")
    end
  end

  context "given multiple dishes" do
    it "returns the full menu" do
      menu = Menu.new
      menu.add("Pizza", 10)
      menu.add("Chips", 4)
      expect(menu.all).to eq({"Pizza" => 10, "Chips" => 4})
    end
  end
end

