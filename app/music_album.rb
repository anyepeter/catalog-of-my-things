require_relative 'item'

class Music_album < Item
    attr_accessor :on_spotify, :title

    def initialize(title, publish_data, on_spotify)
        super(publish_data)
        @on_spotify = on_spotify
        @title = title
    end

    def can_be_archived?
       super && @on_spotify
    end
end