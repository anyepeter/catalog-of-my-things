require_relative 'item'
class Movie < Item
    def initialize(genre, author, source, label, publish_data, publisher)
        super(genre, author, source, label, publish_data)
        @silet = publisher
    end

    def can_be_archived?
        
    end
end