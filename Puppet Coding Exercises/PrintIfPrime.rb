def isPrime( num1 )
  if num1 % 2 == 0 && num1 > 2
    return false
  end
  (3..(Math.sqrt(num1).to_i+1)).step(2).all? {|i| num1 % i != 0}
end

def intSum( num2 )
  sum = num2.to_s.chars.map(&:to_i).inject(0,:+)
  return sum
end

x = 1
while x < 100000
  sum1  = intSum(x)
  if isPrime(sum1)
    puts "The sum of #{x}'s digits is #{sum1} and is prime."
  end
  x += 1
end
