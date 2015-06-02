require 'rails_helper'
require 'shoulda/matchers'

describe Board do
    it "has a title" do
        board = FactoryGirl.build_stubbed(:a_board)
        expect(board.title).to_not be_nil
    end

    it "has an instrument" do
        board = FactoryGirl.build_stubbed(:a_board)
        expect(board.instrument).to_not be_nil
    end

it { is_expected.to validate_presence_of(:title) }
it { is_expected.to validate_presence_of(:instrument) }
it { is_expected.to have_many(:pedals) }
end