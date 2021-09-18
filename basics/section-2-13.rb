# Intro to Ruby

# Everything in Ruby returns something

# 3 ways to print
print "Hello World" 
# prints inline without placing the next statement on the next line
# same as puts but doesn't return a new line after

puts "Hello World"
# puts = put + s = put string
# print out argument as string (outputs to console)
# puts doesn't return anything hence NIL is returned

p "Hello World"
# p returns whatever argument you give it


# Printing an array

array = [1, 2, 3]

print array # outputs [1, 2, 3]
puts array 
# outputs 
# 1
# 2
# 3
p array # outputs [1, 2, 3]


# Method syntax

def greeting(phrase)
  puts phrase
end

greeting "hello world"