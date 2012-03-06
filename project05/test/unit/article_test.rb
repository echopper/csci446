require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  
  test "article should not allow emtpy creation" do
    article = Article.new
    assert article.invalid?
    assert article.errors[:title].any?
    assert article.errors[:body].any?
    assert article.number_of_edits == 0
  end

  test "good article" do
    article = Article.new(title: "Exposition on the Bengal Tiger",
                          body: "The Bengal Tiger is an animal which is orange with black stripes.")
    assert article.valid?
  end

end
