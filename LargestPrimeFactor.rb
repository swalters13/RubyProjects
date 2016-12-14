# https://projecteuler.net/problem=3
# Author: Scott Walters
# Problem: What is the largest prime factor of the number 600851475143 ?

num1 = 600851475143

primefactor = 0
x = 1

num2 = (num1 / 2).round.to_i
num3 = Math.sqrt(num1).round+1

def isPrime ( int1 )
	puts "Checking if #{int1} is not divisible by 2 and greater than 2."
	if int1 % 2 != 0 && int1 > 2
		puts "Checking if #{int1} is prime."
		(3..(Math.sqrt(int1).round+1)).step(2).all? {|x| int1 % x == 0}
	else
		return false
	end
end

while x < num2
  #puts "x = #{x}"
  if num1 % x == 0 && x > 2
  	puts "#{num1} is divisible by #{x}"
  	if isPrime(x)
   	puts "The prime factor is #{x}"
    primefactor = x
   end  
  end
  x+=1
  if x % 2 == 0
  	x += 1
  end
end

puts "The largest prime factor is #{primefactor}"
