require "rspec"
require './lib/auction'

RSpec.describe Auction do
  let(:auction) { Auction.new }

  describe "#Itialize" do
    it "Exists" do
      expect(auction).to be_instance_of(Auction)
    end
  end
end