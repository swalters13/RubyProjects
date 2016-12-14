
def isPrime( num1 )
  if num1 % 2 == 0 && num2 > 2
    return False
  else
    (3..Math.sqrt(num1).round + 1).step(2) do |x|
    		if num1 % x ==0
    			return True
    		else
    			return False
    		end
    end
  end
end



int1 = Array.new (1..1000)

for n in int1
	if isPrime(n)
		puts "The sum of the digits of the number #{n} is prime."
	end
end
