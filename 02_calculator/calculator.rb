def add(x, y)
    x + y
end 

def subtract(x, y)
    x - y
end 

def sum(arr)
    if arr == []
        return 0
    else
        num = 0
        arr.each { |n| num += n }         
        return num
    end
end

def multiply(mult)
    if mult == []
        return 0
    else
        int = 1
        mult.each { |q| int = int * q }
        return int

    end
end

def factorial(n)
    if n = 0
        1
    else
        n * factorial(n - 1)
    end
end
