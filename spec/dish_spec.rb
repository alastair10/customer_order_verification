require "dish"

describe Dish do
  it "2. returns the name of the dish" do
    dish = Dish.new("Dolma", 10.99)
    expect(dish.show_dish).to eq "Dolma: £10.99"
  end
end