require_relative '../app/item'

describe Item do
  before(:all) do
    @item = Item.new(Date.parse('31-12-2010'))
  end
  context 'testing the item class' do
    it 'It should return false' do
      expect(@item.can_be_archived?).to eql true
    end

    it 'It should return true if the can_be_archived method is true' do
      expect(@item.archived).to eql false
      @item.move_to_archive
      expect(@item.archived).to eql true
    end
  end
end
