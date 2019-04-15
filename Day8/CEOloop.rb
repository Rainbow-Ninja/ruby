# Challenge 1:
# The CEO of the company wants to get an overview of all the employees in her company their respective salaries and total number of employees currently employed. Write a ruby program to display the data that CEO needs
#
# Hint: Create a Class with methods to keep track of the employee count and display employee details.
#
# Try : Implement this just using methods and then implement the same as classes and objects . List out which one worked best and why.

# Sample Test Case
#
# Name = Sarah ; Salary = 20,000
# Name = Ben ; Salary = 19,000
# Name = John ; Salary = 19,500

more_employees = true

class Employee 

    attr_accessor :name, :salary
   # attr_writer :salary

    @count = 0
    @employee_arr = []

    # initialise is a method that executes every time an object/instance is created
    def initialize(name, salary)
        @name = name
        @salary = salary
        self.class.add_employee
        self.class.employee_arr.push(self)
    end

    def view
        puts "Name = #{@name.capitalize} ; Salary = #{@salary}"
    end
    
    
    class << self
        def add_employee
            @count += 1
        end

        def employee_arr
            @employee_arr.each {|person| puts "The salary of #{person.name} is $#{person.salary}"}
        end

        def count
            @count
        end
    end
end

while more_employees == true
    puts "\nWould you like to enter an employee? (y/n)"
    answer = gets.chomp.downcase
    if answer == "y"
        print "Enter employee name: "
        employee_name = gets.chomp.capitalize
        print "Enter employee salary: "
        employee_salary = gets.chomp
        employee = Employee.new(employee_name, employee_salary)
    elsif answer == "n"
        puts ""
        Employee.employee_arr
        puts "\nTotal number of employees is #{Employee.count}"
        puts ""
        more_employees = false
    else
        puts "\n** Invalid choice. Try again **"
    end
end



# for item in array
# puts Employee.employee_arr


# employee1 = Employee.new("Sarah", "$20,000")
# employee2 = Employee.new("Ben", "$19,000")
# employee3 = Employee.new("John", "$19,500")
# employee1.view
# employee2.view
# employee3.view
# puts "\nYou have #{Employee.count} employees"