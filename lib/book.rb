class Book
  attr_reader :author, :title, :publication_date
  attr_accessor :checked_out, :check_out_count

  def initialize(book_details)
    @author = book_details[:author_first_name] + " " + book_details[:author_last_name]
    @title = book_details[:title]
    @publication_date = book_details[:publication_date]
    @checked_out = false
    @check_out_count = 0
  end
end
