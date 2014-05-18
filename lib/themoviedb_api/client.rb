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

  def company
    @company ||= ThemoviedbApi::Company.new(self)
  end

  def credit
    @creadit ||= ThemoviedbApi::Credit.new(self)
  end

  def configuration
    @configuration ||= ThemoviedbApi::Configuration.new(self)
  end

  def discover
    @discover ||= ThemoviedbApi::Discover.new(self)
  end

  def find
    @find ||= ThemoviedbApi::Find.new(self)
  end

  def genre
    @genre ||= ThemoviedbApi::Genre.new(self)
  end

  def guest_session
    @guest_session ||= ThemoviedbApi::GuestSession.new(self)
  end

  def job
    @job ||= ThemoviedbApi::Job.new(self)
  end
end
