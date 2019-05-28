input_array = [12, 4, 10, 6, 7, 9, 11, 23, 33]

def find_position(arr, num)
    counter = 0
    while counter<arr.length
        if arr[counter]==num
            puts counter
            return
        else
            counter += 1
        end
    end
end


find_position(input_array, 9)