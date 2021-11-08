require_relative "crud"

# an alternative require notation:
# $LOAD_PATH << "."
# require 'auth'

users = [
  { username: "sean", password: "password1" },
  { username: "test", password: "password2" },
  { username: "demo", password: "password3" },
  { username: "account", password: "password4" },
  { username: "ho", password: "password5" }
]

hashed_users = Crud.create_secure_users(users)
puts hashed_users
