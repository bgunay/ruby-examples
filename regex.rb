
str = "The quick 12 brown foxes jumped over the 10 lazy dogs"
p str =~ /0/ # gives 42-> last position of 'o'
p str =~ /quick/

p str =~ /z/ ? "Valid" : "Invalid"

p str =~ /Z/i ? "Valid" : "Invalid" # with "i" it makes case insensitive search

p str.to_enum(:scan, /\d+/).map {Regexp.last_match} # finds all integers

# email validation matcher..
VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

def is_valid_email?(email)
  email =~ VALID_EMAIL_REGEX
end

p is_valid_email?("b.gunay1@gmail.com") ? "Valid" : "Invalid"
p is_valid_email?("b.gunay1_gmail.com") ? "Valid" : "Invalid"
p is_valid_email?("bsadAd.a@Gaail") ? "Valid" : "Invalid"
