def reverser 
    yield.reverse.split.reverse.join(' ')
end

def adder(num=1, &block)
    block.call + num
end

def repeater(num=1, &block)
    for i in (1..num) do
        block.call
    end
end