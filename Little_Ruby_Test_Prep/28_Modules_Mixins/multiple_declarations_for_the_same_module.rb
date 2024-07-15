require_relative "low_quality"
require_relative "high_quality"

class Song
  include Downloadable
end

song = Song.new
puts song.download_low_quality
puts song.download_high_quality