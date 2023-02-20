require_relative 'item'
class Game < Item
    def initialize(publish_data, multiplayer, last_played_at)
        super(publish_data)
        @multiplayer = multiplayer
        @last_played_at = last_played_at
    end

    def can_be_archived?
        last_date = Time.now.year - @last_played_at.year > 2
        if super && last_date
            true 
        else 
            false
        end
    end
end