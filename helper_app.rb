# frozen_string_literal: true

require_relative './app_require'

class HelperApp
  include BookLogic
  include AuthorLogic
  include GameLogic
  include GenreLogic
  include LabelLogic
  include MovieLogic
  include SourceLogic
  include MusicLogic

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
