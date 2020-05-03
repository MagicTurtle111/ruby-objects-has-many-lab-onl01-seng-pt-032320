require 'pry'

class Author
  attr_accessor :name

  @@post_count = 0
  @@all = []

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_post(post)
    self.posts << post
    post.author = self
    @@post_count +=1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    self.posts << post
    post.author = self
    @@post_count +=1
  end

  def posts
    @posts
    Post.all.select {|post| post.author == self}
  end

  def self.post_count
    @@post_count
    Post.all.count
  end
end