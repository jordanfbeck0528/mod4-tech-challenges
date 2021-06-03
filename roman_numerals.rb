# # https://stackoverflow.com/questions/26092510/roman-numerals-in-ruby

class Integer
  def to_roman
    roman_arr = {
      1000 => "M",
      900 => "CM",
      500 => "D",
      400 => "CD",
      100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I"
    }
    num = self

    roman_arr.reduce("") do |res, (arab, roman)|
      whole_part, num = num.divmod(arab)
      res << roman * whole_part
    end
  end
end

# def to_roman(num)
#   # your code goes here
# end

p to_roman(128)   # should return "CXXVIII"
p to_roman(2000)  # should return "MM"
p to_roman(2017)  # should return "MMXVII"
p to_roman(1999)  # should return "MCMXCIX"


# class Integer
#
#   def to_roman_explained
#     roman_arr = {
#       1000 => "M",
#       900 => "CM",
#       500 => "D",
#       400 => "CD",
#       100 => "C",
#       90 => "XC",
#       50 => "L",
#       40 => "XL",
#       10 => "X",
#       9 => "IX",
#       5 => "V",
#       4 => "IV",
#       1 => "I"
#     }
#
#     remaining = self  # the integer on which this method is called
#     empty_string = "" # startvalue of result
#
#     return_value = roman_arr.inject(empty_string) do |result, (arab, roman)|
#       # inject = reduce, for each element of our hash
#       # arab and roman are the key and value part of the hash elements, result is result from previous iteration
#       p [result, arab, roman,remaining.divmod(arab)] # lets's see what happens
#       # number of times the remaining can be divided with the value of this roman, the remaining becomes the rest
#       whole_part, remaining = remaining.divmod(arab)
#       result << roman * whole_part # if whole_part == 0 nothing happens for this roman
#     end
#
#     return return_value
#
#   end
# end
#
# puts 555.to_roman_explained
