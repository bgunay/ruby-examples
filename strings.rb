puts "Name an animal"

animal = gets.chomp

puts "Name a noun"

noun= gets.chomp

p "The quick brown #{animal} jumped over the lazy #{noun} "

p "Astros".upcase
p "Astros".downcase
p "Astros".swapcase
p "Astros".reverse.upcase


str = "The quick brown fox jumped over the quick dog"
p str.sub "quick", "slow"
p str.gsub "quick", "slow"
p str.gsub! "quick", "slow" # ! -> it changes original value 'str'

str = "   The quick brown fox jumped over the quick dog   "
#strip
p str.strip

str = "The quick brown fox jumped over the quick dog fox jumped over the quick do  fox jued quick dog fox dog fox jumped over the quick quick dog fox jumped over the quick dog"
#split
p str.split
p str.split.size # how many elements (words) in this array

p str.split(//)
p str.split(//).size # how many letters

