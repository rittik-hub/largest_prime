#!/usr/bin/env ruby
# encoding: utf-8
require "pry"

root = File.expand_path("../../", __FILE__)
$: << root

require "lib/find_largest_prime"

puts "Hi there, I am Robotus Prime"
puts "Enter a number & I will tell you its largest prime number" # exec "say hello, my name is ro bahtuhs prime. please enter a number"
number = gets.chomp.to_i

# make it happen here...
largest_prime_number = LargestPrimeFactor.look_on_the_internet_for_someone_elses_brilliant_solution(number)

puts "For the number #{number}, the largest prime number is $#{largest_prime_number}.\n"