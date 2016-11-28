# https://projecteuler.net/problem=6
# Author: Scott Walters
# Objective: Calculate the diff between the sum of the squares of the first 100 ints 
# and the square of the sum of the first 100 ints.

# Initialize variables
ints = Array(1..100)
sumsquare = 0
squaresum = 0

# Function to square the value passed into it
def squarer(var1)
    result = var1 * var1
    return result
end

# Loops to sum squares and square sum
for i in ints
	squareint = squarer( i )
    sumsquare = sumsquare + squareint
end

sum = 0
for j in ints
    sum = sum + j
    squaresum = squarer( sum )
end

# Generate outputs
puts "The sum of the squares is #{sumsquare}.\n"
puts "The square of the sums is #{squaresum}.\n"
puts "The difference between the two is #{squaresum - sumsquare}."
