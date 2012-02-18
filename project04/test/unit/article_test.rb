require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test "article should not allow emtpy creation" do
    article = Article.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:author_name].any?
    assert product.errors[:body].any?
    assert product.number_of_edits == 0
  end
end
