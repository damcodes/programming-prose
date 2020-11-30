# Create a new hash
nums = {"one" => 1, "two" => 2, "three" => 3, "four" => 4}

# Using Hash object constructor, Hash.new() must then manually assign key:value pairs
nums2 = Hash.new()
# must then manually assign key:value pairs
nums2["one"] = 1
...
nums2["four"] = 4

# Access values in hash by key
nums["one"] # => 1
nums["two"] # => 2

# Iterate over array using Hash.each enumerable
nums.each do |key, value|
  print key, '--', value # use print to prevent new line 
end
# => one--1
#    two--2
#    three--3 
#    four--4
# {"one"=>1, "two"=>2, "three"=>3, "four"=>4}



