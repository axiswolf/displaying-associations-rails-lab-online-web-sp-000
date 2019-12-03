class Song < ActiveRecord::Base
  belongs_to :artist

  def song_count
    @artist = Artist.find(params[:id])
    @artist.songs.count
  end

end
