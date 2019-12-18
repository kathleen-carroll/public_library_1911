require './lib/book'

class Author
  attr_reader :name, :books

  def initialize(author_info)
    @name = author_info[:first_name] + " " + author_info[:last_name]
    @books = []
  end

  def write(title, date)
    first_name = @name.split[0]
    last_name = @name.split[1]
    book_details = {author_first_name: first_name, author_last_name: last_name, title: title, publication_date: date}
    new_book = Book.new(book_details)
    books << new_book
    new_book
  end
end
