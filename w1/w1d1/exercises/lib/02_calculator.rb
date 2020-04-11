def add(number1, number2)
  number1 + number2
end

def subtract(number1, number2)
  number1 - number2
end

def sum(numbers)
  total = 0
  numbers.each do |number|
    total = number + total
    #total += number
  end
  total
end

def multiply(numbers)
  total = 1
  numbers.each do |number|
    total = number * total
  end
  total
end

def power(base, exponent)
  # base ** exponent
  accumulator = 1
  # base * accumulator (exponent number of times)

  exponent.times do |exponent|
    accumulator = base * accumulator
  end
  accumulator
end

def factorial(number)
  if number == 0
    1
  else
    number * factorial(number - 1)
  end
end
