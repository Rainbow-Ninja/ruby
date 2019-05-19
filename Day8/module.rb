# #modules are wrappers around the \class used for a couple of reasons, one of the reasons being name spacing
# module CalendarDate
#     class Date
#         # \def self.current_date
#         #     puts "Prints out current date"
#         # \end

#         #alt way of writing

#         class << self
#             def current_date
#                 puts "Prints out current date"
#             end
#         end
#     end
# end

# module MeetingDate
#     class Date
#         class << self
#             def show_date
#                 puts "print out a meeting date"
#             end
#         end
#     end
# end

# #i \dont need an object to call \class methods

# # Date.show_date  #prints out 'print out meeting date' casue it was the latest written one

# #call \module
# # ModuleName::ClassName.ClassMethod
# CalendarDate::Date.current_date
# MeetingDate::Date.show_date

#--------------------------------------------------
#module include a pieced of fuinctionality into any class

module SpecificFunctionality
    def swim
        puts "I can swim"
    end
end

class Animal
end

class Fish < Animal
    include SpecificFunctionality
end

class Mammal < Animal
end

class Dog < Animal
    include SpecificFunctionality
end

class Cat < Animal
end

fish1 = Fish.new
dog1 = Dog.new
cat1 = Cat.new

fish1.swim
dog1.swim
cat1.swim
