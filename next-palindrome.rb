#starting with integer provided in argument find the next palindrome
#integer_1 = 1234321
#integer_2 = 123321
#for odd do (integer_1.size / 2).floor = the index which is middle of an odd integer. Remove middle integer and make an array of both sides, leaving you with 2 arrays
#for even do (integer_2.size / 2).floor = the index which is the first index, of an even integers second half. Here we we split the two halves into their own arrays as well.
#take the 2 arrays of integers and reverse one of them, then comapre
# 123 & 321.digits.join.to_i
# 123 & 123
#might need to convert line about back to integers otherwise maybe false positive
#returns [1, 2, 3]
#if [1, 2, 3].count == original integer size, then palidrome is true.
# both sides of a palidrome should be equal length, so if returned array count from 123 & 321.digits.join.to_i == length of either side, then the original argument is a palindrome

# @counter_2 = 0

def palidrome_finder(integer)
  counter_1 = integer
  if integer.digits.join.to_i == integer && @counter_2 >= 1
    counter_1
  else
    counter_1 += 1
    @counter_2 += 1
    palidrome_finder(counter_1)
  end
end

# @counter_2 = 0

#this answer works, but for some reason only one at a time with how testing is currently set up for some reason?
#seem to be that the @counter_2 being outside of the method is causing it not to be reset for each new line it's called.
@counter_2 = 0
p palidrome_finder(100)
@counter_2 = 0
p palidrome_finder(101)
@counter_2 = 0
p palidrome_finder(102)
@counter_2 = 0
p palidrome_finder(1234319)
@counter_2 = 0
p palidrome_finder(1234321)
@counter_2 = 0
p palidrome_finder(123321)
@counter_2 = 0
p palidrome_finder(123200)

#
# find_middle = (integer.digits.size / 2)
# integer_size = integer.digits.size

# if integer.reverse == integer
#   p counter
# elsif integer.odd?
#   require "pry"; binding.pry
#   integer.to_s.delete(find_middle)
#   [0..(find_middle - 1)] & [(find_middle + 1)..-1]
# else
#
# end
# return counter
# palidrome_finder(counter)
# end
