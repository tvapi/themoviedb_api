class ThemoviedbApi::Changes < ThemoviedbApi::Base
  def movie_changes(options = {})
    get('movie/changes').params(options.merge(api_key: api_key)).response
  end

  def person_changes(options = {})
    get('person/changes').params(options.merge(api_key: api_key)).response
  end

  def tv_changes(options = {})
    get('tv/changes').params(options.merge(api_key: api_key)).response
  end
end
