require 'json'
require_relative '../app/author'

module Author_logic
    def save_author
        arr = []
        @authors.each do |item|
            arr.push({
              first_name: item.first_name,
              last_name: item.last_name
            })
        end
        File.write('./save_data/author.json', JSON.generate(arr))
     end
    
    
     def load_author
        author = []
            JSON.parse(File.read('./save_data/author.json')).each do |item|
                author.push(Author.new(item['first_name'], item['last_name']))
            end
     author
    end
end