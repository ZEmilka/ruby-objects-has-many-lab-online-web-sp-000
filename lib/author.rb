class Author

  attr_accessor :name
  @@count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def self.count
    @@count
  end

  def add_post(post_title)
    @posts << post_title
    post_title.author = self
    @@count += 1
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    @posts << post
    post.author = self
    @@count += 1
  end
