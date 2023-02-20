require_relative '../app/book'

describe Book do 

    before (:all) do
        cover_state = 'bad'
        publisher = 'abas'
        publish_date = Date.new(2020,10,10)
      @book = Book.new(publish_date, publisher, cover_state)

      cover_state_one = 'Good'
      @book_two = Book.new(publish_date, publisher, cover_state_one)
    end

    context 'Testing the Book class' do 
        it 'should return true' do 
         expect(@book.can_be_archived?).to eql true
        end
        it 'Should return false' do 
            expect(@book_two.can_be_archived?).to eql false
        end
    end
end