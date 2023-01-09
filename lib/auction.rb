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
    @items.each do |item|
      placed_bids << item if item.bids.any?
    end
    bidders = []
    placed_bids.each do |bid|
      bid.bids.each do |item|
        bidders << item[0]
      end
    end
    bidders.uniq
    # require "pry";binding.pry
  end
end