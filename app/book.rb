require_relative 'item'
class Book < Item
    def initialize(genre, author, source, label, publish_data, publisher, cover_state)
        super(genre, author, source, label, publish_data)
        @publisher = publisher
        @cover_state = cover_state
    end

    def can_be_archived?
        
    end
end