require 'json'
require_relative '../app/game'

module Game_logic
    def save_games
        arr = []
        @game.each do |item|
            arr.push({
                name: item.name,
                publish_date: item.publish_date,
                multiplayer: item.multiplayer,
                last_played_at: item.last_played_at
            })
        end
        File.write('./save_data/game.json', JSON.generate(arr))
     end
    
    
     def load_games
        gamess = []
            JSON.parse(File.read('./save_data/game.json')).each do |item|
                gamess.push(Game.new(item['name'], item['publish_date'], item['multiplayer'], item['last_played_at']))
            end
     gamess
    end
end