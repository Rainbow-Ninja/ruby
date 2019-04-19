#----------------------------------------------------------------
# writing to a file
#----------------------------------------------------------------

# file = File.open("Jonewfile.txt", "a+") #a+ means add to what already exists. Just opens file
# puts "What is your favorite color?"
# color = gets.chomp
# file.puts("Your fav colour is #{color} ")
# file.close #closes file when done
# file = File.open("Jonewfile.txt", "a+") {|file| file.puts "I opened the file again"} #curly brackets opens and closes the file in one.
# blue = File.open("some_file_name.txt", "w") { |file| file.puts "I wrote this with ruby!\n"}
# #w means wipe the file then write to it
# # File.open("Jonewfile.txt").readlines.each do |line| #prints out whole file
# # puts line
# # end
# # File.open("some_file_name.txt").readlines.each do |line|
# # puts line
# # end

# #---------------------------------------------------------------------------
# # .detect
# #---------------------------------------------------------------------------

# # arr = [1, 2, 3, 4, 5,6, 7]
# # answer = arr.detect{|i| arr[i] i == 8}
# # if answer
# #     puts "I found it"
# # else
# #     puts "I didn't find it"
# # end
# #---------------------------------------------------------------------------
# class Hello
#     def say_hi
#         puts "Hello"
#     end
# end

# class Hi < Hello
#     def welcome
#         puts "Welcome"
#         Hello.new.say_hi
#     end
# end

# blue = Hi.new.welcome

# arr = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
# puts "pick a letter a - j "
# answer = gets.chomp
# has = arr.include?(answer)
# puts has

# drinks = {"1. Cocktail" => ["$22", 8], "beer" => ["$12", 3], "3. Water" => ["$6", 0.15]}
# puts drinks["1. Cocktail"]
# puts drinks["beer"[0]]

require 'rubygems'
require 'gosu'

$LOAD_PATH << './lib'
Dir.glob("lib/*.rb").each do |file|
  require File.basename(file, "*.rb")
end

include Gosu

WIDTH = 1440
HEIGHT = 900

class Main < Window

  attr_accessor :controller

  def initialize
    puts 'debugg info'
    super(WIDTH, HEIGHT, false)
    self.caption            = "Practice"
    @menu_controller        = Menu.new(self)
    @game_over_screen       = GameOverScreen.new(self)
    @level_finished_screen  = LevelFinishedScreen.new(self)
    @controller             = @menu_controller
    @levels                 = read_levels

    show_main_menu
  end

  def show_main_menu
    @levels = read_levels
    @controller = @menu_controller
  end

  def show_next_level
    next_level = @levels.pop
    if next_level
      @controller = Level.new(self, next_level)
    else
      show_main_menu
    end
  end

  def show_game_over_screen
    @controller = @game_over_screen
  end

  def show_level_finished_screen
    @controller = @level_finished_screen
  end

  def update
    @controller.update
  end

  def draw
   @controller.draw
  end

  def button_down(id)
    @controller.button_down(id)
  end

  protected

  def read_levels
    Dir.glob("levels/*.txt").map do |path|
      {
        :path  => path,
        :level => File.basename(path, ".txt").to_i
      }
    end.reverse
  end

end

puts "Do you like wrestling?"
  gets.chomp
    puts "This is about to blow your mind"
    sleep(2)
Main.new.show