class Board < ActiveRecord::Base
    belongs_to :user, dependent: :destroy
    has_many :pedals
    validates :title, presence: true
    validates_format_of :audio, with: /https:\/\/soundcloud\.com\//
    validates :instrument, presence: true


    def setup_id(current_user)
        self.user_id = current_user.id
    end

    def getSoundCloud(url)
        track = $client.get('/resolve', :url => url)
        track_id = track.id
    end

end
