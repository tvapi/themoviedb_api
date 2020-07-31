class ThemoviedbApi
  class Request
    attr_reader :raw_path, :raw_args, :raw_options

    GET = 'get'.freeze

    def initialize(path:, args: {}, options: {})
      @raw_path = path
      @raw_args = args
      @raw_options = options
    end

    def verb
      GET
    end

    def path
      "/3/#{raw_path}"
    end

    def args
      raw_args
    end

    def options
      raw_options
    end

    def server
      ThemoviedbApi::DEFAULT_SERVER
    end
  end
end
