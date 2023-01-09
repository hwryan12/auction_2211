class Auction
  attr_reader :items

  def initialize
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def item_names
    name = []
    @items.each do |item|
      name << item.name
    end
    name
  end

  def unpopular_items
    no_bids = []
    @items.each do |item|
      no_bids << item if item.bids.empty?
    end
    no_bids
  end
end