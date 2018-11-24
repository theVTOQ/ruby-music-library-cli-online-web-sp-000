class MusicLibraryController
  attr_accessor :path, :music_importer

  def initialize(path = "./db/mp3s")
    @path = path
    @music_importer = MusicImporter.new(@path)
  end

  def import
end
