module Crud
  require "bcrypt"

  def Crud.create_hash_digest(password)
    BCrypt::Password.create(password)
  end

  def Crud.verify_hash_digest(password)
    BCrypt::Password.new(password)
  end

  def Crud.create_secure_users(list_of_users)
    list_of_users.each do |user_record|
      user_record[:password] = create_hash_digest(user_record[:password])
    end
    return list_of_users
  end

  def Crud.authenticate_user(username, password, list_of_users)
    list_of_users.find do |user_record|
      user_record[:username] == username && user_record[:password] == password
    end || "Credentials were not correct"
  end
end
