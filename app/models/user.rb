require 'bcrypt'
class User < ActiveRecord::Base
  # Remember to create a migration!
  validates :user_name, :uniqueness => true, :presence => true
  validates :email, :uniqueness => true, :presence => true

  has_many :kudos

  def password
    @password ||= BCrypt::Password.new(hashed_password)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.hashed_password = @password
  end

  def self.authenticate(email, password)
    user = User.find_by(email: email)
    if user && user.password == password
      return user
    else
      return nil
    end
  end
end
