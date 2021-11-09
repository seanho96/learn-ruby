require "bcrypt"

p my_password = BCrypt::Password.create("my password")

# version of bcrypt algorithm used
p my_password.version

# cost factor used to create the hash
# higher the cost, higher the amount of work required to hash a pass, hence harder for attackers to brute force
p my_password.cost

p my_password == "my password" # true
p my_password == "not my password" # false
