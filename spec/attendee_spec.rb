require "rspec"
require './lib/attendee'

RSpec.describe Attendee do
  let(:attendee) { Attendee.new(name: 'Megan', budget: '$50') }

  describe "#Itialize" do
    it "Exists" do
      expect(attendee).to be_instance_of(Attendee)
    end
  end
end