require_relative './app/book'
require_relative './app/author'
require_relative './app/label'
require_relative './app/music_album'
require_relative './app/genre'
require_relative './app/movie'
require_relative './app/game'
require_relative './app/source'
require_relative './logic/book_logic'
require_relative './logic/author_logic'
require_relative './logic/game_logic'
require_relative './logic/label_logic'
require_relative './logic/source_logic'
require_relative './logic/movies_logic'
require_relative './logic/music_album_logic'
require_relative './logic/genre_logic'

class App 
include Book_logic
include Author_logic
include Game_logic
include Genre_logic
include Label_logic
include Movie_logic
include Source_logic
include Music_logic

     def initialize
        @books = load_books || []
        @authors = load_author || []
        @label = load_label || []
        @music_album = load_music_album || []
        @genre = load_genre || []
        @movie = load_movie || []
        @source = load_sources || []
        @game = load_games || []
     end

      def save_data
        save_books
        save_author
        save_games
        save_genre
        save_sources
        save_music_album
        save_movie
        save_label
      end

      def load_data
        load_books
        load_sources
        load_movie
        load_music_album
        load_author
        load_genre
        load_games
        load_movie
      end

      def publish_date
        
      end

     def create_book 
        print 'Title:'
        title = gets.chomp
        print 'Authors first name:'
        first_name = gets.chomp
        print 'Authors last name:'
        last_name = gets.chomp
        print 'enter the publish date in the format(0000-00-00):'
        publish_date = gets.chomp.to_s
        print 'publisher:'
        publisher = gets.chomp
        print 'cover state'
        cover_state = gets.chomp
        book = Book.new(title, publish_date = Date.parse(publish_date), publisher, cover_state)
        author = Author.new(first_name, last_name)
        @books.push(book)
        @authors<<(author) 
        puts 'book and author created'
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
          print 'Publish date:'
          publish_date = gets.chomp.to_s
          print 'On spotify?(Y/N):'
          spotify = gets.chomp
          @label<<Label.new(title, color)
          if spotify.downcase == 'y'
            on_spotify = true
          else
            on_spotify = false
          end
          @music_album<<Music_album.new(title, publish_date = Date.parse(publish_date), on_spotify)
          puts "Music album and label created"
          puts ' '
     end

     def list_music_album
        @music_album.each do |music|
            puts "Music title: #{music.title}, Publish date: #{music.publish_date}"
        end
     end

     def list_label 
        @label.each_with_index do | item, index|
            puts "#{index}) Title: #{item.title}, label color: #{item.color}"
        end
     end

     def add_movies 
        print 'Name of movie:'
        name = gets.chomp
        print 'Publish date:'
        publish_date = gets.chomp.to_s
        print 'Silent?(Y/N):'
        result = gets.chomp
        @genre<<Genre.new(name)
        if result.downcase == 'y'
            silent = true
        else 
            silent = false
        end
        @movie<<Movie.new(name, Date.parse(publish_date), silent)
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
        puts 'Game name:'
        name = gets.chomp
        puts 'Game source:'
        g_source = gets.chomp
        puts 'Game publish date(0000-00-00):'
        publish_date = gets.chomp.to_s
        puts 'multiplayer game:' 
        multiplayer = gets.chomp
        puts 'Game lastly played on(0000-00-00):'
        last_played_at = gets.chomp.to_s
        @game<<Game.new(name, publish_date, multiplayer, last_played_at)
        @source<<Source.new(name)
     end 

     def list_games
        @game.each do |item|
         puts "Game Name: #{item.name}, publish date: #{item.publish_date}, multiplayer: #{item.multiplayer}, last day played: #{item.last_played_at}"
        end
     end

     def list_source
        @source.each do |element|
         puts "Source Name: #{element.name}"
        end
     end

     def function(option)
     case option
     when 1
        if @books.empty?
            puts 'No books yet'
            puts ' '
        end
        list_books
     when 2
        list_music_album
     when 3
        list_movies
     when 4
        list_games
     when 5
        list_genre
     when 6
        list_label
     when 7 
        list_authors
     when 8 
        list_source
     when 9 
        create_book
     when 10
        add_music_album
     when 11
        add_movies
     when 12
        add_game
     end
     end
end