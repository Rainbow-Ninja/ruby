require 'digest/sha1'
no_zeros = ""
message = "hey how are you"
count = 0
while no_zeros[0..3] != "0000"
    no_zeros = Digest::SHA1.hexdigest message + count.to_s
    puts no_zeros
    count += 1
end
puts count