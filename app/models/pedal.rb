class Pedal < ActiveRecord::Base
    belongs_to :board
    has_many :knob
end
