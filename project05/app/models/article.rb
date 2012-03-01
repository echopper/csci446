class Article < ActiveRecord::Base
  
  validates :title, :author_name, :body, :presence => true
  validates :author_name, format: %r{^((?!pat).*$)}i

end
