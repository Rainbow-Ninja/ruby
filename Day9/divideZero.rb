# Exception handling:
# * Introduce an exception handling to print out "cannot divide a number by zero, try again and prompt you to enter two new numbers, if those number could be divided, you print the result and exit the loop"
notZero = true

puts "\nWe are going to divide one number by another"
while notZero == true
    print "Give me number 1: "
    num1 = gets.chomp.to_f
    print "\nGive me number 2: "
    num2 = gets.chomp.to_f
    if (num1 != 0) && (num2 != 0)
        answer = num1/num2
        notZero = false
    else
        puts "** One of those numbers is zero. Try again **"
    end
end
puts "#{num1.round(0)} divided by #{num2.round(0)} is equal to #{answer.round(2)}(to 2dp)"