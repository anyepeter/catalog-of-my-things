require 'date'

class Item
    attr_accessor :archived
    attr_reader :genre, :author, :label

    def initialize(publish_date, archived: false)
        @id = Random.rand(1..1000)
        @publish_date = publish_date
        @archived = archived
    end

    def add_category(category)
        instance_variable_set("@#{category.class.to_s.downcase}", category)
        category.add_item(self)
    end

    def can_be_archived?
        (Time.now.year - @publish_date.year) > 10
    end

    def move_to_archive
        @archived = can_be_archived?
    end
end