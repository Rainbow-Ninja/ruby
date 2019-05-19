# # # pants = true

# # # if at_home
# # #     pants = PJs || pants = nil
# # # end


# # #----------------------------------------------------------------
# # # writing to a file
# # #----------------------------------------------------------------

# # # file = File.open("Jonewfile.txt", "a+") #a+ means add to what already exists. Just opens file
# # # puts "What is your favorite color?"
# # # color = gets.chomp
# # # file.puts("Your fav colour is #{color} ")
# # # file.close #closes file when done
# # # file = File.open("Jonewfile.txt", "a+") {|file| file.puts "I opened the file again"} #curly brackets opens and closes the file in one.
# # # blue = File.open("some_file_name.txt", "w") { |file| file.puts "I wrote this with ruby!\n"}
# # # #w means wipe the file then write to it
# # # # File.open("Jonewfile.txt").readlines.each do |line| #prints out whole file
# # # # puts line
# # # # end
# # # # File.open("some_file_name.txt").readlines.each do |line|
# # # # puts line
# # # # end

# # # #---------------------------------------------------------------------------
# # # # .detect
# # # #---------------------------------------------------------------------------

# # # # arr = [1, 2, 3, 4, 5,6, 7]
# # # # answer = arr.detect{|i| arr[i] i == 8}
# # # # if answer
# # # #     puts "I found it"
# # # # else
# # # #     puts "I didn't find it"
# # # # end
# # # #---------------------------------------------------------------------------
# # # class Hello
# # #     def say_hi
# # #         puts "Hello"
# # #     end
# # # end

# # # class Hi < Hello
# # #     def welcome
# # #         puts "Welcome"
# # #         Hello.new.say_hi
# # #     end
# # # end

# # # blue = Hi.new.welcome

# # # arr = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
# # # puts "pick a letter a - j "
# # # answer = gets.chomp
# # # has = arr.include?(answer)
# # # puts has

# # # drinks = {"1. Cocktail" => ["$22", 8], "beer" => ["$12", 3], "3. Water" => ["$6", 0.15]}
# # # puts drinks["1. Cocktail"]
# # # puts drinks["beer"[0]]
# # #--------------------------------------------------------------------------------------
# # # require 'rubygems'
# # # require 'gosu'

# # # $LOAD_PATH << './lib'
# # # Dir.glob("lib/*.rb").each do |file|
# # #   require File.basename(file, "*.rb")
# # # end

# # # include Gosu

# # # WIDTH = 1440
# # # HEIGHT = 900

# # # class Main < Window

# # #   attr_accessor :controller

# # #   def initialize
# # #     puts 'debugg info'
# # #     super(WIDTH, HEIGHT, false)
# # #     self.caption            = "Practice"
# # #     @menu_controller        = Menu.new(self)
# # #     @game_over_screen       = GameOverScreen.new(self)
# # #     @level_finished_screen  = LevelFinishedScreen.new(self)
# # #     @controller             = @menu_controller
# # #     @levels                 = read_levels

# # #     show_main_menu
# # #   end

# # #   def show_main_menu
# # #     @levels = read_levels
# # #     @controller = @menu_controller
# # #   end

# # #   def show_next_level
# # #     next_level = @levels.pop
# # #     if next_level
# # #       @controller = Level.new(self, next_level)
# # #     else
# # #       show_main_menu
# # #     end
# # #   end

# # #   def show_game_over_screen
# # #     @controller = @game_over_screen
# # #   end

# # #   def show_level_finished_screen
# # #     @controller = @level_finished_screen
# # #   end

# # #   def update
# # #     @controller.update
# # #   end

# # #   def draw
# # #    @controller.draw
# # #   end

# # #   def button_down(id)
# # #     @controller.button_down(id)
# # #   end

# # #   protected

# # #   def read_levels
# # #     Dir.glob("levels/*.txt").map do |path|
# # #       {
# # #         :path  => path,
# # #         :level => File.basename(path, ".txt").to_i
# # #       }
# # #     end.reverse
# # #   end

# # # end

# # # puts "Do you like wrestling?"
# # #   gets.chomp
# # #     puts "This is about to blow your mind"
# # #     sleep(2)
# # # Main.new.show
# # #--------------------------------------------------------------------------
# # # Display a title bar.
# # # print("\t**********************************************")
# # # print("\t***  Greeter - Hello old and new friends!  ***")
# # # print("\t**********************************************")

# # # # Print a bunch of information, in short intervals
# # # names = ['aaron', 'brenda', 'cyrene', 'david', 'eric']

# # # # Print each name 5 times.
# # # for name in names
# # #     # Clear the screen before listing names.
# # #     system('clear')
    
# # #     # Display the title bar.
# # #     puts("\t**********************************************")
# # #     puts("\t***  Greeter - Hello old and new friends!  ***")
# # #     puts("\t**********************************************")

