#  # If we list all the natural numbers below 10 that are multiples of 3 or 5,
# # we get 3, 5, 6 and 9. The sum of these multiples is 23.
# #
# # Find the sum of all the multiples of 3 or 5 below 1000.
#
# 10DIME
#
# Input:
# two integers that will determine multiples: x and y
# one integer that sets the problem limit: n
#
# Output:
# the sum of all mutiples of the two integers x and y
#
# Definitions:
# A multiple is a product of any quantity and integer
#
# Data Strctures
# Integers in an array
#
# Illustrate The Case
# I need a method that takes three arguments (x, y, n) and
# determines all the natural numbers between 0 and n
# that are multiples of x and y.
# Then I return the sum of all multiples.
#
# Methods
# modulus to find multiples of x and y
# sum
#
# Edge Cases/Exceptions
# - What about duplicate multiples? No.
# - Do I include the x or y themselves? Yes.
#
# multiples of 3 under 10:
# 3,6,9


def multiples x,y,n
  arr = []
  for i in 1..n-1
    if i%x == 0
      arr << i
    elsif i%y == 0
      arr << i
    end
  end
  arr.uniq.sum
end

multiples(3,5,10)
puts multiples(3,5,1000)
