require "prime"
class LargestPrime

	attr_accessor :number

	def initialize(number)
		@number = number
	end

	def find_largest_prime_factor
		return "Input must be an integer" unless number.is_a?(Integer)
		if @number < 4
			largest_prime = @number
		else
			# Ruby 1.9.3 has Prime class that will find this easily. Try manual way
			largest_prime_array = Prime.prime_division(@number)
			largest_prime = largest_prime_array.last.first
		end
		return largest_prime
	end

	def find_largest_prime_number
		odd_numbers_not_divisible_by_three
		divide_numbers_by_range_and_itself
		largest_prime = @only_prime_numbers.max
		return largest_prime
	end

	private

	def odd_numbers_not_divisible_by_three
		# Criteria for Prime numbers
		# 1) can't be 0
    # 2) has to be odd
    # 3) nothing divisible except itself
		@odd_num_array = []
		@number.downto(1).each do |num|
			next if ((num % 2) == 0)
			@odd_num_array << num unless ((num.to_f/3) % 1) == 0
		end
	end

	def divide_numbers_by_range_and_itself
		@only_prime_numbers = []
		@odd_num_array.each do |odd_num|
			@check_for_prime = []
			(odd_num-1).downto(2).each do |odd_range|
				# check and see if odd number is divisible
				if ((odd_num.to_f/odd_range.to_f) % 1) == 0
					@check_for_prime.push(false)
				else
					@check_for_prime.push(true)
				end
			end
			@check_for_prime = @check_for_prime.uniq
			@only_prime_numbers << odd_num unless @check_for_prime.any?{|n| n == false}
		end
	end

end