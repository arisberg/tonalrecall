class Pedal < ActiveRecord::Base
    belongs_to :board, dependent: :destroy
    has_many :knobs

    validates :name, presence: true
    validates :effect, presence: true
    validates :brand, presence: true

    accepts_nested_attributes_for :knobs

end
