i = 0

while i < 10
  puts "Hey there"
  i += 1
end

# each iterator
arr = [23,2313,43234,234234,5435]

arr.each do |i|
  p i
end

# using for in
for i in 0..42
  p i
end

# nested iterators
teams = {
    "Hauston Astros" => {
        :first_base => "Chris Carter",
        :second_base => "Jose Altuve",
        :shortstop => "Carlos Correa"
    },
    "Texas Rangers" => {
        :first_base => "Prince Fielder",
        :second_base => "R. Odor",
        :shortstop => "Elvis Andrus"
    }
}
teams.each do  |team, players|
  puts team
  players.each do |position, player|
    p "#{player} starts at #{position}"
  end
end

# using select method
(1..10).to_a.select { |x| x.even? }
(1..10).to_a.select(&:even?)

(1..10).to_a.select do |x|
  x.even?
end
# given an array the words that are over 5 letters
arr = %w(The quick brown fox jumped over the lazy dog)
arr.select { |x| x.length > 5 }

# given an array of strings, return all of vowels
%w(a b c d e f g).select { |v| v=~ /[aeiou]/ }

# map
%w[1 23.0 0 4].map { |x| x.to_i }
#%w[1 23.0 0 4].map { &:to_i } # fix this

("a".."g").to_a.map { |i| i*2 }
Hash[[1,2.1,3.33,0.9].map { |x| [x,x.to_i] }]

#map2
Hash[%w(A dynamic open source programming language).map { |x| [x,x.length] }]

{:a => "foo", :b => "bar"}.map{|a,b| "#{a}=#{b}"}.join('&')

{:a => "foo", :b => "bar", :lat => "123.343", :long => "33.212"}
    .map{|a,b| "#{a}=#{b}"}.join('&')

#using inject method
[3,2,4,53,5,3,23343,4342,12,3].inject(:+)
[3,2,4,53,5,3,23343,4342,12,3].inject(:*)
