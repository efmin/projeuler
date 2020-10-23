

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
#
# each_with_index method will allow me to access each letter's index # so that I can multiple the letter by its index + 1
#
# join("") will allow me to join the array back into a string
#
# Examples/Exceptions:
# N/A


# def accum(s)
# take my string and call split method to make it into an array of letters
  
# iterate through array and apply block to transform string character into "mumbled" version of itself

# join the array string items together with join method using a "-" as separator
# end

def accum(s)
  result = []
  s.split("").each_with_index do |str, i| 
    result << (str*(i+1)).capitalize
  end
  result.join("-")
end



p accum("abcd")
p accum("abcd") == "A-Bb-Ccc-Dddd"
p accum("LOLLZ")
p accum("LOLLZ") == "L-Oo-Lll-Llll-Zzzzz"
p accum("EffY")
p accum("EffY") == "E-Ff-Fff-Yyyy"
