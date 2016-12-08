require "csv"
require "builder"

inFile = Array.new

def customer_xml( customer )
  xml = Builder::XmlMarkup.new(:target => $stdout, :indent => 2 )
  xml.instruct! :xml, :encoding => "ASCII"
  y=0
  while y < customer.length
    xml.customer do |c|
      c.name customer[y][0]
      c.ordernumber customer[y][1]
      c.totalprice sprintf('%.2f', customer[y][2].to_f)
      y += 1
    end
  end
end

# Read in the CSV file
inFile = CSV.read("customerinfo.csv", "r")

# Sort the CSV file by customer name while leaving the header line alone
sorted = [inFile.first] + inFile[1..-1].sort_by{|x| x[2]}

# Determine how many orders each customer has placed and the total they have spent
custData = Hash.new {|hash, key| hash[key] = Array.new}
custOrderCount = Hash.new(0)
custTotalPrice = Hash.new(0)

sorted[1..-1].each do |order,id,name,sku,price|
  custOrderCount[name] += 1
  custTotalPrice[name] += price.delete('$').to_f
end

#Coalate the data
custOrderCount.each do |name|
  custData[name[0]] << name[1]
end

custTotalPrice.each do |name|
  custData[name[0]] << name[1]
end

custData2 = Array.new(custData.length) {Array.new(3)}

x=0
custData.each do |key, value1, value2|
  custData2[x][0] = key.to_s
  custData2[x][1] = value1[0].to_s
  custData2[x][2] = value1[1].to_s
  x+=1
end

# Send the results to output in XML
xml = customer_xml(custData2)

