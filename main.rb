require_relative 'app'
class Main 
    def application
        puts 'Welcome to my catalog'
        puts ''
        app = App.new
        option = nil
        while option != 13 do 
           puts  '1 - List all books'
          puts '2 - List all music albums'
          puts '3 - List all movies'
          puts '4 - List of games'
          puts '5 - List all genres'
          puts '6 - List all labels'
          puts '7 - List all authors'
          puts '8 - List all sources'
          puts '9 - Add a book'
          puts '10 - Add a music album'
          puts '11 - Add a movie'
          puts '12 - Add a game'
          puts '13 - Exit'
          puts ' '
            option = gets.chomp.to_i
            app.function(option)
        end
        puts 'thanks for using this app'
    end
end

main = Main.new
main.application