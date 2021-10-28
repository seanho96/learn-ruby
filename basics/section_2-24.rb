def operator(first_num, second_num, operation)
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
num_1 = gets.chomp.to_f
puts "Please enter the second number"
num_2 = gets.chomp.to_f
puts "Please enter the operation of choice"
puts "multiply / divide / add / substract / modulus"
operation = gets.chomp.downcase

if operation == "multiply"
  puts "The first number multiplied by the second number is #{operator(num_1, num_2, "multiply")}"
elsif operation == "add"
  puts "The first number added by the second number is #{operator(num_1, num_2, "add")}"
elsif operation == "substract"
  puts "The first number substracted by the second number is #{operator(num_1, num_2, "substract")}"
elsif operation == "divide"
  if num_2 == 0
    puts "#{num_1} cannot be divided by #{num_2}"
  else
    puts "The first number divided by the second number is #{operator(num_1, num_2, "divide")}"
  end
elsif operation == "modulus"
  if num_2 == 0
    puts "#{num_1} cannot be modulus by #{num_2}"
  else
    puts "The first number modulus by the second number is #{operator(num_1, num_2, "modulus")}"
  end
else
  puts "Invalid operation"
end
