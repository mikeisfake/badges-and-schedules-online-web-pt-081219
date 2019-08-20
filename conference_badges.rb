def badge_maker(name)
  "Hello, my name is #{name}."
end 

def batch_badge_creator(attendees)
  attendees.map{|names| badge_maker(names)}
end 

def assign_rooms(attendees)
  attendees.each_with_index.map{|speaker, room| "Hello, #{speaker}! You'll be assigned to room #{room + 1}!"}
end 

def printer(attendees)
  attendees.each {|name| puts badge_maker(name)}
  assign_rooms(attendees).each{|message| puts message}
end