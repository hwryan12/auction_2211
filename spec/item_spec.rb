require "rspec"
require './lib/item'

RSpec.describe Item do
  let(:item1) { Item.new('Chalkware Piggy Bank') }
  
  describe "Item" do
    it "Exists" do
      expect(item1).to be_instance_of(Item)
    end

    it "Has readable attributes" do
      expect(item1.name).to eq('Chalkware Piggy Bank')
    end
  end
end