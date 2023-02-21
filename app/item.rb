require 'date'

class Item
    attr_accessor :author, :archived
    attr_reader :genre, :author, :label

    def initialize(publish_date, archived: false)
        @id = Random.rand(1..1000)
        @publish_date = publish_date
        @archived = archived
    end

    def genre(genre)
        @genre = genre
        @genre.add_item(self)
    end

    def label(label)
        @label = label
        @label.add_item(self)
    end

    def author(author)
        @author = author
        @author.add_item(self)
    end

    def source(source)
        @source = source
        @source.add_item(self)
    end

    def can_be_archived?
        Time.now.year - @publish_date.year > 10
    end

    def move_to_archive
        if can_be_archived?
            @archived = true
        end
    end
end