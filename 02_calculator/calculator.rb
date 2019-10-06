#write your code here

def add(val_1, val_2)
    val_1 + val_2
end

def subtract(val_1, val_2)
    val_1 - val_2
end

def sum(array)
    if array == []
        return 0
    end
    array.reduce(:+)
end

def multiply(array)
    array.reduce(:*)
end

def power(val_1, val_2)
    values = []
    for a in 1..val_2 do
        values << val_1
    end
    values.reduce(:*)
end

def factorial(number)
    values = []
    i = 1
    loop do 
        values << i
    break if i >= number
        i = i + 1
    end
    values.reduce(:*)
end