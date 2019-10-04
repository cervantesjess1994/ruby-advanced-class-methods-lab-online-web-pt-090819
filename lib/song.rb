class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    self.all << song
    song
  end

  def self.new_by_name(title)
    song = self.new
    song.name = title
    song
  end

  def self.create_by_name(title)
    song = self.create_by_name
    song.name = title
    song
  end

  def self.find_by_name(song_name)
    @@songs.find{|s| s.name ==  song_name}
    @@songs.find do |s|
      if s.name == song_name
        puts song_name
      else
        false
      end
    end
  end

  def self.find_or_create_by_name

  end

  def alphabetical
    sorted = self.all.sort_by {|song| song.name}
    sorted
  end

  def self.new_from_filename(filename)
    song_array = filename.split(" - ")
    song_array[1] = song_array[1].chomp(".mp3")
    song = self.new_from_filename
    song.name = song_array[1]
    song.artist_name = song_array[0]
    song
  end

  def self.create_from_filename

  end

  def destroy_all
    self.class.clear_all
  end
end
