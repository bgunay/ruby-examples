# Local variables
10.times do
    x = 10
    p x
end

# Global Variables
10.times do
    $x = 10
end

p $x



# Instance Variables
@batting_avarage = 300

# Constants
TEAM = "angels"
TEAM = "Athletics"

# Class Variable
class Myclass
    @@teams = ["Team A","Team B"]
end
