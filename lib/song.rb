class Song 
  attr_accessor :name, :artist 
class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
@@ -12,4 +19,4 @@ def artist_name
      nil
    end
  end
end 