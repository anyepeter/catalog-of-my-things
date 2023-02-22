# frozen_string_literal: true

require_relative '../app/source'

describe Source do
  let(:source) { Source.new('Jane') }
  let(:item1) { double('item') }
  let(:item2) { double('item') }

  describe '#initialize' do
    it 'creates a new author object with the correct attributes' do
      expect(source.name).to eq('Jane')
      expect(source.items).to eq([])
    end
  end

  describe '#add_item' do
    it "adds a new item to the source's items array" do
      source.add_item(item1)
      source.add_item(item2)
      expect(source.items.length).to eq(2)
      expect(source.items).to include(item1)
      expect(source.items).to include(item2)
    end
  end
end
