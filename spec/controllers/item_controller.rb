require 'spec_helper'

describe ItemsController do

  context "create items in a menu" do

    let(:item_attributes) {
      { name: "Ice cream pills", price: 595, description: "Ben and Jerry's Cherry Garcia at 3x times the regular density!" }
    }

    let(:menu_attributes) {
      { name: "Apollo 13" }
    }

    it "should create a new item thats associated with a menu" do

    end
  end
end
