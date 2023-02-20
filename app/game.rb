require_relative 'item'
class Game < Item
    def initialize(genre, author, source, label, publish_data, multiplayer, last_played_at)
        super(genre, author, source, label, publish_data)
        @multiplayer = multiplayer
        @last_played_at = last_played_at
    end

    def can_be_archived?
        
    end
end