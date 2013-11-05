require 'spec_helper'

describe MenusController do

  context "new menu form" do

    it "should have a form to create a new menu" do
      get :new
      expect(response).to render_template(:new)
    end
  end

  context "create menu" do
    let(:menu_attributes) {
      { name: "Apollo 13" }
    }

    it "should create a new menu with valid info" do
      expect {
        post :create, { menu: menu_attributes }
        }.to change(Menu, :count).by(1)
    end
  end

end