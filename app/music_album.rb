require_relative 'item'
class MusicAlbum < Item
    def initialize(genre, author, source, label, publish_data, publisher)
        super(genre, author, source, label, publish_data)
        @on_spotify = publisher
    end

    def can_be_archived?
        
    end
end