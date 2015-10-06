require "faraday_request_body_middleware/version"

module FaradayRequestBodyMiddleware
  class Middleware < Faraday::Middleware
    def call(env)
      env[:request_body] = env[:body]
      @app.call(env)
    end
  end
end

Faraday::Request.register_middleware save_request_body: FaradayRequestBodyMiddleware::Middleware
