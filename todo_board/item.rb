require "byebug"

class Item

def self.valid_date?(date)
    nums = date.split("-")
    if nums[0].length == 4 && nums[1].length == 2 && nums[2] ==2
        if nums[1].to_i <= 12 && nums[2] <= 31 
            return true
        end
    end
    false
end


attr_accessor :title, :deadline, :description
def initialize(title,deadline,description)
    @title = title
    if valid_date(deadline)
        @deadline = deadline
    else
        raise ArguementError.new "Not a imputable date"
    end

    @description = description
end

