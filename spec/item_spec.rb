require "rspec"
require './lib/item'

RSpec.describe Item do
  let(:item1) { Item.new('Chalkware Piggy Bank') }
  let(:item2) { Item.new('Bamboo Picture Frame') }
  describe "#Itialize" do
    it "Exists" do
      expect(item1).to be_instance_of(Item)
    end

    it "Has readable attributes" do
      expect(item1.name).to eq('Chalkware Piggy Bank')
    end

    it "Is dynamic" do
      expect(item2).to be_instance_of(Item)
      expect(item2.name).to eq('Bamboo Picture Frame')
    end
  end
end