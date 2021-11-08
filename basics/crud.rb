module Crud
  require "bcrypt"

  def self.create_hash_digest(password)
    BCrypt::Password.create(password)
  end

  def self.verify_hash_digest(password)
    BCrypt::Password.new(password)
  end

  def self.create_secure_users(users)
    users.map do |user|
      user[:password] = create_hash_digest(user[:password])
      user
    end
  end

  def self.authenticate_user(username, password, list_of_users)
    list_of_users.find do |user_record|
      user_record[:username] == username && user_record[:password] == password
    end || "Credentials were not correct"
  end
end
