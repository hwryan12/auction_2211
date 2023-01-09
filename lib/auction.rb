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
    @items.each { |item| name << item.name }
    name
  end

  def unpopular_items
    no_bids = []
    @items.each { |item| no_bids << item if item.bids.empty? }
    no_bids
  end

  def potential_revenue
    revenue = @items.flat_map { |item| item.current_high_bid }
    revenue.compact.sum
  end

  def bidders
    placed_bids = []
    @items.each { |item| placed_bids << item if item.bids.any? }
    bidders = []
    placed_bids.each do |bid|
      bid.bids.each { |item| bidders << item[0] }
    end
    bidders.uniq
  end

  def bidder_info
    
  end
end