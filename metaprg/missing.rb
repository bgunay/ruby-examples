require 'rubygems'
require 'ostruct'

class Author
  attr_accessor :first_name, :last_name, :genre

  def author
    OpenStruct.new(first_name:first_name, last_name: last_name, genre:genre)
  end

  def method_missing(symbol, *args, &block)
    if symbol.to_s =~ /author_(.*)/
      author.send($1,*args, &block)
    else
      super
    end
  end

  # identical to above
  def respond_to_missing?(method_name, include_private = false)
    method_name.to_s.start_with?('author_') || super
  end
end

author = Author.new
author.first_name = 'Cal'
author.last_name = 'Newport'
author.genre = 'Computer Science'

p author.author_genre
p author.respond_to?(:inspect)
p author.respond_to?(:author_genre)

