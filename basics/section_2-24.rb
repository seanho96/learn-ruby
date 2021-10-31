def operator(first_num, second_num, operation)
  first_num = first_num.to_f
  second_num = second_num.to_f
  return first_num * second_num if operation == "multiply"
  return first_num + second_num if operation == "add"
  return first_num - second_num if operation == "subtract"
  if second_num == 0
    raise ZeroDivisionError.new "Cannot #{operation} #{first_num} by #{second_num}"
  end
  return first_num / second_num if operation == "divide"
  return first_num - second_num if operation == "modulus"
end

valid_operators = %w[multiply add subtract divide modulus]

puts "Simple Calculator"
20.times { print "-" }
puts
puts "Please enter the first number"
num_1 = gets.chomp
puts "Please enter the second number"
num_2 = gets.chomp
puts "Please enter the operation of choice"
puts "multiply / divide / add / subtract / modulus"
operation = gets.chomp.downcase
begin
  if valid_operators.include?(operation)
    return(
      puts "The first number #{operation} by the second number is #{operator(num_1, num_2, operation)}"
    )
  end
  puts "Invalid operation"
rescue ZeroDivisionError => ex
  puts ex.message
end
