require 'minitest/autorun'
require 'minitest/pride'
require './lib/book'

class BookTest < Minitest::Test
  def setup
    @book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
  end

  def test_it_exists
    assert_instance_of Book, @book
  end

  def test_it_has_attributes
    assert_equal "Harper Lee", @book.author
    assert_equal "To Kill a Mockingbird", @book.title
    assert_equal "July 11, 1960", @book.publication_date
  end
end
