require_relative 'app'

class Main
  def application
    puts 'Welcome to my catalog'
    puts ' '
    app = App.new
    option = nil
    app.load_data
    while option != 13
      puts "1 - List all books \n2 - List all music albums \n3 - List all movies
4 - List of games \n5 - List all genres \n6 - List all labels \n7 - List all authors
8 - List all sources \n9 - Add a book \n10 - Add a music album \n11 - Add a movie
12 - Add a game \n13 - Exit \n\n"
      option = gets.chomp.to_i
      if option < 9
        app.list(option)
      else
        app.add(option)
      end
      app.save_data
    end
    puts 'thanks for using this app'
  end
end

main = Main.new
main.application
