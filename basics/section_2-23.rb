def multiply(first_num, second_num)
  # last evaluated expression of the method is implicitly returned
  # we can also explicitly use the `return` keyword
  first_num * second_num
end

puts multiply(2, 5)

############

def operator(first_num, second_num, operation)
  first_num = first_num.to_f
  second_num = second_num.to_f

  if operation == "multiply"
    first_num * second_num
  elsif operation == "divide"
    first_num / second_num
  elsif operation == "add"
    first_num + second_num
  elsif operation == "substract"
    first_num - second_num
  elsif operation == "modulus"
    first_num % second_num
  end
end

puts "Simple Calculator"
20.times { print "-" }
puts
puts "Please enter the first number"
num_1 = gets.chomp
puts "Please enter the second number"
num_2 = gets.chomp

puts "The first number multiplied by the second number is #{operator(num_1, num_2, "multiply")}"
puts "The first number added by the second number is #{operator(num_1, num_2, "add")}"
puts "The first number substracted by the second number is #{operator(num_1, num_2, "substract")}"
if num_2.to_f == 0
  puts "#{num_1} cannot be divided by #{num_2}"
  puts "#{num_1} cannot be modulus by #{num_2}"
else
  puts "The first number divided by the second number is #{operator(num_1, num_2, "divide")}"
  puts "The first number modulus by the second number is #{operator(num_1, num_2, "modulus")}"
end
