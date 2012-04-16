class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :games_count, :last_name, :password, :username
end
