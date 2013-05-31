require "spec_helper"

describe LargestPrimeFactor do
	it "should accept only a number" do
		@bad_prime = LargestPrimeFactor.do_it_to_it("TEST")
		@bad_prime.find_largest_prime_factor.should == "Input must be an integer"
	end

	it "should return the number if less than 4" do
		@prime = LargestPrimeFactor.do_it_to_it(3)
		@prime.find_largest_prime_factor.should == 3
	end

	it "should find the largest prime number" do
		@number = LargestPrimeFactor.do_it_to_it(39)
		@number.find_largest_prime_factor.should == 13
	end

end