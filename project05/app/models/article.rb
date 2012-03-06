class Article < ActiveRecord::Base
  belongs_to :author
  validates :title, :author_id, :body, :presence => true

end
