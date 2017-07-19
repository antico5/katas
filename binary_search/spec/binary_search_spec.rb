require 'rspec'
require_relative '../binary_search'
require_relative '../binary_search_recursive'

describe BinarySearch do
  describe '.search' do
    it "Takes a number to be found and the array in which you should find it" do
      expect(described_class.search(1,[1,2,3])).to eq 0
      expect(described_class.search(2,[1,2,3])).to eq 1
      expect(described_class.search(3,[1,2,3])).to eq 2
      expect(described_class.search(5,[1,2,3,4,5])).to eq 4
      expect(described_class.search(4,[1,2,3,4,5])).to eq 3
      expect(described_class.search(4,[1,2,3,4,5,6])).to eq 3
      expect(described_class.search(5,[1,2,3,4,5,6])).to eq 4
      expect(described_class.search(6,[1,2,3,4,5,6])).to eq 5
      expect(described_class.search(77,[1,13,24,35,77,93])).to eq 4
      expect(described_class.search(1,[1,13,24,35,77,93])).to eq 0
      expect(described_class.search(93,[1,13,24,35,77,93])).to eq 5
    end

    it "Returns -1 when the number is not on the array" do
      expect(described_class.search(3,[1,2,4])).to eq -1
      expect(described_class.search(3,[])).to eq -1
    end
  end
end

describe BinarySearchRecursive do
  describe '.search' do
    it "Takes a number to be found and the array in which you should find it" do
      expect(described_class.search(1,[1,2,3])).to eq 0
      expect(described_class.search(2,[1,2,3])).to eq 1
      expect(described_class.search(3,[1,2,3])).to eq 2
      expect(described_class.search(5,[1,2,3,4,5])).to eq 4
      expect(described_class.search(4,[1,2,3,4,5])).to eq 3
      expect(described_class.search(4,[1,2,3,4,5,6])).to eq 3
      expect(described_class.search(5,[1,2,3,4,5,6])).to eq 4
      expect(described_class.search(6,[1,2,3,4,5,6])).to eq 5
      expect(described_class.search(77,[1,13,24,35,77,93])).to eq 4
      expect(described_class.search(1,[1,13,24,35,77,93])).to eq 0
      expect(described_class.search(93,[1,13,24,35,77,93])).to eq 5
    end

    it "Returns -1 when the number is not on the array" do
      expect(described_class.search(3,[1,2,4])).to eq -1
      expect(described_class.search(3,[])).to eq -1
    end
  end
end
