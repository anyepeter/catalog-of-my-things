require_relative './app/book'

class App 
     def initialize
        @books = []
     end

     def create_book 
        puts 'enter the publish date int the format(0000,00,00):'
        publish_date = gets.chomp.to_i
        puts 'publisher:'
        publisher = gets.chomp
        puts 'cover state'
        cover_state = gets.chomp
        book = Book.new(publish_date = Date.new(publish_date), publisher, cover_state)
        @books.push(book)
        puts 'books created'
     end

     def function(option)
     case option
     when 9 
        create_book
     end
     end
end