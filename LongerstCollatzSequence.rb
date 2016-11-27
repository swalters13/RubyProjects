# https://projecteuler.net/problem=14
# Author: Scott Walters
# Objective: Which starting number, under one million, produces the longest Collatz sequence?

ints = Array.new(1000000) { Array.new(2) }
i = 0
j = 0
x = 0
y = 0

def evenaction( num1 )
  half = num1 / 2
  return half
end

def oddaction( num2 )
  trip = (num2 * 3) + 1
  return trip
end

def calcseqlen ( num3 )
  seqlen = 0
  seqval = num3
  while seqval != 1
    if seqval % 2 == 0
      seqval = evenaction(seqval)
      seqlen += 1
    else
      seqval = oddaction(seqval)
      seqlen += 1
    end
  end
  return seqlen
end

while x <= (ints.length - 1)
  y += 1
  ints[x][0] = y
  seq1 = ints[x][0]
  lenseq = calcseqlen(seq1)
  ints[x][1] = lenseq
  x += 1 
end

ints2 = ints.sort_by(&:last)
puts "The integer #{ints2[999999][0]} produces a sequence chain #{ints2[999999][1]} numbers long."
