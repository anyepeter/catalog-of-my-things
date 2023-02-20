require_relative 'item'
class Movie < Item
    def initialize(publish_data, silent)
        super(publish_data)
        @silent = silent
    end

    def can_be_archived?
        if super || @silent = true
            true
            else
                false
            end
    end
end