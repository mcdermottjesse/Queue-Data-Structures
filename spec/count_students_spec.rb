require '../count_students.rb'

RSpec.describe CountStudents do
  describe "#num_of_students_unable_to_eat" do
    context "when the students are [1,1,0,0] and sanwiches are [0,1,0,1]" do
      subject {described_class.new.num_of_students_unable_to_eat([1,1,0,0], [0,1,0,1])}
      it "returns the number of students that are unable to eat" do
        expect(subject).to eq(0)
      end
    end
    
    context "when the students are [1,1,1,0,0,1] and sanwiches are [1,0,0,0,1,1]" do
      subject {described_class.new.num_of_students_unable_to_eat([1,1,1,0,0,1], [1,0,0,0,1,1])}
      it "returns the number of students that are unable to eat" do
        expect(subject).to eq(3)
      end
    end
  end
end
