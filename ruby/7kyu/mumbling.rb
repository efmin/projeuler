# This time no story, no theory. The examples below show you how to write function accum:

# Examples:

# accum("abcd") -> "A-Bb-Ccc-Dddd"
# accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
# accum("cwAt") -> "C-Ww-Aaa-Tttt"

# The parameter of accum is a string which includes only letters from a..z and A..Z.

# 10DIME
#
# Input: 
# The input is a string of random letters.
#
# Output:
# The output is a string that takes each letter and duplicates it depending on where it is in the index of letters (first letter is printed once, second is printed twice, third is three times, etc). The first letter of each newly duplicated letter-word is capitalized and each letter-word is separated with a dash. 

#
# Definitions:
# N/A
#
# Illustration:
# I need a method that takes the input string and for each letter, multiply itself by its index + 1 then capitalize. If I do this by calling .split("") before the block actions, I am currently working with an array and not a string. 
#
# Methods:
# Examples/Exceptions:
#
#
