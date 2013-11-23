require 'pry'

def playback(what_will_playback)
  if what_will_playback.downcase == 'nothing!'
    puts 'Ok, fine!'
elsif what_will_playback.downcase == 'i have a lot to say'
    puts 'I dont have time for that right now'
elsif what_will_playback.downcase != 'nothing' || what_will_playback.downcase != 'i have alot to say'
  puts what_will_playback
  end
end



puts 'What do you want to say'
answer=gets.chomp
playback(answer)

