class User < ActiveRecord::Base
  acts_as_authentic
  attr_accessible :email, :first_name, :games_count, :last_name, :password, :username
end
