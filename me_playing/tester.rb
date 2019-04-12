# num1 = 5
# num2 = 7
# num3 = 5
# num4 = 5
# num5 = 12

# if num1==num2 && num1==num3
#     puts "num1 2 and 3 are the same"
# elsif num1==num3&&num1==num4
#     puts "num 1, 3 and 4 are the same"
# else 
#     puts "Bleh"
# end

start = 0
stars1 = "\r\r\r\r\r\r*  *  *  *  *  *  *  *  *  *  *  *  *\n\n           Hey sexy legs\n\n  *  *  *  *  *  *  *  *  *  *  *  * "
stars2 = " *  *  *  *  *  *  *  *  *  *  *  *  \n\n           Hey sexy legs\n\n *  *  *  *  *  *  *  *  *  *  *  *  "
stars3 = "  *  *  *  *  *  *  *  *  *  *  *  * \n\n           Hey sexy legs\n\n*  *  *  *  *  *  *  *  *  *  *  *  *"

puts "Hey There :) "
while(start <= 20)
   print stars1
   sleep(0.1)
   print "\r\r\r\r\r\r"
   print stars2
   sleep(0.1)
   print "\r\r\r\r\r\r"
   print stars3
   sleep(0.1)
   print "\r\r\r\r\r\r"
   start +=1
end