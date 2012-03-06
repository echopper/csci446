require 'set'

class AddAuthorIdToArticles < ActiveRecord::Migration
  def change
    author_names = Article.find(:all)
    author_set = Set.new

    author_names.each do |a|
      author_set.add a.author_name
    end

    author_set.each do |a|
      Author.create(name: a)
    end


    add_column :articles, :author_id, :integer


  end
end
