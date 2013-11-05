require 'spec_helper'

describe Item do

  it { should belong_to(:menu) }

  let(:item_attributes) {
    { name: "Ice cream pills", price: 595, description: "Ben and Jerry's Cherry Garcia at 3x times the regular density!" }
  }

  context "#save" do
    let(:item) { Item.new }

    it "raises an error if no name or price is provided" do
      expect { item.save! }.to raise_error
    end

    it "creates a new item when name, price, and description is provided" do
      item.name = item_attributes[:name]
      item.price = item_attributes[:price]
      item.description = item_attributes[:description]
      expect { item.save! }.to change(Item, :count).by(1)
      expect(Item.last.name).to eql(item_attributes[:name])
    end
  end
end