require 'tumblr/random_image/version'

module Tumblr
  module RandomImage
    def random_image(blog_name, options = {})
      options[:offset] = random_offset(blog_name)
      options[:limit] = 1
      posts(blog_name, options)['posts'][0]['photos'][0]['original_size']['url']
    end

    private

    def last(blog_name, options = {})
      options[:limit] = 1
      posts(blog_name, options)
    end

    def random_offset(blog_name, options = {})
      total_posts = last(blog_name, options)['total_posts']
      rand(1..total_posts).round
    end
  end
end

module Tumblr
  class Client
    prepend Tumblr::RandomImage
  end
end
