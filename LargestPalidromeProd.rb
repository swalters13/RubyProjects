# https://projecteuler.net/problem=4
# Author: Scott Walters
# Objective: Determine the largest palindromic sum of two three digit numbers

int1 = Array(100..999)
int2 = Array(100..999)
prod = Array.new
prodarr = Array.new
palind1 = Array.new
palindrome = 0

def inttoarr( num1 )
  len = Math.log10(num1).to_i+1
  if len % 2 == 0
    newarr = num1.to_s.split('').map(&:to_i)
    return newarr
  else
    return false
  end
end

def findpalind( num2 )
  len2 = num2.length
  if num2[0] == num2[len2-1]
    if num2[1] == num2[len2-2]
      if num2[2] == num2[len2-3]
        return true
      end
    end
  end
end

int1.reverse!
int2.reverse!

z = 0
u=0
while u == 0
  for i in int1
    for j in int2
      if !prod.include? (i*j)
        prod[z] = j * i
        prodarr = inttoarr(prod[z])
        if prodarr
          if findpalind(prodarr)
            palindrome = prod[z]
            u+=1
          end
        end
      end
      z += 1
    end
  end
end

puts "The largest palindromic product is #{palindrome}."