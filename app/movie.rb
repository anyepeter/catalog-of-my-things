require_relative 'item'
class Movie < Item
    def initialize(publish_date, silent)
        super(publish_date)
        @silent = silent
    end

    def can_be_archived?
        super || @silent
    end
end