require '../buying_tickets.rb'

RSpec.describe BuyingTickets do
  describe "#time_required_to_buy" do 
    context "when the tickets are [5,1,1,1] and the specified position is 0" do
      subject { described_class.new.time_required_to_buy([5,1,1,1], 0) }
      it "returns the time taken for the person at the specified position to finish buying tickets" do
        expect(subject).to eq(8)
      end
    end

    context "when the tickets are [2,3,2] and the specified position is 2" do
      subject { described_class.new.time_required_to_buy([2,3,2], 2) }
      it "returns the time taken for the person at the specified position to finish buying tickets" do
        expect(subject).to eq(6)
      end
    end
  end
end
