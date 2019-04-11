exact_time = Time.now #gets the time right now plus date
time = Time.now.hour #gets just the hour of the time right now
nice_time = Time.now.strftime("%I:%M %p") #prints time as HH:MM then adds AM or PM
if time<12
    puts "Good Morning it is #{nice_time}"
elsif (time>=12&&time<17)
    puts "Good Afternoon it is #{nice_time}"
elsif (time>=17&&time<19)
    puts "Good Evening it is #{nice_time}"
else 
    puts "Good night it is #{nice_time}"
end