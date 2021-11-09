# classes must always start with Capital in Ruby
class Student
  attr_accessor :first_name, :last_name, :email, :username, :password

  # attr_reader # --> for reading only

  # instance variable starts with @
  # @first_name
  # @last_name
  # @email
  # @username
  # @password

  # this method is run everytime a new instance is initialized
  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end

  # Classes by default have this method
  # When you try to print out this class, it will default to this method
  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, Email Address: #{@email}"
  end

  # to manually have setters and getters of a class we would need to do the below
  # for every attribute we have:

  # def first_name = (name)
  #   @first_name = name
  # end

  # def first_name
  #   @first_name
  # end
end

sean = Student.new("Sean", "Ho", "seanho", "sean@gmail.com", "pw1")
ho = Student.new("Ho", "Sean", "hosean", "ho@gmail.com", "pw2")

puts sean
puts ho
