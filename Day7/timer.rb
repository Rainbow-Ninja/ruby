# 5. Timer Challenge:  make a 10s timer display and notify when time is up.
counter = 10
start = Time.now.strftime("%S").to_i
final = start + 10

while(Time.now.strftime("%S").to_i <= final)
   (0..10).each {|n| 
    system("clear")
    print(n + counter)
    sleep(1)
    counter -= 2
    } 
    #clears screen so numbers scroll in one spot
end
puts "\nTime's up!"

#Time.now.strftime("%L") #milliseconds to 3 digits