require_relative './helper_app'

class App < HelperApp
  def initialize
    super
    @books = load_books
    @authors = load_author
    @label = load_label
    @music_album = load_music_album
    @genre = load_genre
    @movie = load_movie
    @source = load_sources
    @game = load_games
  end

  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Authors first name: '
    first_name = gets.chomp
    print 'Authors last name: '
    last_name = gets.chomp
    print 'enter the publish date in the format(0000-00-00): '
    publish_date = gets.chomp.to_s
    print 'publisher: '
    publisher = gets.chomp
    print 'cover state: '
    cover_state = gets.chomp
    book = Book.new(title, Date.parse(publish_date), publisher, cover_state)
    author = Author.new(first_name, last_name)
    @books.push(book)
    @authors << (author)
    puts 'book and author created successfully'
    puts ' '
  end

  def list_books
    @books.each do |book|
      puts "Title: #{book.title}, publish date: #{book.publish_date}, publisher: #{book.publisher}"
      puts ''
    end
  end

  def list_authors
    @authors.each do |author|
      puts "Author name: #{author.first_name} #{author.last_name}"
      puts ' '
    end
  end

  def add_music_album
    print 'Enter title:'
    title = gets.chomp
    print 'Enter color'
    color = gets.chomp
    print 'Publish date(0000-00-00):'
    date = gets.chomp.to_s
    print 'On spotify?(Y/N):'
    spotify = gets.chomp
    @label << Label.new(title, color)
    on_spotify = spotify.downcase == 'y'
    @music_album << MusicAlbum.new(title, Date.parse(date), on_spotify)
    puts 'Music album and label created'
    puts ' '
  end

  def list_music_album
    @music_album.each do |music|
      puts "Music title: #{music.title}, Publish date: #{music.publish_date}"
    end
  end

  def list_label
    @label.each_with_index do |item, index|
      puts "#{index}) Title: #{item.title}, label color: #{item.color}"
    end
  end

  def add_movies
    print 'Name of movie:'
    name = gets.chomp
    print 'Publish date(0000-00-00):'
    publish_date = gets.chomp.to_s
    print 'Silent?(Y/N):'
    result = gets.chomp
    @genre << Genre.new(name)
    silent = result.downcase == 'y'
    @movie << Movie.new(name, Date.parse(publish_date), silent)
    puts 'Movie and genre created'
    puts ''
  end

  def list_movies
    @movie.each do |firm|
      puts "Title: #{firm.name}, Publish date: #{firm.publish_date}"
    end
  end

  def list_genre
    @genre.each do |element|
      puts "Genre Name: #{element.name}"
    end
  end

  def add_game
    print 'Game name:'
    name = gets.chomp
    print 'Game source:'
    g_source = gets.chomp
    print 'Game publish date(0000-00-00):'
    publish_date = gets.chomp.to_s
    print 'multiplayer game:'
    multiplayer = gets.chomp
    print 'Game lastly played on(0000-00-00):'
    last_played_at = gets.chomp.to_s
    @game << Game.new(name, publish_date, multiplayer, last_played_at)
    @source << Source.new(g_source)
  end

  def list_games
    @game.each do |item|
      puts "Game Name: #{item.name}, publish date: #{item.publish_date}, multiplayer: #{item.multiplayer},
       last day played: #{item.last_played_at}"
    end
  end

  def list_source
    @source.each do |element|
      puts "Source Name: #{element.name}"
    end
  end
end
