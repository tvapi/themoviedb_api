require "faraday"

class ThemoviedbApi
  module HTTPService
    class << self
      attr_accessor :faraday_middleware, :http_options

      private

      def faraday_options(options)
        valid_options = %i[
          request proxy ssl builder url parallel_manager params
          headers builder_class
        ]
        Hash[options.select { |key, _| valid_options.include?(key) }]
      end
    end

    self.http_options ||= {}

    DEFAULT_MIDDLEWARE = proc do |builder|
      builder.adapter Faraday.default_adapter
    end

    def self.make_request(request)
      connection = Faraday.new(
        request.server, faraday_options(request.options),
        &(faraday_middleware || DEFAULT_MIDDLEWARE)
      )
      response = connection.send(request.verb, request.path, request.args)
      Marvel::Api::Response.new(
        status: response.status.to_i, headers: response.headers,
        body: response.body
      )
    end
  end
end
