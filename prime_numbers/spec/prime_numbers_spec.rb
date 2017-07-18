require 'rspec'
require_relative 'prime_numbers'

describe PrimeNumbers do
  describe 'factors' do
    it 'returns [2] for 2' do
      expect(PrimeNumbers.factors(2)).to eq [2]
    end
    it 'returns [3] for 3' do
      expect(PrimeNumbers.factors(3)).to eq [3]
    end
    it 'returns [2,2] for 4' do
      expect(PrimeNumbers.factors(4)).to eq [2,2]
    end
    it 'returns [2,3] for 6' do
      expect(PrimeNumbers.factors(6)).to eq [2,3]
    end
    it 'returns [3,5,5] for 25' do
      expect(PrimeNumbers.factors(75)).to eq [3,5,5]
    end
  end
end
