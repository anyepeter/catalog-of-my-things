require_relative '../app/genre'
require_relative '../app/item'

describe Genre do 
    before (:all) do 
        @genre = Genre.new('Bash')
        @item = Item.new(Date.new(2000,10,10))
    end
context 'Testing the genre class' do 
     
    it 'It should return 1 after passing the name of the genre' do
        expect(@genre.items.length).to eql 0
        @item.genre(@genre)
        expect(@genre.items.length).to eql 1
    end
end
end