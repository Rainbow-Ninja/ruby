# C2: If multiple bank accounts are stored in a hash, blocks can work. Similar to above, you can do nicer formatting & other logic per account this way. Blocks can also be used with things like "if block_given?"- eg. if the user specifies an account to view, show that, otherwise show a default account such as savings.

def view(account, acc)
    puts ""
    puts "**************************************"
    puts ""
    yield(account, acc)
    puts ""
    puts "**************************************"
end

def valid(valid_ans, account, acc)
    if account.has_key?(acc)
        view(account, acc){|account, acc| puts "Your #{acc.to_s} account has $#{'%.2f' % account[acc]} in it"
    }
        return true
    elsif acc.to_s.empty?
        view(account, "Savings"){|account, acc| puts "Your #{acc.to_s} account has $#{'%.2f' % account[acc]} in it"
    }
    else
        puts "Invalid entry. Try again "
        return false
    end
end

#-----------------------------------------------------------------------------------------------

valid_ans = false
account = {"Savings" => 57.25, "Everyday" => 100.20, "Chequing" => 75}

while valid_ans == false
    puts "What account would you like to view -> #{account.keys}"
    acc = gets.chomp.capitalize!
    valid_ans = valid(valid_ans, account, acc)
end