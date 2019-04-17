require 'faker'
require 'colorize'

want_fact = true
counter = 0

puts "Greetings!! Would you like a fun fact? (y/n) ".blue

while want_fact == true
    if counter > 0
        puts "\nWould you like another fact? (y/n) ".blue
    end
    fun_fact = gets.chomp.downcase
    if fun_fact == "y"
        puts "A quote from the fabulous Michael Scott: ".cyan 
        puts Faker::TvShows::MichaelScott.quote #Michael Scott quote
        puts "\nAnd now for Jerry Seinfeld: ".cyan
        puts Faker::TvShows::Seinfeld.quote #Seinfeld Quote
        puts "\nAnd just one by Family Guy: ".cyan
        puts Faker::TvShows::FamilyGuy.quote 
        puts Faker::Name.unique.name
        counter += 1
    elsif fun_fact == "n"
        puts "Have a great day".light_blue
        want_fact = false
    else
        puts "** Invalid option. Try Again **".red
    end
end