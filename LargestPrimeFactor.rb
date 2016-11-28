# https://projecteuler.net/problem=3
# Author: Scott Walters
# Problem: What is the largest prime factor of the number 600851475143 ?

num1 = 600851475143

primefactor = 0
x = 1

num2 = Math.sqrt(num1).round + 1

while x > 0
  puts "Num2 = #{num2}"
  if num1 % num2 == 0
    if num2 % 2 != 0
      primefactor = num2
      x = 0
    end
  else
    num2 -= 1
    if num2 % 2 == 0
      num2 -= 1
    end    
  end
  puts "x = #{x}"
end

puts "The largest prime factor is #{primefactor}"
