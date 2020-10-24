def square_digits(num)
  num.digits.map{|i| i*i}.reverse.join.to_i

end

p square_digits(12345) == 1491625

# I have an integer that i want to split into individual characters in an array
# I need to iterate through and for each int, multiple by itself# I want to collect the new integers into an array, rejoin them into an integer
