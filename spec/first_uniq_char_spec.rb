require '../first_uniq_char.rb'

RSpec.describe FirstUniqueChar do
  describe "#solution" do
    context "when the string is merrymayflower" do
      subject { described_class.new("merrymayflower").solution }
      it "returns the index of the first non-repeating character its index" do
        expect(subject).to eq(6)
      end 
    end

    context "when the string is loveleetcode" do
      subject { described_class.new("loveleetcode").solution }
      it "returns the index of the first non-repeating character its index" do
        expect(subject).to eq(2)
      end 
    end

    context "when the first non-repeating character index does not exist" do
      subject { described_class.new("abccab").solution }
      it "returns -1" do
        expect(subject).to eq(-1)
      end 
    end
  end

  describe "#solution_two" do
      context "when the string is merrymayflower" do
      subject { described_class.new("merrymayflower").solution }
      it "returns the index of the first non-repeating character its index" do
        expect(subject).to eq(6)
      end 
    end

    context "when the string is loveleetcode" do
      subject { described_class.new("loveleetcode").solution }
      it "returns the index of the first non-repeating character its index" do
        expect(subject).to eq(2)
      end 
    end

    context "when the first non-repeating character index does not exist" do
      subject { described_class.new("abccab").solution }
      it "returns -1" do
        expect(subject).to eq(-1)
      end 
    end
  end
end
