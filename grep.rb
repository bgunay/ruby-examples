# intro to grep
arr = [1,3,2,12,1,2,31]
puts arr.grep(1)
puts arr.grep(100)

# using grep instead of select and map methods for searching
filenames = %w[hey.rb there.rb index.html here.rb gokceada.rb]
puts "\nwith select:"
ruby_files = filenames.select { |x| x =~ /\.rb/}.map { |x| x[0..-4] }
puts ruby_files

# do it with grep more efficient
puts "\nwith grep:"
puts filenames.grep(/(.*)\.rb/){$1}

