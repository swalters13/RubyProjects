# https://projecteuler.net/problem=16
# Author: Scott Walters
# Problem: What is the sum of the digits of the number 2^1000?

digits1 = Array.new
sum = 0

digits1 = (2**1000).to_s.split('').map(&:to_i)

puts "#{2**1000}"
x=0
for x in digits1
  sum = sum + x
  puts "The current sum is #{sum}"
end