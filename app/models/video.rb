class Video < ActiveRecord::Base
    belongs_to :user

    has_attached_file :video, :styles => {
        :mp4 => { :format => "mp4", :streaming => true },
        :ogg => { :format => "ogv" },
        :thumb => { :geometry => "100x100#", :format => "jpg", :time => 4 }
        }, :processors => [:ffmpeg]
    validates_attachment_content_type :video, :content_type => /\Avideo\/.*\Z/
end
