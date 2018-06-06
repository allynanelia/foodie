require "foodie"

RSpec.describe Foodie do
  it "has a version number" do
    expect(Foodie::VERSION).not_to be nil
  end

  # it "does something useful" do
  #   expect(false).to eq(true)
  # end
end

RSpec.describe Foodie::Food do
  it "broccoli is gross" do
    expect(Foodie::Food.portray("Broccoli")).to eql("Gross!")
  end

  it "anything else is delicious" do
    expect(Foodie::Food.portray("Not Broccoli")).to eql("Delicious!")
  end
end
