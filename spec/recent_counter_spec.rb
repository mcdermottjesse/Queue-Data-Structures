require '../recent_counter.rb'

RSpec.describe RecentCounter do
  describe "#ping" do 
    let(:recent_counter) {described_class.new}

    context "when the timestamps are [1, 100, 3001, 3002]" do
      subject { recent_counter.ping(3002) }
      let(:timestamps) { [1, 100, 3001] }

      before do
        timestamps.each { |timestamp| recent_counter.ping(timestamp) }
      end

      it "returns the number of requests that has happened in the past 3000 milliseconds" do
        expect(subject).to eq([1, 2, 3, 3])
      end
    end

    context "when the timestamps are [1178, 1483, 1563, 4054, 4152]" do
      subject { recent_counter.ping(4152) }
      let(:timestamps) { [1178, 1483, 1563, 4054] }

      before do
        timestamps.each { |timestamp| recent_counter.ping(timestamp) }
      end

      it "returns the number of requests that has happened in the past 3000 milliseconds" do
        expect(subject).to eq([1, 2, 3, 4, 5])
      end
    end

    context "when the timestamps are [2196, 3938, 4723, 4775, 5952]" do
      subject { recent_counter.ping(5952) }
      let(:timestamps) { [2196, 3938, 4723, 4775] }

      before do
        timestamps.each { |timestamp| recent_counter.ping(timestamp) }
      end

      it "returns the number of requests that has happened in the past 3000 milliseconds" do
        expect(subject).to eq([1, 2, 3, 4, 4])
      end
    end
  end
end
