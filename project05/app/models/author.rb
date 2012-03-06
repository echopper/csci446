class Author < ActiveRecord::Base
  has_many :articles
  validates :name, format: %r{^((?!pat).*$)}
  validates_uniqueness_of :name

end
