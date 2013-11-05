require 'spec_helper'

describe Menu do

  it { should have_many(:items) }
  it { should validate_uniqueness_of(:name) }

  let(:menu_attributes) {
    { name: "Voyager" }
  }

  context "#save" do
    let(:menu) { Menu.new }

    it "raises an error if no name is provided" do
      expect { menu.save! }.to raise_error
    end

    it "creates a new menu when name is provided" do
      menu.name = menu_attributes[:name]
      expect { menu.save! }.to change(Menu, :count).by(1)
      expect(Menu.last.name).to eql(menu_attributes[:name])
    end
  end
end

