class Board < ActiveRecord::Base
    belongs_to :user
    has_many :pedals
    accepts_nested_attributes_for :pedals

    def setup_id(current_user)
        self.user_id = current_user.id
    end

end
