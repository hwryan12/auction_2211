require "rspec"
require './lib/attendee'

RSpec.describe Attendee do
  let(:attendee) { Attendee.new(name: 'Megan', budget: '$50') }

  describe "#Itialize" do
    it "Exists" do
      expect(attendee).to be_instance_of(Attendee)
    end

    it "Has readable attributes" do
      expect(attendee.name).to eq('Megan')
      expect(attendee.budget).to eq('$50')
    end
  end
end