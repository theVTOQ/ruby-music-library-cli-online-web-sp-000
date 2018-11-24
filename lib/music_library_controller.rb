class MusicLibraryController
  attr_accessor :path, :music_importer

  def initialize(path = "./db/mp3s")
    @path = path
    @music_importer = MusicImporter.new(@path)
    @music_importer.import
  end

  def call
    puts "Welcome to your music library!"
    puts "To list all of your songs, enter 'list songs'."
    puts "To list all of the artists in your library, enter 'list artists'."
    puts "To list all of the genres in your library, enter 'list genres'."
    puts "To list all of the songs by a particular artist, enter 'list artist'."
    puts "To list all of the songs of a particular genre, enter 'list genre'."
    puts "To play a song, enter 'play song'."
    puts "To quit, type 'exit'."
    puts "What would you like to do?"
    input = gets.downcase
    while input != "exit"
      case input
      when "songs"
        count = 1
        Song.all.sort!{}.each do |song| 
          puts song.name
          count += 1
        end
      when "artists"
        Artist.all.each{|artist| puts artist.name}
      when "genres"
        Genre.all.each{|genre| puts genre.name}
      when "list artist"
        puts "Type the artist's name."
        artist_name = gets
        Artist.find_by_name(artist_name)
      when "list genre"

      when "play song"

      end
    end
  end
end
