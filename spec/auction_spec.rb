require "rspec"
require './lib/auction'
require './lib/item'

RSpec.describe Auction do
  let(:auction) { Auction.new }
  let(:item1) { Item.new('Chalkware Piggy Bank') }
  let(:item2) { Item.new('Bamboo Picture Frame') }

  describe "#Itialize" do
    it "Exists" do
      expect(auction).to be_instance_of(Auction)
    end

    it "Is created with an empty items array" do
      expect(auction.items).to eq ([])
    end

    it "Can add item to items array" do
      auction.add_item(item1)
      auction.add_item(item2)

      expect(auction.items).to eq ([item1, item2])
    end
  end
end