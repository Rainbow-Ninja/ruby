# # # print array = [5, 3, 2, 1, 7, 9, 15]
# # # puts ""
# # # print array.sort
# # # puts ""
# # # print array.sort.reverse
# # # puts ""

# # class Animal
# #     def make_noise(noise)
# #         sound = noise
# #         puts sound #can just \do puts sound but I might want to use sound later
# #         #puts "moo"
# #     end

# #     def walk
# #         puts "I can walk"
# #     end

# #     def eat
# #         puts "chomp chomp"
# #     end	
# # end

# # #creating a new object/instance of a class
# # cow = Animal.new #cow can use every methodin that class
# # cow.make_noise("moo")
# # cow.walk
# # cow.eat
# # dog = Animal.new
# # dog.make_noise("woof")

# class Car 
#     def set_model = model
#         @model = model
#         @make = 1990
#         @type = "sedan"
#         puts model
#     end

#     def get_model
#         puts @model
#     end

#     #to access a variable outside a calss you always need a method
#     def get_make
#         puts @make
#     end
# end

# #create an object
# car1 = Car.new
# car1.set_model = "BMW" #alternate syntax - must change the way we \def the method too
# car2 = Car.new
# car2.set_model = "Toyota"
# car1.get_model
# car2.get_model
# car1.get_make


# # alternative for getters and setters
class Car
    attr_accessor :model #can read or write values
    attr_reader :make #can only get a value
    attr_writer :colour #can only set value

    # initialise is a method that executes every time an object/instance is created
    def initialize(model, make, colour)
        @model = model
        @make = make
        @colour = colour
    end

end

car1 = Car.new("BMW", 2018, "red") #set initial values \when created
car2 = Car.new("toyota", 2011, "rainbow")
car1.model = "BMW"
puts car1.model
puts car1.make
car1.make = 1990 #will now create an error
puts car1.colour #will create  an error cause it's write only
