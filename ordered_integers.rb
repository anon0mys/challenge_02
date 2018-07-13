=begin
Given an array of integers nums sorted in ascending order, find the starting and ending position of a given target value.
Your algorithm's runtime complexity must be in the order of O(log n).
If the target is not found in the array, return [-1, -1].
Example 1:
Input: nums = [5,7,7,8,8,10], target = 8
Output: [3,4]
Example 2:
Input: nums = [5,7,7,8,8,10], target = 6
Output: [-1,-1]
=end

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

def search_range(nums, target)
  bsearch(nums, target)
end

def bsearch(array, target)
  midpoint = (array.length / 2).ceil
  if array.length == 1 && array[0] != target
    return [-1,-1]
  end
  if array[midpoint] == target
    starting = midpoint
    ending = midpoint
    until array[starting - 1] != target && array[ending + 1] != target
      starting -= 1 if array[starting - 1] == target
      ending += 1 if array[starting + 1] == target
    end
    return [starting, ending]
  elsif array[midpoint] < target
    bsearch(array[0..midpoint], target)
  elsif array[midpoint] > target
    bsearch(array[midpoint..array.length], target)
  else
    [-1,-1]
  end
end
