# Advanced:
# * We have done a Fibonacci challenge in the past, time to met his sister, Tribonacci
# * Tribonacci will take the last 3 inputs (as oppose to 2), and add them together to get another value
# * Create a method that will be given an array and an integer as input. The array will hold the first 3 numbers of the tribonacci sequence, whilst the integer will be the nth number of the sequence we want to access
# E.g. If we pass ([1,1,2], 5) to the method, we should receive the number 7 back (as the sequence would add 1 + 1 + 2 to get 4, so would be [1,1,2,4], so then would add 1 + 2 + 4, and get 7, so would be [1,1,2,4,7], meaning our result would be 7
# * Super hard challenge, but use the skills you have (pseudocode) and team work and you’ll be fine!
tribonacci = [1, 1, 2]

def get_Trib(tribonacci, num)
    while tribonacci.length < num
        tribonacci.push(tribonacci[-1] + tribonacci [-2] + tribonacci[-3])
    end
    return tribonacci[num - 1]
end

puts "Give me the number of the tribonacci sequence you would like: "
num = gets.chomp.to_i

answer = get_Trib(tribonacci, num)
puts "The number in that position of the tribonacci sequence is #{answer}\n\n"
