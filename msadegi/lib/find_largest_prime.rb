require 'pry'

class LargestPrimeFactor

  def self.look_on_the_internet_for_someone_elses_brilliant_solution(number)
    prime = number
    (2..Math.sqrt(number).to_i).each do |i|
      break if prime <= i
      prime /= i while (prime > i && prime % i == 0)
    end
    prime
  end
end