# # # x=0
# # #     print("\n\n")
# # #     while x<5
# # #         puts(names[x])
    
# # #     # Pause for 1 second between batches.
# # #     sleep(1)
# # #     x +=1
# # #     end
# # #   end
# # #-----------------------------------------------------------
# # # name  = "Big Bird"
# # # arr3 = name.chars
# # # p name
# # # p arr3
# # # arr4 = arr3.join("")
# # # # p "#{arr3.join("")}"
# # # #arr3.map {|i| i.to_s}.join
# # # p arr4
# # #-----------------------------------------------------------

# # # a = [1, 1, 2, 3, 4, 5, 6]
# # # b = [1, 2, 2, 7, 8, 9]
# # # def array_diff(a, b)
# # #     a.delete_if {|x| b.include?(x)}
# # #     return a
# # # end
# # # new_a = array_diff(a,b)
# # # p new_a

# # #---------------------------------------------

# # # def maskify(cc)
# # #   arr = cc.chars
# # #   arr.fill("#", 0..-5)
# # #   new_arr = arr.join("")
# # #   return new_arr
# # # end

# # # hey = maskify("3223231231")
# # # print hey
# # #-------------------------------------------------------------
# # # def add_binary(a,b)
# # #   sum = a + b
# # #   return binary = sum.to_s(2)
# # # end

# # # # puts binary = add_binary(3, 4)
# # # #---------------------------------------------------------------
# # # arr1 = [2, 2, 7, 4, 7, 2, 2] #pos3 =>4
# # # arr2 = [5, -3, 4, -5, 1, 0, 1] #pos4=>1
# # # arr3 = [1, 2, 3, 4, 5, 6, 7]
# # # arr4 = [0, 5, -5]
# # # arr5 = [10,-80,10,10,15,35,20]

# # # #puts arr1[0..4].reduce(:+)

# # # def find_even_index(arr)
# # #     count = 1
# # #     arr.unshift(0) #adding on to compare to previous if needed as cannot compare nil
# # #     arr.push(0)
# # #     arr.each {|x| hey = arr[0..(count-1)].reduce(:+) == arr[(count+1)..-1].reduce(:+)
# # #         if hey == true
# # #            return count -1
# # #         elsif hey == false && count == arr.length-1
# # #             return -1
# # #         elsif hey == false
# # #             count +=1
# # #         end
# # #     }
# # # end

# # # spot = find_even_index(arr5)
# # # p "index is #{spot}"
# # # #---------------------------------------------------------------
# # arr1 = ["jo", "matt", "roh"]
# # arr2 = []
# # arr3 = ["jo", "matt", "roh", "alex", "jordan", "casey"]
# # arr4 = ["jo", "matt", "roh", "alex"]

# # def likes(names)
# #     arr = []
# #     if names.empty? 
# #         return "no one likes this"
# #     elsif
# #         names.length == 1
# #         arr.push(names[0])
# #         arr.push(" likes this")
# #         name = arr.join
# #         return name        
# #     elsif names.length <=3
# #         for item in names[0...-2]
# #             arr.push(item, ", ")
# #         end
# #         arr.push(names[-2])
# #         arr.push(" and #{names[-1]} like this")
# #         name = arr.join
# #         return name
# #     else 
# #         for item in names[0...1]
# #             arr.push(item, ", ")
# #         end
# #         arr.push names[1]
# #         arr.push(" and #{names.length-2} others like this")
# #         name = arr.join
# #         return name
# #     end
# # end

# # print name = likes(arr1)
# # puts ""
# # print name = likes(arr2)
# # puts ""
# # print name = likes(arr3)
# # puts ""
# # print name = likes(arr4)
# #-------------------------------------------------------------
# # def song_decoder(song)
# #    string = song.gsub("WUB", " ")
# #    return string.split.join(" ")
# # end

# # original = song_decoder("WUBWEWUBAREWUBWUBTHEWUBCHAMPIONSWUBMYWUBFRIENDWUB")
# # print original
# #-----------------------------------------------------
# # def power_of_two?(x)
# #     factor = 0
# #     result = 0
# #     while result < x
# #         result = 2**factor
# #         if result == x
# #             return true
# #         end
# #         factor+=1
# #     end
# #     return false
# # end
# # p y = power_of_two?(8)
# #-------------------------------------------------------
# require 'gosu'

# class Tutorial < Gosu::Window
#   def initialize
#     super 640, 480
#     self.caption = "Tutorial Game"
#   end
  
#   def update
#     # ...
#   end
  
#   def draw
#     # ...
#   end
# end

# Tutorial.new.show

# @shopping_list = [[123],[456]]
# File.open("shopping_list.txt", "w"){ |f| f.write(@shopping_list)}

