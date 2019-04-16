require_relative 'file.rb'

class Date
    include CalendarDate
    def self.meeting_date
        puts "print meeting date"
    end
end

Date.meeting_date
Date.new.current_date