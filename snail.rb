# Given an `n x n array`, write a method that returns the array elements arranged from outermost elements to the middle element, traveling clockwise.
# Javascript:
# ```js
# const arrayMatrix = [
#   [1, 2, 3],
#   [4, 5, 6],
#   [7, 8, 9]
# ];
# snail(arrayMatrix) #=> [1, 2, 3, 6, 9, 8, 7, 4, 5]
# */
# const snail = (array) => {
#   // initialize empty array to add results to
#   let result = [];
#   // keep performing the following operations until you have added all elements of the matrix to the result array
#   while (array.length) {
#     // remove every element of the top row and add to the result array
#     result = [...result, ...array.shift()];
#     // remove the last element of every row and add to the result array
#     for (let i = 0; i < array.length; i++) {
#       result.push(array[i].pop());
#     }
#     // remove all elements in the bottom row and add to result array in reverse order
#     // if there are no elements in the bottom row, set to empty array so that algorithm doesn't error out.
#     let bottomRow = array.pop() || [];
#     result = [...result, ...bottomRow.reverse()];
#     // remove all elements from the front of every row and add to the result array in order of bottom to top
#     for (let i = array.length - 1; i >= 0; i--) {
#       result.push(array[i].shift());
#     }
#   }
#   // return the result array
#   return result;
=begin
Given an `n x n array`, write a method that returns the array elements arranged from outermost elements to the middle element, traveling clockwise.
Ruby:
```ruby
const array_matrix = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
];
snail(array_matrix) #=> [1, 2, 3, 6, 9, 8, 7, 4, 5]
=end
def snail(array)
  # initialize empty array to add results to
  result = []
  # keep performing the following operations until you have added all elements of the matrix to the result array
  while(array.length > 0)
    # remove every element of the top row and add to the result array
    result.push(array.shift)
    # remove the last element of every row and add to the result array
    (array.length).times do |row|
      result.push(array[row].pop)
    end
    # remove all elements in the bottom row and add to result array in reverse order
    # if there are no elements in the bottom row, set to empty array so that algorithm doesn't error out.
    bottom_row = array.pop || []
    result.push(bottom_array.row)
    # remove all elements from the front of every row and add to the result array in order of bottom to top
    (0...array.length).reverse_each do |row|
      result.push(array[row].shift)
    end
  end
  # return the result array
  result
end
array_matrix = [
  [1,2,3,4],
  [4,5,6,5],
  [7,8,9,7]
]
puts snail(array_matrix)
