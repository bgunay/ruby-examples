# simple
begin
  puts 8/0
rescue
  puts "Rescued the error"
end

# better handling
begin
  puts 8/0
rescue ZeroDivisionError => e
  puts "Error occurred #{e}"
end

begin
  puts nil + 10
rescue StandardError => e
  puts "Error occurred #{e}"
end

# build custom error
def error_logger(e)
  File.open("./files/error_logs.log", 'w+')  do |file|
    file.puts e
  end
end

begin
  puts nil + 10
rescue StandardError => e
  error_logger("Error. #{e} at #{Time.now}")
end
