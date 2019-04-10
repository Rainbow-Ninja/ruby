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

class Employee 

    attr_reader :name
    attr_writer :salary

    @count = 0

    # initialise is a method that executes every time an object/instance is created
    def initialize(name, salary)
        @name = name
        @salary = salary
        self.class.add_employee
    end

    def view
        puts "Name = #{@name.capitalize} ; Salary = #{@salary}"
    end

    class << self
        def add_employee
            @count += 1
        end

        def count
            @count
        end
    end
end

employee1 = Employee.new("Sarah", "$20,000")
employee2 = Employee.new("Ben", "$19,000")
employee3 = Employee.new("John", "$19,500")
employee1.view
employee2.view
employee3.view
puts "\nYou have #{Employee.count} employees"