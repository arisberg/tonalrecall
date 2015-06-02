require 'rails_helper'
require 'shoulda/matchers'

describe Pedal do
    it "has a name" do
        pedal = FactoryGirl.build_stubbed(:a_pedal)
        expect(pedal.name).to_not be_nil
    end

    it "has a brand" do
        pedal = FactoryGirl.build_stubbed(:a_pedal)
        expect(pedal.brand).to_not be_nil
    end

    it "has an effect" do
        pedal = FactoryGirl.build_stubbed(:a_pedal)
        expect(pedal.effect).to_not be_nil
    end

it { is_expected.to validate_presence_of(:name) }
it { is_expected.to validate_presence_of(:brand) }
it { is_expected.to have_many(:knobs) }
end