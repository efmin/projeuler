# Implement the function unique_in_order which takes as argument a sequence
# and returns a list of items without any elements
# with the same value next to each other and preserving
# the original order of elements.
#
# For example:
#
#
# 10DIME
#
# Input
# a "sequence" that can be a string or an array
#
# Output
# array of the input sequence with adjacent duplicates removed
#
# Definitions/Data Structures
# array or string -> array
#
# Illustrations
# I want a function that iterates through my array input (string will be
# changed into array asap) and compares each item with the next, removing
# the next item if it's a duplicate.
#
# Methods
#
#
# Exceptions/Edge Cases
# Capitalizations? They are considered different.


def unique_in_order(iterable)
  iterable = iterable.chars if iterable.is_a?(String)
  answer = []
  iterable.each do |el|
    answer << el if answer.last != el
  end
  answer
end


p unique_in_order('AAAABBBCCDAABBB')
# ['A', 'B', 'C', 'D', 'A', 'B']
p unique_in_order('ABBCcAD')
# ['A', 'B', 'C', 'c', 'A', 'D']
p unique_in_order([1,2,2,3,3])
# [1,2,3]
