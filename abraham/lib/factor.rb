require 'prime'
class Factor

  def initialize(number=nil)
    begin
      factor_error if number <= 1
      @number = number
      @largest_factor = Math.sqrt(number).floor
    rescue Exception
      factor_error
    end
  end

  def self.get_prime(number=nil)
    return number if Prime.prime?(number)
    gt_factor = Factor.new(number)
    gt_factor.find_factor
  end

  def prepare_numbers
    remove_unneeded((2..@largest_factor).to_a)
  end

  def find_factor
    prepare_numbers.reverse.select do |n|
      return (@number / n) if @number % n == 0
    end
  end

  def remove_unneeded(array)
    array.reject! {|n| n.even?}
  end

  def factor_error
    raise ArgumentError.new('You must put in a Integer that is greater than 1')
  end
end
