require 'prime'
class PrimeFactor

  def initialize(number)
    @number = number
  end

  def largest
    mods.select { |r| Prime.prime?(r) }.max
  end

private
  def mods
    stuff.select { |i| @number % i == 0 }
  end

  def stuff
    Prime.take_while { |prime| prime <= @number/2 } << @number
  end
end
