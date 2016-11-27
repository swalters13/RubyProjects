nums = Array(1..999)

# puts "#{nums}"
# puts nums.length

mults = Array.new
for i in nums
  if i % 3 == 0
    mults << i
  elsif i % 5 == 0
    mults << i
  end
end

puts "#{mults}"

sumTotal = 0

for j in mults

  sumTotal = sumTotal + j
  puts "#{sumTotal}"
end

puts "The sum of all integers divisible by 3 or 5 less than 1000 is #{sumTotal}"
