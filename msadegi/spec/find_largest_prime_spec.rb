require "spec_helper"

describe LargestPrimeFactor do
	it "should accept only a number" do
		@bad_prime = LargestPrimeFactor.look_on_the_internet_for_someone_elses_brilliant_solution("TEST")
		@bad_prime.find_largest_prime_factor.should == "Input must be an integer"
	end

	it "should return the number if less than 4" do
		@prime = LargestPrimeFactor.look_on_the_internet_for_someone_elses_brilliant_solution(3)
		@prime.find_largest_prime_factor.should == 3
	end

	it "should find the largest prime number" do
		@number = LargestPrimeFactor.look_on_the_internet_for_someone_elses_brilliant_solution(151)
		@number.find_largest_prime_factor.should == 151
	end

end