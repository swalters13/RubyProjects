# SmallestMultiple.rb
# Author: Scott Walters
# Objective: Determine the smallest number that can be evenly divided by all the numbers from 1 to 20

$dividers = Array(1..20)
number = 1

def check_if_div (num)
  for i in $dividers
    mod = num % i
    if mod == 0
      #puts "#{num} % #{i} = #{mod}"
      if i == 20
        return true
      end
    else
      break
    end
  end
end

while number > 0
  if check_if_div(number)
    puts "The number is #{number}"
    break
  else
    number += 1
  end
end
