nums = Array.new(1000) { |e| e = e + 1 }

# puts "#{nums}"
# puts nums.length

mults = Array.new
for i in nums
  if i % 3 == 0
    mults << i
  elsif i % 5 == 0
    mults << i
  end
  i+=1
end

sumTotal = 0

for j in mults
  sumTotal = sumTotal + j
  j+=1
end

puts "The sum of all integers divisible by 3 or 5 less than 1000 is #{sumTotal}"
