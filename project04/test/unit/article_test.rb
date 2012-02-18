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
end
