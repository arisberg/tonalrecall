class Board < ActiveRecord::Base
    belongs_to :user, dependent: :destroy
    has_many :pedals


    def setup_id(current_user)
        self.user_id = current_user.id
    end

    def getSoundCloud(url)
        track = $client.get('/resolve', :url => url)
        track_id = track.id
    end

end
