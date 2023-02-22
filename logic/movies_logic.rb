require 'json'
require_relative '../app/movie'

module MovieLogic
  def save_movie
    arr = []
    @movie.each do |element|
      arr.push({
                 name: element.name,
                 publish_date: element.publish_date,
                 silent: element.silent
               })
    end
    File.write('./save_data/movies.json', JSON.generate(arr))
  end

  def load_movie
    film = []
    JSON.parse(File.read('./save_data/movies.json')).each do |item|
      film.push(Movie.new(item['name'], item['publish_date'], item['silent']))
    end
    film
  end
end
