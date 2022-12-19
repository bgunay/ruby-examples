
class ApiConnector
  # getter setter
  attr_accessor :title, :description, :url

  # method
  def test_method
    puts "testing class call"
  end
end

api = ApiConnector.new
api.url = "http://google.com"

puts api.url
puts api.test_method


class ApiConnector2
  attr_accessor :title, :description, :url
  def test_method
    puts "testing class call"
  end

  # initializer
  def initialize(title,description,url= "google.com")
    # @title is instance variable
    @title = title
    @description = description
    @url = url
  end

  def testing_initializers
    puts @title
    puts @description
    puts url
  end
end

api = ApiConnector2.new("My Title", "My cool description", "yahoo.com")
api.testing_initializers
api = ApiConnector2.new("My Title", "My cool description")
api.testing_initializers

# we can name args
class ApiConnector3
  attr_accessor :title, :description, :url
  def test_method
    puts "testing class call"
  end

  def initialize(title: ,description:  ,url: url= "google.com")
    @title = title
    @description = description
    @url = url
  end

  def testing_initializers
    puts @title
    puts @description
    puts url
  end
end

api = ApiConnector3.new(title: "My Title", url: "yahoo.com", description:"My cool description")
api.testing_initializers



# Inheritance
class ApiConnector4
  attr_accessor :title, :description, :url
  def test_method
    puts "testing class call"
  end

  def api_logger
    puts "API connector starting"
  end

  def initialize(title: ,description:  ,url: url= "google.com")
    @title = title
    @description = description
    @url = url
  end

  def testing_initializers
    puts @title
    puts @description
    puts url
  end
end

class SmsConnector < ApiConnector4
  def send_sms
    puts "Sending sms to #{title}"
  end

end
class MailConnector < ApiConnector4
  def send_email
    puts "Sending email to #{title}"
    private_method
  end

  def api_logger
    super
    puts "Mail connector starting"
  end

  private
  def private_method
    puts "I'm accessible only in class"
  end
end


sms = SmsConnector.new(title: "my sms connector",description: "cool desc")
email = MailConnector.new(title: "my mail connector",description: "cool desc for mail")
sms.testing_initializers
sms.send_sms

email.send_email

# polymorphism
email.api_logger
