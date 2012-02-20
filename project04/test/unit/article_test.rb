require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  
  test "article should not allow emtpy creation" do
    article = Article.new
    assert article.invalid?
    assert article.errors[:title].any?
    assert article.errors[:author_name].any?
    assert article.errors[:body].any?
    assert article.number_of_edits == 0
  end

  test "no articles by Pat are allowed" do
    article = Article.new(title: "Exposition on the Bengal Tiger",
                          author_name: "Pat Beauregard",
                          body: "The Bengal Tiger is an animal which is orange with black stripes.")
    assert article.invalid?
    assert article.errors[:title].none?
    assert article.errors[:author_name].any?
    assert article.errors[:body].none?
  end

  test "good article" do
    article = Article.new(title: "Exposition on the Bengal Tiger",
                          author_name: "Veruca Salt",
                          body: "The Bengal Tiger is an animal which is orange with black stripes.")
    assert article.valid?
  end

end
