require 'json'
require_relative '../app/music_album'

module MusicLogic
  def save_music_album
    arr = []
    @music_album.each do |music|
      arr.push({
                 title: music.title,
                 publish_date: music.publish_date,
                 on_spotify: music.on_spotify
               })
    end
    File.write('./save_data/music_album.json', JSON.generate(arr))
  end

  def load_music_album
    music = []
    JSON.parse(File.read('./save_data/music_album.json')).each do |item|
      music.push(Music_album.new(item['title'], item['publish_date'], item['on_spotify']))
    end
    music
  end
end
