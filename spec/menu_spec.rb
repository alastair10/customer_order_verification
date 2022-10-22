require "menu"

describe Menu do
  it "shows an empty menu" do
    menu = Menu.new("","")
    # menu.add
    expect(menu.all).to eq({})
  end
end

