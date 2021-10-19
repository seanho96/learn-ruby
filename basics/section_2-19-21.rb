# Working with numbers

p 10 / 4 # 2 (ints remove their decimal places)
p 10.0 / 4 # 2.5 (returns a float with 1 float present)
# this happens when 1 float is present, the other will be converted to a float
p 10 / 4.0 # 2.5
p 10 / 4.to_f # 2.5

p "5" * 2 # "55" as it means "5" + "5"
# but you can't have a string multiplied by a number (e.g. 2 * "5")
# as there is no implicit conversion of a number - coercion in JS

# Using number for String Concatenation
puts "-" * 20 # --------------------

# Using `.times { }`
20.times { print "-" }

# Using of `rand` for randomisation
puts rand # Returns 0 to less than 1 in float
puts rand(10) # Returns 0 to less than 10 in number
puts rand(100) # Returns 0 to less than 100 in number

# Assignment - A simple Calculator
# take 2 inputs and show outputs for multiplication, division, addition, substraction & modulus

puts "Simple Calculator"
20.times { print "-" }
puts
puts "Please enter the first number"
num_1 = gets.chomp.to_f
puts "Please enter the second number"
num_2 = gets.chomp.to_f

puts "The first number multiplied by the second number is #{num_1 * num_2}"
puts "The first number divided by the second number is #{num_1 / num_2}"
puts "The first number added by the second number is #{num_1 + num_2}"
puts "The first number substracted by the second number is #{num_1 - num_2}"
puts "The first number modulus by the second number is #{num_1 % num_2}"
