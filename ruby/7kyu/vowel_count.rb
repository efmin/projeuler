# Return the number (count) of vowels in the given string.

# We will consider a, e, i, o, u as vowels for this Kata (but not y).

# The input string will only consist of lower case letters and/or spaces.

# 10DIME
#
# Input:
# The input to the method is a string of lower case letters and/or spaces.
# 
# Output:
# We want to return an integer that represents the count of vowels in the input string.
#
# Definitions:
# vowels are a, e, i, o, u
#
# Illustrations:
# I want a method a method that takes the string input and matches it with the list of vowel letters, tallying the number of matches and returning the total sum of that tally.
# 
# I could iterate through the input string and each time a match returns true, I can add 1 to a counter. 
#
# Methods:
# #match? method will return boolean if there is a match
#
#
# Edge Cases/Exceptions:
# What if string is empty? Or input is not a string?
#



# def getCount(inputStr)
  # initialize counter
  # take string input and separate into each letter with chars method
  # now we have an array of letters
  # iterate through array and ask if each letter matches with a vowel
  # if true, add one to counter
  # return counter 
# end

def getCount(inputStr)
  count = 0
  vowels = %w(a e i o u)
  letters = inputStr.chars
  vowels.each do |vowel|
    letters.each do |letter| 
      if letter.match?(vowel)
        p "found a match of #{letter} in the string: #{inputStr}"
        count += 1
      end
    end
  end
  count
end

p getCount("string") == 1
p getCount("aeiou") == 5
p getCount("effy min") == 2
p getCount("there is no spoon") == 6


