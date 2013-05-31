require 'pry'

class LargestPrimeFactor

  def self.do_it_to_it(number)
    prime = number
    (2..Math.sqrt(number).to_i).each do |i|
      break if prime <= i
      prime /= i while (prime > i && prime % i == 0)
    end
    prime
  end
end