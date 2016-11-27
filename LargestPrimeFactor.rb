# https://projecteuler.net/problem=3
# Author: Scott Walters
# Problem: What is the largest prime factor of the number 600851475143 ?

ints1 = Array(600851475142..1)
num1 = 600851475143
primefactor = 0

for i in ints1
  if num1 % i == 0
    primefactor = i
  end
end

puts "The largest prime factor is #{primefactor}"
