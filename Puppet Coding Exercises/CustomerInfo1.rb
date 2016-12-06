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

# Determine how many orders each customer has placed
custOrderCount = Hash.new(0)
custOrderPrice = Hash.new(0)
sorted[1..-1].each do |order,id,name,sku,price|
  custOrderCount[name] += 1
end

# Determine how much each customer has spend on average across all their purchases - !!This is Psudocode!!
for each customer in sorted[1..-1]
  totalCustomerPrice += sorted[4]
  aveCustomerPrice = totalCustomerPrice / custOrderCount['customername']

#Coalate the data - !!This is Psudocode!!
while i < sorted.length
  custData[i] = [ "customername",custOrderCount['customername'], aveCustomerPrice]
 

# Send the results to output in XML
customer_xml(custData)
