class ThemoviedbApi::Keyword < ThemoviedbApi::Base
  # Get Details
  def find(id)
    get("keyword/#{id}").params(api_key: api_key).response
  end

  # Get Movies
  def movies(id, options = {})
    get("keyword/#{id}").params(options.merge(api_key: api_key)).response
  end
end
