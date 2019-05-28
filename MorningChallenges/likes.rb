# Core:
# We are all familiar with likes. Someone posts a photo or makes a post. When the post is first released:
# * If no one likes it, it says a sad 'no one likes this' underneath it
# * If one person likes it - it says '#{name} likes this'
# * If two people like it - it says '#{name} and #{name} like this'
# * If 3 people like it - it says '#{name}, #{name} and #{name} like this'
# * If 4 or more people like it - it says '#{name}, #{name} and #{num} others like this', where the two names are the most recent in the array, and the num is the remaining amount of people
# Create a method that will take an array of people's names, and will return who has liked the post. Make sure you get the grammar correct!:
# *E.g. facebook_likes([“Nandini"]) should return “Nandini likes this"
# *E.g. facebook_likes([“Nandini", “Alex", "Paul", "Aleisha", "Sarah"]) should return “Nandini, Alex and 3 others like this"

arr0 = []
arr1 = ["Nands"]
arr2 = ["Nands", "Alex"]
arr3 = ["Nands", "Alex", "Dan"]
arr4 = ["Nands", "Alex", "Dan", "Phillip", "Jo", "Matt", "Pete"]

def likes(arr)
    if arr.length == 0
        puts "no one likes this"
    elsif arr.length == 1
        puts "#{arr[0]} likes this"
    elsif arr.length == 2
        puts "#{arr[0]} and #{arr[1]} like this"
    elsif arr.length == 3
        puts "#{arr[0]}, #{arr[1]} and #{arr[2]} like this"
    else
        puts "#{arr[0]}, #{arr[1]} and #{arr.length - 2} others like this"
    end 
end

def case_likes(arr)
    case arr.length
    when 0
        puts "no one likes this"
    when 1
        puts "#{arr[0]} likes this"
    when 2
        puts "#{arr[0]} and #{arr[1]} like this"
    when 3
        puts "#{arr[0]}, #{arr[1]} and #{arr[2]} like this"
    else
        puts "#{arr[0]}, #{arr[1]} and #{arr.length - 2} others like this"
    end 
end

likes(arr0)
likes(arr1)
likes(arr2)
likes(arr3)
likes(arr4)

case_likes(arr0)
case_likes(arr1)
case_likes(arr2)
case_likes(arr3)
case_likes(arr4)