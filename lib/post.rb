class Post 
  attr_accessor :title, :author 
class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
@@ -12,4 +19,4 @@ def author_name
      nil
    end
  end
end 