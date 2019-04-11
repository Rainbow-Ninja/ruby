#syntax for methods
# def name_of_method
#     code
# end

# def tie_shoes
#     puts "grab laces"
#     puts "twist and put under"
#     puts "tie knot"
# end

# tie_shoes
# tie_shoes
# tie_shoes

# puts "how to make rice"
# puts "add water to pan"
# puts "place pan on stove"
# puts "bring water to boil"
# puts "add rice"
# puts "cook rice for 10mins"
# puts "how to cook spaghetti"
# puts "add water to pan"
# puts "place pan on stove"
# puts "bring water to boil"
# puts "add pasta"
# puts "cook pasta for 15mins"

# def cook(item, time)
#     puts "how to make #{item}"
#     puts "add water to pan"
#     puts "place pan on stove"
#     puts "bring water to boil"
#     puts "add #{item}"
#     puts "cook #{item} for #{time}minutes"
# end

# cook("rice", 10)
# cook("pasta", 15)

# def cook(*data)
#     puts "-----------------"
#     p data
#     puts "-----------------"
# end

# cook("rice")
# cook("pasta", 15)
# cook("noodle", 10, "spicy")

# def add(num1, num2)
#    return sum = num1 + num2
# end

# answer = add(1,2)
# puts "The sum of two numbers is #{answer}"


def greet
    name = "Jo"
    return name
end

puts "my name is #{greet}"