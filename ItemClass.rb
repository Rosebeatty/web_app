class Item
    
    attr_reader :description
    
    def initialize(description)
        @description = description
        @completed = false
    end
    
    def complete_task
        @completed = true
    end
    
    def description
        @description
    end
end
