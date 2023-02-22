# frozen_string_literal: true

require_relative '../app/game'

describe Game do
  before(:all) do
    @game1 = Game.new(Date.parse('11-11-2000'), true, Date.parse('11-11-2010'))
    @game2 = Game.new(Date.parse('11-11-2000'), true, Date.parse('11-11-2022'))
    @game3 = Game.new(Date.parse('11-11-2023'), true, Date.parse('11-11-2020'))
  end

  describe '#initialize' do
    it 'returns true if the movie can be archived' do
      expect(@game1.can_be_archived?).to eql true
    end
    it 'returns true if the movie can be archived' do
      expect(@game2.can_be_archived?).to eql false
    end
    it "returns false if the movie can't be archived" do
      expect(@game3.can_be_archived?).to eql false
    end
  end
end
