# PAPERCLIP SPOOF VALIDATOR DISABLER 6100
# If, by some miracle, this makes it to production, remove this bit

require 'paperclip/media_type_spoof_detector'
module Paperclip
  class MediaTypeSpoofDetector
    def spoofed?
      false
    end
  end
end
