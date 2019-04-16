# include a peice of functionality into any class
module SpecificFunctionality
    def swim
        puts "I can swim"
    end

    def some_other_functionality
        puts "some other functionality to be dropped"
    end
end

class Animal
    # def self.swim
    #   puts "i can swim"
    # end
end

class Fish < Animal
    include SpecificFunctionality
end

class Mammal < Animal
end

class Dog < Mammal
    include SpecificFunctionality
    undef some_other_functionality #dog can swim but can't do this thing so don't include it
end

class Cat < Mammal
    include SpecificFunctionality
    undef swim
end

fish1 = Fish.new
dog1 = Dog.new
cat1 = Cat.new
fish1.swim
dog1.swim
dog1.some_other_functionality
#cat1.swim
cat1.some_other_functionality
