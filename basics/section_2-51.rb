require_relative "crud"

class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, Email Address: #{@email}"
  end
end

sean = Student.new("Sean", "Ho", "seanho", "sean@gmail.com", "pw1")
ho = Student.new("Ho", "Sean", "hosean", "ho@gmail.com", "pw2")
sean_hashed_pw = sean.create_hash_digest(sean.password)

puts sean_hashed_pw
