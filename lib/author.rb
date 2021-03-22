class Author
    #has an attr_accessor for name
    attr_accessor :name

    #is initialized with a name
    def initialize(name)
        @name = name
    end

    #has many posts
    def posts
        Post.all.select {|post| post.author == self}
    end

    #takes in an argument of a post and 
    #associates that post with the author by telling the post that it belongs to that author
    def add_post(post)
        post.author = self
    end

    #takes in an argument of a post title, 
    #creates a new post with it and 
    #associates the post and author
    def add_post_by_title(post_title)
        post = Post.new(post_title)
        post.author = self
    end

    #is a class method that returns the total number of posts associated to all existing authors
    def self.post_count
        Post.all.count
    end
end