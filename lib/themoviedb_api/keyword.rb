class ThemoviedbApi::Keyword < ThemoviedbApi::Base
  def find(id)
    get("keyword/#{id}").params(api_key: api_key).response
  end

  def movies(id, options = {})
    get("keyword/#{id}").params(options.merge(api_key: api_key)).response
  end
end
