require 'spec_helper'

describe Factor do
  # silly test to just start and see if tests are working
  it 'return that Factor is a class' do
    expect(Factor.class).to be(Class)
  end

  context 'an incorrect value is entered' do
    it 'return an error for negative number' do
      expect{Factor.new(-1)}.to raise_error(ArgumentError, 'You must put in a Integer that is greater than 1')
    end

    it 'returns an error for nil entries' do
      expect{ Factor.new(nil)}.to raise_error(ArgumentError, 'You must put in a Integer that is greater than 1')
    end

    it 'returns an error for 0' do
      expect{ Factor.new(0)}.to raise_error(ArgumentError, 'You must put in a Integer that is greater than 1')
    end
  end

  context 'number entered is prime' do
    it 'returns 2 for 2' do
      expect(Factor.get_prime(2)).to be(2)
    end
    it 'returns 7 for 7' do
      expect(Factor.get_prime(7)).to be(7)
    end
    it 'returns 1299827 for 1299827' do
      expect(Factor.get_prime(1299827)).to be(1299827)
    end
  end

  it 'returns 7 for 49' do
    expect(Factor.get_prime(49)).to eq(7)
  end

  it 'returns 5 for 15' do
    expect(Factor.get_prime(15)).to eq(5)
  end
  it 'returns 7 for 35' do
    expect(Factor.get_prime(35)).to eq(7)
  end
  it 'returns 797 for 435959' do
    expect(Factor.get_prime(435959)).to eq(797)
  end
  it 'returns 997 for 988027' do
    expect(Factor.get_prime(988027)).to eq(997)
  end
end
