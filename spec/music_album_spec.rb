require_relative '../app/music_album'

describe MusicAlbum do
  before(:all) do
    @album1 = MusicAlbum.new(Date.parse('11-11-2020'), true)
    @album2 = MusicAlbum.new(Date.parse('11-11-2000'), true)
    @album3 = MusicAlbum.new(Date.parse('11-11-2000'), false)
  end

  describe '#initialize' do
    it 'returns true if the movie can be archived' do
      expect(@album1.can_be_archived?).to eql false
    end
    it 'returns true if the movie can be archived' do
      expect(@album2.can_be_archived?).to eql true
    end
    it "returns false if the movie can't be archived" do
      expect(@album3.can_be_archived?).to eql false
    end
  end
end
