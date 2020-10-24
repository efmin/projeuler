# Find the average of the following array of numbers using loops.

a = [2, 1, 7, 5]

# using times loop

# using each loop

# Questions to ask?
# - what variables do I need tracked?
# - if I need a loop, what is my counter set to? Is there another base variable
#   I should set before starting the loop?
#
# I need to add each integer to the next until I have the sum of all the integers
# inside of my array.
#
# The first variable is a[0]
# The sum is now a[0]
#
# To start, I can set the sum to a[0] then loop the addition operation a.count - 1 times
# because I have already added the first one upon intialization.
#
# end

def find_avg(arr)
  sum = 0
  count = arr.size
  index = 0

  count.times do
    sum += arr[index]
    index += 1
  end

  avg = sum / count
  puts "the avg is #{avg}."
end

find_avg(a)


# using for i loop
