# frozen_string_literal: true

require 'json'
require_relative '../app/book'

module BookLogic
  def save_books
    arr = []
    @books.each do |book|
      arr.push({
                 title: book.title,
                 publish_date: book.publish_date,
                 publisher: book.publisher,
                 cover_state: book.cover_state
               })
    end
    File.write('./save_data/books.json', JSON.generate(arr))
  end

  def load_books
    books = []
    JSON.parse(File.read('./save_data/books.json')).each do |book|
      books.push(Book.new(book['title'], book['publish_date'], book['publisher'], book['cover_state']))
    end
    books
  end
end
