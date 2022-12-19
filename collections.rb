# create array
x = [12,23,42,53]
y = Array.new
y[0] = 543
y[10] = 543
p y

y.each do |i|
  puts i
end

# deleting items in array
x = ["asdsa",3,23,"fdff",2,4.0]
puts x.length
x.delete(4)
puts x.length

yy = x.delete_at(2)
puts y
puts x.length

batting_averages = [0.3,0.18,0.22,0.25]
batting_averages.delete_if { |average| average < 0.24 }
p batting_averages

