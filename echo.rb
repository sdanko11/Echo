require 'pry'
@multiple_responses = []

def playback(what_will_playback)
  if what_will_playback.downcase == 'nothing!'
    puts 'Ok, fine!'
elsif what_will_playback.downcase == 'i have a lot to say'
    puts 'Ok lets here it'
    while what_will_playback.downcase != 'done'
      what_will_playback=gets.chomp
      if what_will_playback != 'done'
       @multiple_responses << what_will_playback
     end
    end
    how_many_responsses = @multiple_responses.count
    first_repsonse = @multiple_responses.shift
    last_response = @multiple_responses.pop
    puts "First you said: #{first_repsonse}"
      @multiple_responses.each do |statement|
        puts "Then you said: #{statement}"
      end
      puts "Finialy you said: #{last_response}"
      puts "Phew glad you got all #{how_many_responsses} of those things off your chests"
elsif what_will_playback.downcase != 'nothing' || what_will_playback.downcase != 'i have alot to say'
  puts what_will_playback
end
end



puts 'What do you want to say'
answer=gets.chomp
playback(answer)