# # The goal of this exercise is to convert a string to a new string
# where each character in the new string is "(" if that character appears
# only once in the original string, or ")" if that character appears more than
# once in the original string.
# Ignore capitalization when determining if a character is a duplicate.
#
# Examples
#

# 10DIME
#
# Input:
# string of letters
#
# Output
# string of encoded brackets
#
# Definitions
# - ignore capitalization when determining duplicates meaning that capilization
# does not make the letter unique
#
# Data Structures
# string
# array
#
# Illustration
# I need to determine if each letter is unique in the input.
# If unique, add ( to result array
# if not, add ) to result array
# Or I could gsub
# Return string as a result
# If I use g-sub, i could get away with no intiializaing a new array?
#
# Methods
# include
# gsub
#
# Edge Cases
# - spaces: should count as characters?
# what about weird characters?



def duplicate_encode(word)
  word.chars.each do |letter|
    word.detect?{ |l| word.count(l) < 2 } ? word.gsub!(/[letter]/,'(')
    : word.gsub!(/[letter]/, ')')
    end
  word
end



p duplicate_encode "din"
 # "((("
p duplicate_encode "recede"
# "()()()"
p duplicate_encode "Success"
# ")())())"
p duplicate_encode "(( @"
# "))(("
