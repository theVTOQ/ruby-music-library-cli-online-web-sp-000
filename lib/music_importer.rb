class MusicImporter
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir["#{@path}/*.mp3"].collect do |file|
      full_path = file
    end
  end

  def import 
    
  end
end
