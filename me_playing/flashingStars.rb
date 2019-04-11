counter = 10
start = Time.now.strftime("%S").to_i
final = start + 10
stars1 = "*  *  *  *  *  *  *  *  *  *  *  *  *\n\n\n\n\n  *  *  *  *  *  *  *  *  *  *  *  * "
stars2 = " *  *  *  *  *  *  *  *  *  *  *  *  \n\n\n\n\n *  *  *  *  *  *  *  *  *  *  *  *  "
stars3 = "  *  *  *  *  *  *  *  *  *  *  *  * \n\n\n\n\n*  *  *  *  *  *  *  *  *  *  *  *  *"


while(Time.now.strftime("%S").to_i <= final)
   print stars1
   sleep(0.1)
   system("clear")
   print stars2
   sleep(0.1)
   system("clear")
   print stars3
   sleep(0.1)
   system("clear")
end
puts "\nTime's up!"