class ThemoviedbApi::Changes < ThemoviedbApi::Base
  # Get Movie Change List
  def movie_changes(options = {})
    get('movie/changes').params(options.merge(api_key: api_key)).response
  end

  # Get TV Change List
  def tv_changes(options = {})
    get('tv/changes').params(options.merge(api_key: api_key)).response
  end

  # Get Person Change List
  def person_changes(options = {})
    get('person/changes').params(options.merge(api_key: api_key)).response
  end
end
