require_relative '../app/label'
require_relative '../app/item'

describe Label do
  before(:all) do
    @label = Label.new('Rapper', 'red')
    @item = Item.new(Date.parse('10-10-2000'))
  end

  context 'testing the label class' do
    it 'should return zero since no label exist yet' do
      expect(@label.items.length).to eql 0
      @item.author(@label)
      expect(@label.items.length).to eql 1
    end
  end
end
