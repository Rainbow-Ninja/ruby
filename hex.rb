hex_arr = ["49", "27", "6d", "20", "61", "6c", "72", "65", "61", "64", "79", "20", "54", "72", "61", "63", "65"]

def convert_letter(num)
    case num
    when "a"
        return 10
    when "b" 
        return 11
    when "c"
        return 12
    when "d"
        return 13
    when "e"
        return 14
    when "f"
        return 15
    else
        return num
    end
end

def hex_to_dec(hex_arr)
    convert_arr = []
    hex_arr.each{ |hex_num|
        first = convert_letter(hex_num[0])
        second = convert_letter(hex_num[1])
        convert = (first.to_i * 16 ** 1) + (second.to_i * 16 ** 0)
        convert_arr << convert 
    }
    return convert_arr
end

print hex_to_dec(hex_arr)