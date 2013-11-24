require 'pry'
@multiple_responses = []

def nothing_to_say
    puts 'Ok, fine!'
end

def repeat_the_statement(statement)
  puts statement
end

def has_alot_to_say
    puts 'Ok lets here it'
    statement = gets.chomp
    while statement.downcase != 'done'
      statement = gets.chomp
      if statement != 'done'
       @multiple_responses << statement
     end
    end
    how_many_responsses = @multiple_responses.count
    first_repsonse = @multiple_responses.shift
    last_response = @multiple_responses.pop
    puts "First you said: #{first_repsonse}"
      @multiple_responses.each do |line|
        puts "Then you said: #{line}"
      end
      puts "Finialy you said: #{last_response}"
      puts "Phew glad you got all #{how_many_responsses} of those things off your chests"
end

def has_a_speech
    puts "Ok where can I find what you want to say?"
    file_name = gets.chomp
    puts "Loading #{file_name}..."
    # if file_name == 'speech.txt'
    begin
    File.open("#{file_name}", "r").each_line do |line|
      @multiple_responses << line
    end
    rescue 
      puts "I could not find the file #{file_name}"
end
  if @multiple_responses.count > 0
    how_many_responsses = @multiple_responses.count
    first_repsonse = @multiple_responses.shift
    last_response = @multiple_responses.pop
    puts "First you said: #{first_repsonse}"
    @multiple_responses.each do |line|
        puts "Then you said: #{line}"
      end
   puts "Finialy you said: #{last_response}"
   puts "Phew glad you got all #{how_many_responsses} of those things off your chests" 
  end
end


puts 'What do you want to say'
answer=gets.chomp

if answer.downcase == 'nothing'
  nothing_to_say
elsif answer.downcase == 'i have alot to say'
  has_alot_to_say
elsif answer.downcase == 'i have something prepared'
  has_a_speech
else 
  repeat_the_statement(answer)
end
  