require_relative '../app/author'

describe Author do
  let(:author) { Author.new("Jane", "Doe") }
  let(:item1) { double("item") }
  let(:item2) { double("item") }

  describe "#initialize" do
    it "creates a new author object with the correct attributes" do
      expect(author.first_name).to eq("Jane")
      expect(author.last_name).to eq("Doe")
      expect(author.items).to eq([])
    end
  end

  describe "#add_item" do
    it "adds a new item to the author's items array" do
      author.add_item(item1)
      author.add_item(item2)
      expect(author.items.length).to eq(2)
      expect(author.items).to include(item1)
      expect(author.items).to include(item2)
    end
  end
end
