require "rails_helper"

describe UsersController, :type => :controller do
    let!(:valid_attributes) do
        {name: "Test", email: "Test@test.com", password: "testing"}
    end

    let!(:invalid_attributes) do
        {name: nil, email: nil, password: "testing"}
    end

    it "should get new page for users" do
        get :new
        expect(response).to have_http_status(:success)
        expect(response).to render_template(:new)
    end

    it "assigns a new user to variable User" do
        get :new
        expect(assigns(:user)).to be_a(User)
    end

    it "adds a user" do
        expect{post :create, user: valid_attributes}.to change(User, :count).by(1)
    end

    it "doesn't add invalid users" do
        expect{post :create, user: invalid_attributes}.to change(User, :count).by(0)
    end
end