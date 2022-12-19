
# r reading,
# a appending,
# w just writing,
# w+ writing and reading,
# a+ reading and appending,
# r+ updating reading writing

# writing to a file

# with open
File.open("../files/teams.txt", 'w+') { |f| f.write("Twins\n","Astros\n","Mets\n","Yankees\n")}

# with new
file_to_save = File.new("../files/other-teams.txt", 'w+')
file_to_save.puts("A's","DiamondBacks", "Marlins", "Mariners")
file_to_save.close

# reading
teams = File.read("../files/teams.txt")
p teams.split("\n")

teams_other = File.read("../files/other-teams.txt")

teams_master = teams.split("\n") + teams_other.split("\n")

p teams_master

teams_master.each do |team|
  p team.upcase
end

# deleting file
File.delete"../files/other-teams.txt"

# append to file
10.times do
  sleep 0.2
  puts "Record saved.."
  File.open("../files/server_logs.log", 'a') { |f| f.puts "Server started at: #{Time.new}" }
end


