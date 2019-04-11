# name = ["Alex", "Saad", "Sally"]
# name.each do |name|
#     puts "Welcome #{name}"
# end

# name.each { |name| puts "Welcome #{name}"}

#------------------------------------

#method
# name = "Alex"
# def greet(name)
#     puts "Hello #{name}"
# end
# greet(name)

# #block
# def greet
#     puts "before yield"
#     yield
#     puts "after yield"
# end

# greet{puts "hello world"}
# #when pass argument use (), when passing block use {}

# #--------------------------------------

# #yield can take parameters/arguments
# def add(num1, num2)
#     sum = num1 + num2
#     diff = num1 - num2
#     yield(sum, diff)
# end
# add(10,20) {|sum, diff| puts "sum of two numbers is #{sum}"
# puts "diff of two numbers is #{diff}"}
# # #--------------------------------------------------
# def greet
#     name = "nands"
#     age = 10
#     yield(name, age)
# end
# greet{|age, name| puts "Hello #{name}, you are #{age}yo"}

# def greet
#     yield("Alex")
#     puts "the name inside the method, but outside the block is #{name}"
# end
# greet {|name| puts "value of the name in the block is #{name}"}

#---------------------------------------------------
# name = ["Alex", "Saad", "Sally"]
# names.each { |name| puts "Welcome #{name}"}

# def my_each(name)
#     counter = 0
#     while counter < name.length
#         yield(name[counter])
#         counter += 1
#     end
# end
# my_each(name) {|name| puts "Welcome #{name}"}

# names = ["Alex", "Saad", "Sally"]

# names = ["Alex", "Saad", nil, "Sally"]
# def my_each(names)
#     for item in names
#         yield item
#     end
# end

# my_each(names){|name| puts "Welcome #{name}"}
#-------------------------------------------------
numbers = [10, 2, 3, 5, 7, 18, 12]
print numbers.find {|num| num>5} #returns first num>5
print numbers.find_all{|num| num>5} #returns all numbers >5
print numbers.find_all{|num| num%2==0} #returns all even nums
print numbers.delete_if{|num| num%2==0} #mutating. Also deletes all even numbers

#  --------------------------------------------------------

# def try
#     if block_given?
#       yield
#     else
#       "no block"
#     end
#   end
#   try                  #=> "no block"
#   try { "hello" }      #=> "hello"
#   try do "hello" end   #=> "hello"