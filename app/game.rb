require_relative 'item'
class Game < Item
    attr_accessor :publish_date, :multiplayer, :last_played_at, :name
    def initialize(name, publish_date, multiplayer, last_played_at)
        super(publish_date)
        @name = name
        @multiplayer = multiplayer
        @last_played_at = last_played_at
    end

    def can_be_archived?
        super && (Time.now.year - @last_played_at.year > 2)
    end
end