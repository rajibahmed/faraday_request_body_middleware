# FaradayRequestBodyMiddleware

A really simple gem which adds the ability to save the request body for a Faraday request.
You may find this useful if you are using the ActiveSupport instrumentation and want to
log the request body for whatever reason.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'faraday_request_body_middleware'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install faraday_request_body_middleware

## Usage

Add the `:save_request_body` middleware when you set up a Faraday connection. e.g.

```ruby
Faraday.new(...) do |conn|
  conn.request :save_request_body
end
```

then, you can access this in the Faraday env hash under `:request_body`. For example,

```ruby
ActiveSupport::Notifications.subscribe('request.faraday') do |name, starts, ends, _, env|
  puts env[:request_body]
end
```

## Contributing

1. Fork it ( https://github.com/ctaintor/faraday_request_body_middleware/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
