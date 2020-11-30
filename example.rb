# Create a new array
nums = [1, 2, 3, 4]

# Using Array object constructor, Array.new()
nums2 = Array.new([1, 2, 3, 4])

# Access element in array by index
nums[0] # => 1
nums[1] # => 2

# Iterate over array Array.each enumerable
nums.each do |element|
  puts element
end
# => 1
#    2
#    3 
#    4
# [1, 2, 3, 4]

# Iterate over array and map new array using Array.map enumberable
nums_doubled = nums.map {|element| element * 2}
# >>> [2, 4, 6, 8]

