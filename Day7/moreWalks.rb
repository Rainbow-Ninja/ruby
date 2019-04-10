# 1. Create a walk method. This should say "I have been for X walks.". Every time you call walk, the number should increase by one E.g:
# doggo = Dog.new(...)
# doggo.walk # -> I have been for 1 walks today
# doggo.walk # -> I have been for 2 walks today

want_to_walk = true

class Dog

    @@counter = 0

    def walk
        self.class.add_walk
       # return counter
    end

    class << self
        def add_walk
            @@counter += 1
        end

        def counter
            @@counter
        end
    end
end

doggo = Dog.new

while want_to_walk == true
    puts "Want to go for a walk? (y/n) "
    walkies = gets.chomp.downcase
    if walkies == "y"
        (doggo.walk)
    else
        want_to_walk = false
    end
end
puts "You went on #{Dog.counter} walk(s)"
