require_relative 'item'

class MusicAlbum < Item
    attr_accessor :on_spotify

    def initialize(publish_data, on_spotify)
        super(publish_data)
        @on_spotify = on_spotify
    end

    def can_be_archived?
       super && @on_spotify
    end
end