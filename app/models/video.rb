class Video < ActiveRecord::Base
    belongs_to :user

    has_attached_file :video, :styles => {
        :mp4 => { :format => "mp4", :streaming => true, :convert_options => {:output => {:"profile:v"  => "baseline", :level => "3.0", :crf => 18, :vcodec => "libx264", :ab => "192k" }} },
        :ogg => { :format => "ogv", :convert_options => {:output => {:"qscale:v" => 7, :ab => "192k" }} },
        :thumb => { :geometry => "100x100#", :format => "jpg", :time => 4 }
        }, :processors => [:ffmpeg]

    process_in_background :video    

    validates_attachment_content_type :video, :content_type => /\Avideo\/.*\Z/
end
