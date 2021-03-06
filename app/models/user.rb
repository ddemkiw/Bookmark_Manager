require 'bcrypt'

class User


	include DataMapper::Resource

	property :id, Serial
	property :email, String, :unique => true, :message => "This email is already taken"
  property :password_digest, Text
  # property :password_token, Text 
  # after you add to the database, you need to RAKE auto_upgrade or auto_migrate - it depends on how much you are changing the table and if you will be losing data
  

  attr_reader :password
  attr_accessor :password_confirmation
  validates_confirmation_of :password

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def self.authenticate(email, password)
    user = first(:email => email)
    if user && BCrypt::Password.new(user.password_digest) == password
      user
    else
      nil 
    end 
  end 

  

end

