require 'test_helper'

class AuthorTest < ActiveSupport::TestCase

  test "author should not allow empty creation" do
    author = Author.new
    assert author.invalid?
    assert author.errors[:name].any?
  end

  test "no authors by the name Pat are allowed" do
    author = Author.new(name: "Pat Beauregard")
    assert author.invalid?
    assert author.errors[:name].any?
  end

  test "good author" do
    author = Author.new(name: "civilian regs")
    assert author.valid?
    assert author.errors[:name].none?
  end

end
