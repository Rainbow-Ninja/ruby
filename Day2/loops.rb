# at the car park entry display carpark if full if all spots taken
# PseudoCode – plain English of what I need to do
#     •	Get total number of parking spots
#     •	Each time car is parked increment a counter
#     •	Increment counter until it matches counter of available spots
#     •	Once counter matches avail spots – exit loop and display parking full

# parking_spots = 10
# park_empty = true
# spots_taken = 0

# while park_empty
#     spots_taken += 1 #counting how many cars have come in
#     if spots_taken >= parking_spots
#         park_empty = false
#     end
#     puts "cars parked #{spots_taken}"
# end

# puts "parking full"


# gentech = ["alex", "phillip", "hayden"]

# for i in gentech
#     puts i
# end

# for i in 2..5
#     put i
# end

# x = 0
# loop do
#     x +=1
#     puts x
#     break if x >= 5
# end

# gentech = ["Jo", "Ewe-lin", "Salman"]

# gentech.each do |any_element_name|
#     if(any_element_name != nil) #excludes nil entries
#         puts "Welcome #{any_element_name}"
#     end 
# end

# gentech.map do |element|

arr = [1, 2, 3, 4, 5, 6, 7, 7, 7, 8]
puts "First line 'count 7' #{arr.count(7)}"
puts "second 'drop 5' #{arr.drop(5)}"
puts "third 'pop 5' #{arr.pop(5)}"
p arr
# puts "four 'sample 3' #{arr.sample(3)}"
# puts "last 'slice 1' #{arr.slice!(1)}"
# slicer = arr.slice!(3)
# p slicer