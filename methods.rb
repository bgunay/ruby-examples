def baseball_team_list

  p ["A’s", "Angels", "Astros"]

end

#To access this method, I can simply call the method by its name.
baseball_team_list

def second_baseball_team_list
  x = 10
  ["A’s", "Angels", "Astros"] if x == 9
  ["Yankees","Mets"]
end

p second_baseball_team_list

def void_method
  puts "hey void method"
end
def method_with_return
  "hey there"
end
void_method
x =  method_with_return
p x.upcase


class Invoice
  # Class method
  def self.print_out
    "Printed out invoice"
  end
  # Instance method
  def convert_to_pdf
    "Converted to pdf"
  end
end

p Invoice.print_out
i = Invoice.new
p i.convert_to_pdf


# Procs
full_name = Proc.new { | first, last| first + " " + last }
p full_name["Jordan", "Hudgens"]
p full_name.call"Jordan","Hudgens"

repeater = Proc.new { | first | first * 5 }
p repeater["Burhan "]

repeater2 = Proc.new do |first|
  first * 5
end
p repeater2["Burhan "]

# Lambda
first_name = lambda { |first,last| first + " " + last }
p first_name["Burhan", "Gunay"]

first_name = ->(first,last) { first + " " + last }
p first_name["Burhan", "Gunay"]

full_name = lambda { |first, last| first + " " + last }
p full_name.call("Burhan", "Gunay")

# lambdas throw error when wrong number of args, proc does not

def my_method_with_lambda
  x = lambda { return }
  x.call
  p "Text from within the method"
end
my_method_with_lambda

def my_method_with_proc
  x = Proc.new { return }
  x.call
  p "Text from within the method"
end
my_method_with_proc


# method arguments
def full_name(first_name, last_name)
  first_name + " " + last_name
end
puts full_name "burhan", "gunay"

def print_address(city:, state:, zip:)
  puts city
  puts state
  puts zip
end

print_address city: "Turkey", state: "Canakkale", zip: "17500"

def print_address city, state, zip
  puts city; puts state; puts zip
end
print_address "Scottsdale", "AZ", "85251"

def sms_generator (api_key, num, msg, locale)
  # magic sms stuff...
end

sms_generator "2343sdf", 555555, " hey there", "TR"
#sms_generator  api_key: "2343sdf", num: 555555, msg: " hey there", locale: "TR"

def stream_movie(title:, lang:"ENG")
  puts title
  puts lang
end
stream_movie title: "The Fountain"
stream_movie title: "The Fountain" , lang: "TR"

# splat and optional args
def roster(*players)
  puts players
end
roster 'Altuve', 'Gattis', 'Springer'

def roster (**players_with_positions)
  players_with_positions.each do |player, position|
    puts "Player: #{player}"
    puts "Position: #{position}"; puts "\n"
  end
end

data = {
    "Altuve": "2nd Base",
    "Alex Bregman": "3rd Base",
    "Evan Gattis": "Catcher",
    "George Springer": "OF"
}
roster(data)

def customer_assignments(*customers)
  # "Assigning customers: #{customers}" ->gives array
  customers.each do |customer|
    puts customer.upcase
  end
end

customer_assignments(
    "Apple",
    "Google",
    "Facebook"
)

def registration (email:, password:, **kwargs)
  puts "Building account for: #{email}"
  if kwargs[:role]
    puts "With role: #{kwargs[:role]}"
  end
end

registration(
    email: "jordan@example.com",
    password: "asdasds@asd.com"
)

def invoice(options = {})
  puts options[:company]
  puts options[:total]
  puts options[:something_else]
end

invoice company: "Google", total: 123, state: "AZ"