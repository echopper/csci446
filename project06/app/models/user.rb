class User < ActiveRecord::Base
  has_many :games
  acts_as_authentic
  attr_accessible :email, :first_name, :games_count, :last_name, :password, :username
end
