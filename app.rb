require_relative './app/book'
require_relative './app/author'
require_relative './app/label'
require_relative './app/music_album'

class App 
     def initialize
        @books = []
        @authors = []
        @label = []
        @music_album = []
     end

     def create_book 
        print 'Title:'
        title = gets.chomp
        print 'Authors first name:'
        first_name = gets.chomp
        print 'Authors last name:'
        last_name = gets.chomp
        print 'enter the publish date int the format(0000-00-00):'
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
            puts "Author name: #{author.first_name +' '+ author.last_name}"
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
            @music_album<<Music_album.new(title, publish_date = Date.parse(publish_date), on_spotify)
          else
            @music_album<<Music_album.new(title, publish_date = Date.parse(publish_date), on_spotify)
          end
          puts "Music album and label created"
          puts ' '
     end

     def list_music_album
        @Music_album.each do |music|
            puts "Music title: #{music.title}, Publish date: #{music.publish_date}"
        end
     end

     def list_label 
        @label.each_with_index do | item, index|
            puts "#{index}) Title: #{item.title}, label color: #{item.color}"
        end
     end

     def function(option)
     case option
     when 1
        list_books
     when 2
        list_music_album
     when 6
        list_label
     when 7 
        list_authors
     when 9 
        create_book
     when 10
        add_music_album
     end
     end
end