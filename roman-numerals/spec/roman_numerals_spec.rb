require 'roman_numerals'

describe RomanNumerals do
  before :each do
    @rn = RomanNumerals.new
  end

  describe '#convert' do

    it 'converts 1' do
      expect(@rn.convert(1)).to eq('I')
    end

    it 'converts 5' do
      expect(@rn.convert(5)).to eq('V')
    end

    it 'converts 10' do
      expect(@rn.convert(10)).to eq('X')
    end

    it 'converts 25' do
      expect(@rn.convert(25)).to eq('XXV')
    end

    it 'converts 996' do
      expect(@rn.convert(996)).to eq('CMXCVI')
    end

    it 'converts 2021' do
      expect(@rn.convert(2021)).to eq('MMXXI')
    end

    it 'converts 1499' do
      expect(@rn.convert(1499)).to eq('MCDXCIX')
    end

    it 'converts 1999' do
      expect(@rn.convert(1999)).to eq('MCMXCIX')
    end
  end
end
