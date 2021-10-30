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

case operation
when "multiply", "add", "substract"
  puts "The first number #{operation} by the second number is #{operator(num_1, num_2, operation)}"
when "divide", "modulus"
  if num_2 == 0
    puts "Cannot #{operation} #{num_1} by #{num_2}"
  else
    puts "The first number #{operation} by the second number is #{operator(num_1, num_2, operation)}"
  end
else
  puts "Invalid operation"
end
