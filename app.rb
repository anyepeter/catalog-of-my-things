require_relative './app/book'
require_relative './app/author'

class App 
     def initialize
        @books = []
        @authors = []
     end

     def create_book 
        print 'Title:'
        title = gets.chomp
        print 'Authors first name:'
        first_name = gets.chomp
        print 'Authors last name:'
        last_name = gets.chomp
        print 'enter the publish date int the format(0000-00-00):'
        publish_date = gets.chomp.to_i
        print 'publisher:'
        publisher = gets.chomp
        print 'cover state'
        cover_state = gets.chomp
        book = Book.new(title, publish_date = Date.new(publish_date), publisher, cover_state)
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
            puts "Author name: #{author.first_name + author.last_name}"
            puts ' '
        end
     end

     def function(option)
     case option
     when 1
        list_books
     when 7 
        list_authors
     when 9 
        create_book
     end
     end
end