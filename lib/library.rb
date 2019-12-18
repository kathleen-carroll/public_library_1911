class Library
  attr_reader :name, :books, :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []
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
end
