def division(num1, num2)
    return result = num1/num2
end

begin
    puts "Enter a number "
    num1 = gets.chomp.to_i
    puts "Enter another number"
    num2 = gets.chomp.to_i
    result = division(num1, num2)
    puts "division of two numbers is #{result}"
rescue
    #gets executed if there was a problem encountered in the \begin section
    puts "the second number should not be zero"
end

puts "Code continues"