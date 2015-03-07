# Tumblr::RandomImage

Get random images from tumblrs.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tumblr-random_image'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tumblr-random_image

## Usage

```ruby
client = Tumblr::Client.new

client.random_image("shinchokudodesuka.tumblr.com")
# => "http://40.media.tumblr.com/fb58d237c91fda8e448cae5ed068ecf2/tumblr_mqnw8emZ3n1sckns5o1_1280.jpg"
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/tumblr-random_image/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
