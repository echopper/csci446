class User < ActiveRecord::Base
  acts_as_authentic
  attr_accessible :email, :first_name, :last_name, :username, :password, :password_confirmation
end
