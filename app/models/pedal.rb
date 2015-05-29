class Pedal < ActiveRecord::Base
    belongs_to :board
    has_many :knobs

    accepts_nested_attributes_for :knobs
end
