require "csv"
require "builder"

inFile = Array.new
header = Array.new
custData = Array.new {Array.new(3)}

def customer_xml( custArray )
  xml = Builder::XmlMarkup.new( :indent => 2 )
  xml.instruct! :xml, :encoding => "ASCII"
  xml.customer do |c|
    c.name "custArray[0]"
    c.ordernumber "custArray[1]"
    c.averageprice "custArray[2]"
  end
end

# Read in the CSV file
inFile = CSV.read("customerinfo.csv", "r")

# Sort the CSV file by customer name while leaving the header line alone
sorted = [inFile.first] + inFile[1..-1].sort_by{|x| x[2]}

for orders in sorted[1..-1]
  puts "#{orders}"
end


# Determine how many orders each customer has placed and the total they have spent
custOrderCount = Hash.new(0)
custTotalPrice = Hash.new(0)

sorted[1..-1].each do |order,id,name,sku,price|
  custOrderCount[name] += 1
  custTotalPrice[name] += price.delete('$').to_f
end

puts "#{custOrderCount}"
puts "#{custTotalPrice}"

#Coalate the data

 

# Send the results to output in XML
#customer_xml(custData)
