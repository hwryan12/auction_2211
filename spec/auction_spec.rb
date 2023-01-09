require "rspec"
require './lib/auction'

RSpec.describe Auction do
  let(:auction) { Auction.new }

  describe "#Itialize" do
    it "Exists" do
      expect(auction).to be_instance_of(Auction)
    end

    it "Is created with an empty items array" do
      expect(auction.items).to eq ([])
    end
  end
end