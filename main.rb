require 'pry-byebug'

# write a recursive method that takes an array and returns a sorted array
# using merge sort.

# on the input of n elements
# if n < 2
#   returns n
# else
#   sort the left half of the list
#   sort the right half of the list
#   join the sorted halves by comparing each element in left to right

# Path: odin-merge-sort/main.rb

def merge_sort(arr)
  if arr.length < 2
    return arr
  else 
    mid = (arr.length / 2).floor
    left = merge_sort(arr[0..mid - 1])
    right = merge_sort(arr[mid..arr.length])
    arr = arr.sort
    return arr
  end 
end

print merge_sort([4, 1, 3, 2, 9, 6, 11, 6, 5, 3, 12, 6, 15, 2, 17, 18])
