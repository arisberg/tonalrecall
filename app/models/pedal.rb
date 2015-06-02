class Pedal < ActiveRecord::Base
    belongs_to :board, dependent: :destroy
    has_many :knobs

    accepts_nested_attributes_for :knobs

end
