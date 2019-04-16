#         Use the colorize gem
#         get temperature from user
#         color text as follows:
#             > 30, .red
#             > 20, .yellow
#             > 10, .cyan
#             < 10, .blue
#         convert temperature to Farenheit

require 'colorize'
puts "What temperature is it today? "
temp = gets.chomp.to_i
temp_in_fah = ((temp*9/5) + 32)
if temp >= 30
    puts "It is over #{temp}C that is roughly #{temp_in_fah}F ".red
elsif (20 <= temp) && (temp < 30)
    puts "It is over #{temp}C that is roughly #{temp_in_fah}F ".yellow
elsif (10 <= temp) && (temp < 20)
    puts "It is over #{temp}C that is roughly #{temp_in_fah}F ".cyan
else
    puts "It is over #{temp}C that is roughly #{temp_in_fah}F ".blue
end