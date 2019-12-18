class Library
  attr_reader :name, :books, :authors, :checked_out_books

  def initialize(name)
    @name = name
    @books = []
    @authors = []
    @checked_out_books = []
  end

  def add_author(author)
    @authors << author
    author.books.each do |book|
      @books << book
    end
  end

  def publication_time_frame_for(author)
    years = author.books.map do |book|
      if book.publication_date.length > 4
        book.publication_date[-4..-1]
      else book.publication_date
      end
    end
    start_yr = years.min
    end_yr = years.max
    {start: start_yr, end: end_yr}
  end

  def checkout(book_param)
    if @books.find {|book| book == book_param} == nil
      false
    elsif @books.find {|book| book == book_param} != nil && @checked_out_books.find {|book| book == book_param} != nil
      false
    else
    @checked_out_books << book_param
    book_param.check_out_count += 1
    book_param.checked_out = true
    end
  end

  def return(book)
    book.checked_out = false
    @checked_out_books.delete_at(@checked_out_books.index(book))
  end

  def most_popular_book
    @books.max_by {|book| book.check_out_count}
  end
end
