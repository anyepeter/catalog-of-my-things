require_relative 'item'
class Book < Item
    attr_accessor :publisher, :cover_state
    def initialize(publish_data, publisher, cover_state)
        super(publish_data)
        @publisher = publisher
        @cover_state = cover_state
    end

    def can_be_archived?
        if super || cover_state == 'bad'
            true
        else 
            false
        end
    end
end