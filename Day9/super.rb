class Vehicle
    attr_accessor :make, :model, :max_fuel

    def initialize(make, model, max_fuel)
        @make = make
        @model = model
        @litres = 0
        @max_fuel = max_fuel
    end

    def refuel(litres)
        @litres = (litres < @max_fuel )? litres : @max_fuel
    end

    def fuel_levels
        puts "I have #{@litres} in my tank"
    end

end

class Car < Vehicle
    def wind_up_windows
        puts "I can wind up windows"
    end
end

class Motorbike < Vehicle
    #need a var to track bikers gear
    attr_accessor :bikers_gear 
    
    def initialize(make, model, max_fuel)
        super
        @bikers_gear = ["helmet"]
    end

    def wheelie
        puts "I can pull a wheelie"
    end

end

vehicle = Vehicle.new("Toyota", "Corolla", 50)
car = Car.new("BMW", "Z-series", 50)
low_rider = Motorbike.new("Harley", "Low Rider", 15)
# low_rider.make = "Harley Davidson"
# low_rider.model = "Low Rider"
puts car.max_fuel
puts low_rider.max_fuel
puts low_rider.model

