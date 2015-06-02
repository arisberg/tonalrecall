require "rails_helper"

describe BoardsController, :type => :controller do
    let!(:good_board){Board.create(title: "Test", audio: "https://soundcloud.com/xavierwulf/sets/xavier-wulf-project-x-full-cd", instrument: "Guitar")}


    let!(:bad_board){Board.create(title: nil, audio: 'google.com', instrument: nil)}


    it "succesfully loads show" do
        get :show, id: good_board.id
        expect(response).to be_success
    end

    it "renders the show template" do
        get :show, id: good_board.id
        expect(response).to render_template(:show)
    end

end