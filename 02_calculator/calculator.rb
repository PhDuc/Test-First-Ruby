def add (num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(array)
  sum = 0
  array.each do |i|
    sum += i
  end
  return sum
end

def multiply(array)
  result = 1
  array.each do |i|
    result *= i
  end
  return result
end

def power(base,power)
  result = 1
  while (power > 0) do
    result *= base
    power -= 1
  end
  return result
end

def factorial(num)
  result = 1
  #First way
  "#{num}".to_i.times do |i|
    result *= (i+1)
  end
  result

  #Second way
  # list = (1.."#{num}".to_i).to_a
  # list.each do |i|
  # result *= i
  # end
  # result

end
