# Array

a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
p a.last # 9

# Using of ..
# Create a Range of number inclusive of 100
x = 1..100
p x.class # Range
p x.to_a # Show array consist of element 1 to 100

# Shuffle the element in the array
# The shuffle here is mutating the to_a instead of x
p x.to_a.shuffle!
p x # 1..100

x = (1..10).to_a
p x.reverse! # [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]

x = "a".."z"
p x.to_a # ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

# Shovel Operator
# - add element to end of the Array
a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
a << 10
p a # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Add something to the first element in the Array
p a.unshift("Name") # ["Name", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Add something to the last element in the Array
p a.append("Name") # ["Name", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "Name"]

# Remove duplicate element and make element unique
# Does not mutate
p a.uniq # ["Name", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Check if element is in the Aray
p a.include?("Name") # true

# Push the new element to the end of Array
p a.push("New Item") # ["Name", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "Name", "New Item"]

# Return the last element in the Array & remove it from array LILO (Last In Last Out)
p b = a.pop

# Join the element inside the Array
# Does not mutate
p a.join # "Name12345678910Name"

# Join the element inside the Array with the seperator "-"
p b = a.join("-") # "Name-1-2-3-4-5-6-7-8-9-10-Name"

# Join the element inside the Array with the seperator ","
p a.join(", ") # "Name, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, Name"

# Become into an Array
# Does not mutate
p b.split # ["Name-1-2-3-4-5-6-7-8-9-10-Name"]

# Become into an Array with delimiter -
p b.split("-") # ["Name", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Name"]

# Shorthand of taking large String and convert into an Array of different entries
p z = %w[my name is name and this is great Ruby is amazing] # ["my", "name", "is", "name", "and", "this", "is", "great", "Ruby", "is", "amazing"]

## Iterator
# Using of for loop
for i in z
  print i + " " # my name is name and this is great Ruby is amazing
end

# Using .each method
# similar to .filter in JS
# argument gets passed in the pipe operator
z.each do |food|
  print food + " " # my name is name and this is great Ruby is amazing
end

# Using .each method in One Line
z.each { |food| print food + " " } # my name is name and this is great Ruby is amazing
puts

# Using .select method
# similar to .filter in JS
# - returns Array of fulfill the condition of true
p z = (1..10).to_a # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p z.select { |number| number.odd? } # [1, 3, 5, 7, 9]
