class List
    
    attr_accessor :label
    def initialize(label)
        @label = label
        @items = []


    def add_item(title,deadline,description)
        @items << Item.new (title, deadline, description)
    end

    def size
        @items.length
    end

    def valid_index?(index)
        index >= 0 && index < self.size ? true : false
    end

    def print_full_item(index)
        if valid_index(index)
            item = @items[index]
            


    end







end

