users = [
  { username: "sean", password: "password1" },
  { username: "test", password: "password2" },
  { username: "demo", password: "password3" },
  { username: "account", password: "password4" },
  { username: "ho", password: "password5" }
]

def auth_user(username, password, list_of_users)
  list_of_users.find do |user|
    user[:username] == username && user[:password] == password
  end || "Credentials were not correct"
end

puts "Welcome to the authenticator"
40.times { print "-" }
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"
40.times { print "-" }
puts

attempts = 1
max_number_of_attempts = 4
while attempts < max_number_of_attempts
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp
  auth_message = auth_user(username, password, users)
  puts auth_message
  puts "Press n to quit or any other key to continue: "
  input = gets.chomp.downcase
  break if input == "n"
  attempts += 1
end
if attempts == max_number_of_attempts
  puts "You have exceeded the number of attempts"
end
