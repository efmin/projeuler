# Simple, given a string of words, return the length of the shortest word(s).

# String will never be empty and you do not need to account for different data types.


# call split(" ") on input string to return array of words
# iterate through array and compare lengths of words, returning the shortest word usting the min method
# count the length of this word, return that integer



def find_short(s)
  word = s.split(" ").min do |x, y|
    x.length <=> y.length
  end
  word.size 
end

p find_short("test the word")
p find_short("I am a walrus") == 1
p find_short("There is no spoon") == 2
p find_short("Let's fly away") == 3
p find_short("giganticwordhere") ==  16

# refactored:

def find_short(s)
  s.split(" ").min { |x, y| x.length <=> y.length }.size
end
