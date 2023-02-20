require 'date'

class item
    def initialize(genre, author, source, label, publish_date)
        @id = Random.rand(1..1000)
        @genre = genre
        @author = author
        @source = source
        @label = label
        @publish_date = publish_date
        @archived = true
    end

    def can_be_archived?(date)
        @publish_date < date
    end

    def move_to_archive

    end
end