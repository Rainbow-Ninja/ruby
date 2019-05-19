class Human #name using PascalCaseLikeThis
    def initialize
        @name = "Bob" #instance variable, only avail in this \class
    end
    
    def name #this allows me to use name outside the \class
        @name
    end
end

#create an object
person1 = Human.new
p person1
puts person1.name
#----------------------------------------------------------------------

class Human #name using PascalCaseLikeThis
    def initialize(name)
        @name = name #instance variable, only avail in this \class
    end

    def name #this allows me to use name outside the \class
        @name
    end
    
    def walk
        puts "I can walk"
    end
end

#create an object
person1 = Human.new("Jo")
person2 = Human.new("Bob")
puts person1.name
puts person2.name
person1.walk
#----------------------------------------------------------------