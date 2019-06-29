# * Create a method that will take a multi-word string as input, and returns that same string, with each word capitalized
# * E.g. If the input was "tHIs IS a MuLTi wORd STiNG", should return "This Is A Multi Word String"

def capitalized(string)
    counter = 0
    string.downcase!
    arr = string.chars
    while counter < arr.length
        if arr[counter] == " "
            counter += 1
            arr[counter].capitalize!
        elsif arr[counter] && counter == 0
            arr[counter].capitalize!
            counter += 1
        else
            counter += 1
        end
    end
    return arr.join
end

print capitalized("hey how ARe yOu")