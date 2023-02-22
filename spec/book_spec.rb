require_relative '../app/book'

describe Book do
  let(:book) { Book.new(Date.parse('11-11-2010'), 'Mike Smith', 'Good') }

  describe '#initialize' do
    it 'returns true if the book can be archived' do
      expect(book.can_be_archived?).to eql true
    end
  end
end
