input1 = 0
input2 = 0
time1 = Array.new
time2 = Array.new
finaltime = Array.new


def timetohunds( intime )

  outtime = (intime[0] * 6000) + (intime[1] * 100) + intime[2]
  return outtime
end

def hundstotime( intime2 )
  outtime2 = Array.new
  outtime2[0] = intime2 / 6000
  outtime2[1] = (intime2 -(6000 * outtime2[0])) / 100
  outtime2[2] = intime2 - (6000 * outtime2[0]) - (100 * outtime2[1])
  return outtime2
end

puts "Please enter the first lap time in MM:ss:hh format:\n"
input1 = gets.chomp
puts "Please enter the second lap time in MM:ss:hh format:\n"
input2 = gets.chomp


time1 = input1.split(':').map(&:to_i)
time2 = input2.split(':').map(&:to_i)

time1int = timetohunds(time1)
time2int = timetohunds(time2)

avetimeint = (time1int + time2int) / 2

finaltime = hundstotime(avetimeint)

puts "The average time is #{finaltime[0]}:#{finaltime[1]}:#{finaltime[2]}"



#puts "The test time is #{testtime[0]}:#{testtime[1]}:#{testtime[2]}"
#testtime2 = timetohunds(testtime)
#puts "The time in hundredths of seconds is #{testtime2}"
#finaltime = hundstotime(testtime2)
#puts "The final time is #{finaltime[0]}:#{finaltime[1]}:#{finaltime[2]}"
