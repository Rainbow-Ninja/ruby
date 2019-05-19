# # Question 10 10 pts
# # Without using inbuilt Ruby array methods, write your method (find_position) that returns the first index of a digit in an array, and nil if the digit is not in the array. Your method will accept two inputs, an array, and the digit to be found.

# # # e.g.
# # # input_array = [12, 4, 10, 6, 7, 9, 11, 23, 33]
# # # find_position(input_array, 9)
# # # Expected result: 5

# def find_position(array, num_to_find)
#     position = 0
#    while array[position] != nil
#         if array[position] == num_to_find
#             return position
#         else
#             position += 1
#         end
#     end
#     return nil
# end

# input_array = [12, 4, 10, 6, 7, 9, 11, 23, 33]
# puts find_position(input_array, 3)
#-------------------------------------------------------------
# You have access to two variables: raining (boolean) and temperature (integer). If it's raining and the temperature is less than 15 degrees, print to the screen "It's wet and cold", if it is less than 15 but not raining print "It's not raining but cold". If it’s greater than 15 but not raining print "It's warm but raining", and otherwise tell them "It's warm and not raining".

# raining = true
# temperature = 17

# if raining == true && temperature < 15
#     puts "It's wet and cold"
# elsif raining == false && temperature < 15
#     puts "It's not raining but cold"
# elsif raining == false && temperature > 15
#     puts "It's warm but not raining"
# else
#     puts "It's warm and raining"
# end
 #-----------------------------------------------------

#  string = "hello"

#  def reverse_my_string(string)
#     array = string.chars
#     reversed_string = ""
#     while array.length > 0
#         reversed_string << array[-1] 
#         array.pop
#     end
#     return reversed_string
#  end

#  p reverse_my_string(string)
#----------------------------------------------------------
# require 'colorize'

# puts "hello ".red + "I ".yellow + "am ".green + "all ".cyan + "coloured ".blue
bin_score = "1110100"
    if bin_score[0] == "1"
        puts "true"
    else
        puts "false"
    end



