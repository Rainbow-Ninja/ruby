class Allergies
    def initialize(score)
        @score = score
        @allergy_array = @score.to_s(2).rjust(8, "0") #convert to binary and pad to 8 bits - not actually an array
        @score_hash = {"cats" => @allergy_array[0], "pollen" => @allergy_array[1], "chocolate" => @allergy_array[2], "tomatoes" => @allergy_array[3], "strawberry" => @allergy_array[4], "shellfish" => @allergy_array[5], "peanuts" => @allergy_array[6], "eggs" => @allergy_array[7]} #put array in hash
    end

    def allergic_to?(allergy_item) #"cat", "strawberry" etc
        puts @score_hash[allergy_item] == "1"? "You are allergic to #{allergy_item}" : "You aren't allergic to #{allergy_item}"
    end

    def list
        @score_hash.each{|allergy, have_it| 
            if @score_hash[allergy] == "1" 
                puts "You are allergic to #{allergy}"
            end
        }
    end
   
end

jo = Allergies.new(128)
jo.allergic_to?("shellfish")
jo.list