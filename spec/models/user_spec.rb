require 'rails_helper'
require 'shoulda/matchers'

describe User do
    it "has an email" do
        user = FactoryGirl.build_stubbed(:a_user)
        expect(user.email).to_not be_nil
    end

    it "has a password" do
        user = FactoryGirl.build_stubbed(:a_user)
        expect(user.password).to_not be_nil
    end

    it "has a name" do
        user = FactoryGirl.build_stubbed(:a_user)
        expect(user.name).to_not be_nil
    end

it { is_expected.to validate_presence_of(:email) }
it { is_expected.to validate_presence_of(:name) }
it { is_expected.to have_many(:boards) }
end