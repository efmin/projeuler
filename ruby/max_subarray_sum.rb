The maximum sum subarray problem consists in finding the maximum sum of a
contiguous subsequence in an array or list of integers:

maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4]
-- should be 6: [4, -1, 2, 1]

Easy case is when the list is made up of only positive numbers and
  the maximum sum is the sum of the whole array.

If the list is made up of only negative numbers, return 0 instead.

Empty list is considered to have zero greatest sum.
Note that the empty list or array is also a valid sublist/subarray.

Test.describe("Tests") do
Test.assert_equals(max_sequence([]), 0)
Test.assert_equals(max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]), 6)
Test.assert_equals(max_sequence([11]), 11)
Test.assert_equals(max_sequence([-32]), 0)
Test.assert_equals(max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]), 12)
end


10DIME

input
- an array or list of integers

output
- an integer that is the "maximum sum of contiguous subsequence"

data structures
- array?

illustration
I need a method that adds the first two integers to create the first max sum. Then
I need to add the following integer and check if the sum has increased. If it has, I
replace the max sum with the new sum. Then I continue to add integers. If it has not
increased, then I restart the whole process using the second and third integer as my base.
Return the max sum once done.

methods

exeptions/edge cases
- if it's all positive numbers then max sum is entire array
- all negative numbers or empty list, return 0
