require 'json'
require_relative '../app/genre'

module GenreLogic
  def save_genre
    arr = []
    @genre.each do |item|
      arr.push({ name: item.name })
    end
    File.write('./save_data/genres.json', JSON.generate(arr))
  end

  def load_genre
    genre = []
    JSON.parse(File.read('./save_data/genres.json')).each do |item|
      genre.push(Genre.new(item['name']))
    end
    genre
  end
end
