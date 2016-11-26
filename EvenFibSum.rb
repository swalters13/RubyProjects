# Generate an Array containing the values of the Fibonacci Sequence less than 4 million
fibonacci = Array.new
fibonacci << 0 << 1
first = 0
second = 1
third = 2
while (fibonacci[first] + fibonacci[second]) <= 4000000
  fibonacci[third] = fibonacci[first] + fibonacci[second]
  first+=1
  second+=1
  third+=1
end

# Extract the even numbers from the sequence
evenNum = Array.new
for i in fibonacci
  if i % 2 == 0
    evenNum << i
  end
end

# Sum the even numbers
sumTotal = 0
for j in evenNum
  sumTotal = j + sumTotal
end

puts "The sum of the even numbers of the Fibonacci Sequence less than 4 million is #{sumTotal}"
