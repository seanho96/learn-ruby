require "bcrypt"

my_password = BCrypt::Password.create("my password")
my_password_1 = BCrypt::Password.create("my password")
my_password_2 = BCrypt::Password.create("my password")

puts my_password
puts my_password_1
puts my_password_2

# When we are checking with this operation with a hashed pass, what actually
# happens is a hash verification and not a straight string comparison.

puts my_password == my_password_2 # false
puts my_password == "my password" # true
puts "my password" == my_password # false

# The equality operator == (the compare function) is a method on an object.

# In the case of a String object being to the left, it is the equality operator
# method of the String that gets called.
# In the case of the hash digest object being on the left, it's equality operator is called.

#######################################################

users = [
  { username: "sean", password: "password1" },
  { username: "test", password: "password2" },
  { username: "demo", password: "password3" },
  { username: "account", password: "password4" },
  { username: "ho", password: "password5" }
]

def create_hash_digest(password)
  BCrypt::Password.create(password)
end

def verify_hash_digest(password)
  BCrypt::Password.new(password)
end

def create_secure_users(users)
  users.map do |user|
    user[:password] = create_hash_digest(user[:password])
    user
  end
end

def authenticate_user(username, password, list_of_users)
  list_of_users.find do |user_record|
    user_record[:username] == username && user_record[:password] == password
  end || "Credentials were not correct"
end

encrypted_users = create_secure_users(users)

puts authenticate_user("sean", "password1", encrypted_users) # returns encrypted user record
puts authenticate_user("ho", "password1", encrypted_users) # Credentials were not correct
