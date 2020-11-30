# Create a new array
nums = [1, 2, 3, 4]

# Using Array object constructor, Array.new()
nums2 = Array.new([1, 2, 3, 4])

# Access element in array by index
nums[0] # => 1
nums[1] # => 2

# Iterate over list using for loop
nums.each do |element|
  puts element
end
# => 1
#    2
#    3 
#    4
# [1, 2, 3, 4]

# Iterate over list and map new list 
nums_doubled = nums.map {|element| element * 2}
# >>> [2, 4, 6, 8]

