require 'pry'

def playback(what_will_playback)
  puts what_will_playback
end


puts 'What do you want to say'
answer=gets.chomp
playback(answer)

