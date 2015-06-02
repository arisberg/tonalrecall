require 'rails_helper'
require 'shoulda/matchers'

describe Knob do
    it "has a name" do
        knob = FactoryGirl.build_stubbed(:a_knob)
        expect(knob.name).to_not be_nil
    end

    it "has a value" do
        knob = FactoryGirl.build_stubbed(:a_knob)
        expect(knob.value).to_not be_nil
    end

end