require 'rubygems'
require 'httparty'

puts '\nUsing api calls in ruby'
class EdutechionalResty
  include HTTParty
  base_uri "edutechional-resty.herokuapp.com/"

  def posts
    self.class.get('/posts.json')
  end
end

resty = EdutechionalResty.new
puts resty.posts

puts '\nHTTParty methods for working with APIs'
response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')

puts "response.code, ", response.code
puts "response.body: ", response.body
puts "response.message: " , response.message
puts "response.headers.inspect: ", response.headers.inspect

puts "\nCreating a custom API connector in Ruby"
class StackExchange
  include HTTParty
  base_uri "api.stackexchange.com"

  def initialize(service,page)
    @options = {query: {site: service}}
  end

  def questions
    self.class.get('/2.2/questions', @options)
  end

  def users
    self.class.get('2.2/users',@options)
  end
end

stackexchange = StackExchange.new('stackoverflow','1')
puts "\nStackexchange.questions: ", stackexchange.questions
puts "\nStackexchange.users: ", stackexchange.users
