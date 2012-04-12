class Game < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name, :rating, :user_id
end
