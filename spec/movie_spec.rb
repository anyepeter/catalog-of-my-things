require_relative '../app/movie'

describe Movie do
  before(:all) do
    @movie1 = Movie.new(Date.parse('11-11-2020'), true)
    @movie2 = Movie.new(Date.parse('11-11-2000'), false)
    @movie3 = Movie.new(Date.parse('11-11-2023'), false)
  end

  describe '#initialize' do
    it 'returns true if the movie can be archived' do
      expect(@movie1.can_be_archived?).to eql true
    end
    it 'returns true if the movie can be archived' do
      expect(@movie2.can_be_archived?).to eql true
    end
    it "returns false if the movie can't be archived" do
      expect(@movie3.can_be_archived?).to eql false
    end
  end
end