# arr = [1, 2, 6, 2, 7, 34, 2, 12]
# top = arr.max
# puts top
# puts "hi"
#-----------------------------------------------------------

# str = "helicopter"

# def find_c(word)
#     count = 0
#     arr = word.chars
#     arr.each {|letter| 
#     if letter.include?("c")
#         return count
#     end; count += 1}
    
# end

# position = find_c("helicopter")
# puts position
#----------------------------------------------------------
# def aquarius(birth_month, birthday)
#     puts birth_month == "February" && birthday <= 19? "congratulations you are an aquarius": "you're not an aquarius"
# end

# aquarius("February", 12)
# aquarius("February", 20)
# aquarius("February", 19)
#----------------------------------------------------------
# str = "howdy doody"
# def reverse(word)
#     reversed_arr = []
#     arr = word.chars
#     while arr.length > 0
#         reversed_arr.push(arr[-1])
#         arr.pop
#     end
#     return reversed_arr.join()
# end
# puts back = reverse("hello")
# puts back = reverse(str)
#----------------------------------------------------------
# h = { "jo" => 12, "a" => 100, "b" => 200, "c" => 300, "aa" => 99, "aardvark" => 203 }
# h.delete_if {|key, value| key <= "b" }   #=> {"a"=>100}
# puts h

# a =  {1=> [1,"one"], 2 => [2,"two", [1, 2, 3]], 3 => "three"}
# print a.flatten    # => [1, "one", 2, [2, "two"], 3, "three"]
# puts ""
# print a.flatten(2)
# puts ""
# print a.flatten(1)
# puts ""
# print a.flatten(3) 
# puts ""
#----------------------------------------------------------
# def greet
#     yield("Alex")
#     puts "the name inside the method, but outside the block is #{name}"
# end
# greet {|name| puts "value of the name in the block is #{name}"}
#----------------------------------------------------------
# 
# "Cool".+("io")
# name = "heliopter"
# count = 0
# while name[count] != "c"
#     count += 1
#     if count >= name.length
#         puts "there is no c here"
#         break
#     end
# end
# if count < name.length
#     puts "'c' is at position #{count}"
# end
#----------------------------------------------------
# rapper = "scott"
# p hey = rapper[0..2]
# p rapper[-1]
#----------------------------------------------------
# word = "lace"
# word.sub! "l", "m"
# p word
# #----------------------------------------------------
# Define a method called funify() that takes an array as an argument and adds the word "fun" to the end of the array.

# def funify(array)
#     return(array.push("fun"))
# end

# arr = ["hey", "im", "hey"]
# p blah = funify(arr)
#----------------------------------------------------
# Define a method called more_fun() that replaces the first element of an array with the word "FUN FUN".
# def more_fun(array)
#     array[0] = "FUN FUN"
#     return array
# end
# arr = ["hey", "im", "hey"]
# p yo = more_fun(arr)
# name = :crank
# puts name.inspect()
# #-------------------------------------------------------
# # What does the following code print?

# array = ["snake", "rat", "cat", "dog"]
# array.each do |animal|
#   puts animal if animal[0] == "s"
# end

# # prints snake
# #-------------------------------------------------------

# result = []
# first_names = ["Hamburglar", "Grimace", "Ronald"]
# last_name = "McDonald"


# first_names.map!{|name| name += " " + last_name}
# p first_names

# personality_types = ["bad", "good", "great"]
# personality_types.map!{|type| type + " person"}
# p personality_types

# arr = ["waters", "too", "polluted", "with", "germs"]
# p arr.join(" ")
# lebron = {:sport => "basketball", :birthplace => "Akron"}
# lebron[:highschool] = "St. Marys"
# p lebron.values
# my_array = Array.new()
# my_array.push("nice")
# my_array.push("hair")
# puts my_array.inspect
# puts my_array
# p my_array
# p my_array.inspect
#----------------------------------------
# class Calculator

#     def self.add(num1, num2)
#         return num1+num2
#     end

# end

# p Calculator.add(7, 7)

# class Celcius
#     def initialize(temp)
#         @temp = temp
#     end

#     def to_fah
#         @temp * 1.8 + 32
#     end
# end

# result = []
# weird_array = ["blah", :meow, 42, 90, :building]
# weird_array.each{ |elem| elem.instance_of?(Symbol)? result.push(elem) : next}
# p result
# Iterate over every element of weird_array and add the element to the result array if the element is a Symbol (i.e. an instance of the Symbol class).

# sports = ["basketball", "baseball", "football"]
# sports.each{ |sport| puts "#{sports.index(sport)}. " + sport}

soap_opera = ["all", "my", "children"]
# Return true if any of the elements in the soap_opera array start with the letter "a" and false otherwise.
arr = []
soap_opera.each { |word| arr.push(word[0] == "a"?  true : false)}
p arr
if arr.include?(true)
    result = true
else 
    result = false
end
p result