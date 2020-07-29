class ThemoviedbApi::Discover < ThemoviedbApi::Base
  # Movie Discover
  def movie(options = {})
    get("discover/movie").params(options.merge(api_key: api_key)).response
  end

  # TV Discover
  def tv(options = {})
    get("discover/tv").params(options.merge(api_key: api_key)).response
  end
end
