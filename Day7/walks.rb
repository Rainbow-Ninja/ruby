# 1. Create a walk method. This should say "I have been for X walks.". Every time you call walk, the number should increase by one E.g:
# doggo = Dog.new(...)
# doggo.walk # -> I have been for 1 walks today
# doggo.walk # -> I have been for 2 walks today



class Dog

    @@counter = 0

    def walk
        self.class.add_walk
        puts "I have been for #{@@counter} walk(s)"
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
doggo.walk
#doggo.walk.walk

