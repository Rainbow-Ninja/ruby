class RestaurantOrder
    attr_reader :name, :bill #need bill as a reader cause we're trying to read it outside the \class. We need a method to read it which this \does

    def initialize(name)
        @name = name
        @bill = 0
    end

    #display welcome msg
    def welcome_msg
        puts "Welcome to Casa Del Jo. Place your order by entering the item number, or hit q to quit "
    end

    def menu
        #create menu
        @menu = {"1. Nachos" => 15, "2. Tacos" => 12, "3. Chips" => 5}
        @menu.each { |item, price| puts "#{item} -------- #{price}"}
        @menu_list = {1 => 15, 2 => 12, 3 => 5} #to fetch prices from hash
    end

    def get_item_price
        @item_price = @menu_list[@user_choice]
    end

    def get_quantity
        puts "How many would you like? (Hit q to exit) "
        @quantity = gets.chomp.to_i
    end

    def order_bill
        @bill = @bill + @item_price * @quantity
    end


    def place_order(user_choice)
        @user_choice = user_choice
        get_item_price
        get_quantity 
        order_bill
    end
end