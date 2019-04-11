# def total(num1, num2)
#     sum = num1 + num2
#     return sum
# end

# puts "The sum of your two numbers is #{total(4, 4)}"

# #-------------------------------------------------------

# def total(num1, num2)
#     sum = num1 + num2
#     yield(sum)
# end

# total(4,4) do |addition_total|
#     puts "Addition total is #{addition_total}"
# end
 
#-------------------------------------------------------

# def total(num1, num2)
#     sum = num1 + num2
#     subtraction = num1 - num2
#     yield(sum, subtraction)
# end

# total(4,4) do |addition_total, subtraction_total|
#     puts "Addition total is #{addition_total}" # -> 8
#     puts "Subtraction total is #{subtraction_total}" # -> 0
#   end

  #------------------------------------------------------

# numbers = [1,2,3,4,5]
# def my_map(numbers)
#     counter = 0
#     results = []
#     while counter < numbers.length
#         results[counter]=yield(numbers[counter]) #do iterations and save in results array
#         counter += 1
#     end
#     return results #return the array
# end

# result = my_map(numbers) {|num| num + 5}
# puts "map result is #{result}"
#----------------------------------------------------------------

numbers = [1,2,3,4,5]
def my_map(numbers)
    counter = 0
    while counter < numbers.length
        numbers[counter]= yield(numbers[counter]) #do iterations and save in results array
        counter += 1
    end
    return numbers #return the array
end

result = my_map(numbers) {|num| num + 5}
puts "map result is #{result}"
puts "my numbers array is now #{numbers}"