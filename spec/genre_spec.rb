require_relative '../app/genre'

describe Genre do
  let(:genre) { Genre.new('Hip-Hop') }
  let(:item1) { double('item') }
  let(:item2) { double('item') }

  describe '#initialize' do
    it 'creates a new author object with the correct attributes' do
      expect(genre.name).to eq('Hip-Hop')
      expect(genre.items).to eq([])
    end
  end

  describe '#add_item' do
    it "adds a new item to the author's items array" do
      genre.add_item(item1)
      genre.add_item(item2)
      expect(genre.items.length).to eq(2)
      expect(genre.items).to include(item1)
      expect(genre.items).to include(item2)
    end
  end
end
