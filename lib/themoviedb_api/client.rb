class ThemoviedbApi::Client
  attr_reader :api_key

  def initialize(options = {})
    @api_key = options[:api_key] ? options[:api_key] : ThemoviedbApi::Config.api_key
  end

  def account
    @account ||= ThemoviedbApi::Account.new(self)
  end

  def authentication
    @authentication ||= ThemoviedbApi::Authentication.new(self)
  end

  def certification
    @certification ||= ThemoviedbApi::Certification.new(self)
  end

  def collection
    @collection ||= ThemoviedbApi::Collection.new(self)
  end

  def configuration
    @configuration ||= ThemoviedbApi::Configuration.new(self)
  end
end
