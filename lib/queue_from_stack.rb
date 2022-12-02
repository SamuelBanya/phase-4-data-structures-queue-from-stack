require_relative './stack'

# Start by creating the MyQueue class, 
class MyQueue
    def initialize 
        # and set it up to initialize two new, empty instances of the Stack class; 
        # in order for the tests to pass, you will need to name these @s1 and @s2. 
        # You should not initialize an empty array for your MyQueue instance.
        @s1 = Stack.new
        @s2 = Stack.new
    end

    # MyQueue#add(value): adds an element to the end of the Queue
    def add(value)
        @s2.push(@s1.pop) until @s1.empty?
        @s1.push(value)
        @s1.push(@s2.pop) until @s2.empty?
    end

    # MyQueue#remove: removes and returns the first element in the Queue
    def remove 
        @s1.pop
    end

    # MyQueue#peek: returns the first element in the Queue without removing it
    def peek 
        @s1.peek
    end
end