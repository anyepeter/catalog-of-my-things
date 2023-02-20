require_relative '../app/author'
require_relative '../app/item'

describe  Author do
     
    before (:all) do
       @author = Author.new('abas', 'peter') 
       @item = Item.new(Date.new(2000,10,10))
    end

    context 'It should return the first and last name of the author' do
       it 'It should return the first and last name of the author' do
        expect(@author.items.length).to eql 0
        @item.author(@author)
        expect(@author.items.length).to eql 1
    end
    end

    
end