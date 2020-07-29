class ThemoviedbApi::Genre < ThemoviedbApi::Base
  # Get Movie List
  def movies(options = {})
    get("genre/movies/list").params(options.merge(api_key: api_key)).response
  end

  # Get TV List
  def tvs(options = {})
    get("genre/tv/list").params(options.merge(api_key: api_key)).response
  end
end
