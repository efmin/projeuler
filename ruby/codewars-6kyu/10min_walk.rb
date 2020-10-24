# You live in the city of Cartesia where all roads are laid out in a perfect grid.
# You arrived ten minutes too early to an appointment,
# so you decided to take the opportunity to go for a short walk.
# The city provides its citizens with a Walk Generating App on their phones --
# everytime you press the button it sends you an array of one-letter strings
# representing directions to walk (eg. ['n', 's', 'w', 'e']).
# You always walk only a single block in a direction and you know it takes you
# one minute to traverse one city block, so create a function that will
# return true if the walk the app gives you will take you exactly ten minutes
# (you don't want to be early or late!) and will, of course, return you to your
# starting point. Return false otherwise.
#
# Note: you will always receive a valid array containing a random assortment of
# direction letters ('n', 's', 'e', or 'w' only). It will never give you an
# empty array (that's not a walk, that's standing still!).
#

# 10DIME
#
# Input:
# an array of letters consisting of n, e, w or s only
#
# Output
# boolean
#
# Definitions/Data Structures
# a true boolean require that the letters fulfill the followiung factors:
# - must be 10 letters
# - each direction must have its opposite direction paired
#
# Illustrations
# I want a function that checks if there are ten letters.
# If more or less, return false. Then I want to sort and
# count each letter. Once each letter is tallied, I want to compare N/S and E/W to
# check for equivalence. If there are unequal tallies, return false. If direction
# tallies are symmetrical, return true.
#
# Methods
# - sort, count, check equivalence?
#
# Edge Cases/Exceptions
#

def is_valid_walk(walk)
  if walk.count == 10 &&
  walk.count('w') == walk.count('e') &&
  walk.count('s') == walk.count('n')
    true
  else
    false
  end
end


p is_valid_walk(['n','s','n','s','n','s','n','s','n','s'])
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e'])
p is_valid_walk(['w'])
p is_valid_walk(['n','n','n','s','n','s','n','s','n','s'])
