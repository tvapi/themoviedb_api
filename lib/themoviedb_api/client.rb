class ThemoviedbApi::Client
  attr_reader :api_key

  def initialize(options = {})
    @api_key = options[:api_key] ? options[:api_key] : ThemoviedbApi::Config.api_key
  end

  def configuration
    @configuration ||= ThemoviedbApi::Search.new(self).find
  end
end
