class ThemoviedbApi::Client
  attr_reader :api_key

  def initialize(options = {})
    @api_key = options[:api_key] ? options[:api_key] : ThemoviedbApi::Config.api_key
  end
end
