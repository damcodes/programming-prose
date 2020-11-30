# Create a new list
nums = [1, 2, 3, 4]

# Using List object constructor, list()
nums2= list([1, 2, 3, 4])

# Access element in list by index
nums[0] # >>> 1
nums[1] # >>> 2

# Iterate over list using for loop
for element in nums: 
  print(element)
# >>> 1
#     2
#     3 
#     4

# Iterate over list and map new list 
nums_doubled = map(lambda element: element * 2, nums)
# >>> [2, 4, 6, 8]