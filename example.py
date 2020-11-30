# Create a new dictionary
nums = {"one": 1, "two": 2, "three": 3, "four": 4}

# Using Dictionary object constructor, dict()
nums2 = dict({"one": 1, "two": 2, "three": 3, "four": 4})

# Access value in dictionary by key
nums["one"] # >>> 1
nums["two"] # >>> 2

# Iterate over dictionary using for loop
for key, value in nums.items(): # in order to access key and value, 
                                # you must call .items() method on dictionary which returns 
                                # an array like object 
  print(key, "--", value)
# >>> one -- 1
#     two -- 2
#     three -- 3 
#     four -- 4



