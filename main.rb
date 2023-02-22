# frozen_string_literal: true

require_relative 'app'

class Main
  def application
    puts "Welcome to my catalog\n\n"
    @app = App.new
    option = nil
    @app.load_data
    while option != 13
      selection_list
      option = gets.chomp.to_i
      case option
      when 1..4
        list1(option)
      when 5..8
        list2(option)
      else
        add(option)
      end
      @app.save_data
    end
    puts 'thanks for using this app'
  end

  def selection_list
    puts "1 - List all books \n2 - List all music albums \n3 - List all movies
4 - List of games \n5 - List all genres \n6 - List all labels \n7 - List all authors
8 - List all sources \n9 - Add a book \n10 - Add a music album \n11 - Add a movie
12 - Add a game \n13 - Exit \n\n"
  end

  def list1(option)
    case option
    when 1
      @app.list_books
    when 2
      @app.list_music_album
    when 3
      @app.list_movies
    when 4
      @app.list_games
    end
  end

  def list2(option)
    case option
    when 5
      @app.list_genre
    when 6
      @app.list_label
    when 7
      @app.list_authors
    when 8
      @app.list_source
    end
  end

  def add(option)
    case option
    when 9
      @app.create_book
    when 10
      @app.add_music_album
    when 11
      @app.add_movies
    when 12
      @app.add_game
    end
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
end

main = Main.new
main.application
