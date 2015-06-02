class Knob < ActiveRecord::Base
    belongs_to :pedal, dependent: :destroy
end
