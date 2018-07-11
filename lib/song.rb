 class Song 
  @@count = 0
  

  
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
    
  end
  
  def self.count
    @@count
  end

  @@genres = []
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    @@genres.inject(hash.new(0)) { |total, i| total[i] += 1 ;total}
  end
  
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end

  @@artists = []
  
  def self.artist_count
     @@artists.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
  end
  
  def self.artists
    @@artists.uniq
  end
  
  attr_accessor :name, :artist, :genre
  
end



# Song.count
# Song.artists
# Song.assert_genres
# Song.genre_count
# Song.artist_count
