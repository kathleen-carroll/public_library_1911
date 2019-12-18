class Book
  attr_reader :author, :title, :publication_date

  def initialize(book_details)
    @author = book_details[:author_first_name] + " " + book_details[:author_last_name]
    #@author_last_name = book_details[:author_last_name]
    @title = book_details[:title]
    @publication_date = book_details[:publication_date]
  end
end
