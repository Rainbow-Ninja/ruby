#puts Time.now.asctime - makes the time all very pretty with day and date etc
#puts Time.local.zone
puts nice_time = Time.now.strftime("%H:%M %p %z")
puts time_zone = Time.now.strftime("%z") # gives me just the timezone in hours
puts Time.now.zone #gives me the name of the code of the timezone
#puts Time/etc/timezone - doesn't work, ask more about this later
#ActiveSupport::TimeZone.all.map(&:name) - should give me all available times??
puts "What is the new offset you would like to have? "
time_given = gets.chomp.to_i
new_time2 = nice_time+time_given.hours