require "spec_helper"

describe LargestPrime do
	it "should accept only a number" do
		@bad_prime = LargestPrime.new("TEST")
		@bad_prime.find_largest_prime_factor.should == "Input must be an integer"
	end

	it "should return the number if less than 4" do
		@prime = LargestPrime.new(3)
		@prime.find_largest_prime_factor.should == 3
	end

	it "should find the largest prime number" do
		@number = LargestPrime.new(39)
		@number.find_largest_prime_factor.should == 13
	end

end