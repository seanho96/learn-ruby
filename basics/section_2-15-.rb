#######################
# Video 15
#######################

# String concatenation
first_name = "First"
last_name = "Last"
puts first_name + " " + last_name

# String interpolation (requires double quotes)
puts "My first name is #{first_name} and my last name is #{last_name}"

# search for the data type with .class
# this works as ALL items in Ruby are objects
p first_name.class # returns String

# Search for all methods available to the class
# Very useful!
p first_name.methods

# Empty strings are not NIL as all objects have some kind of value
"".empty? # returns true
"".nil? # returns false
nil.nil? # returns true

# `.sub("Original string", "new string")` replaces the sub section of original string with a new string
# `.gsub("OG","new") replaces all instances of the original string to the new string stated.

# In Ruby, if a variable is pointing to another variable, it's pointing to a location in memory
# Pass by object_id

# Escape with \ (Used to escape special characters)
name = "My name"
p "name is \#{name}" 
print 'He said:\'Hi\''



#######################
# Video 16
#######################

puts "What is your first name?"
first_name = gets.chomp
puts "Thank you, you're first name is #{first_name}"


puts "Enter a number to multiply by 2"
input = gets.chomp
puts input.to_i * 2


