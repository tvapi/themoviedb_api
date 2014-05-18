class ThemoviedbApi::Genre < ThemoviedbApi::Base
  def list(options = {})
    get("genre/list").params(options.merge(api_key: api_key)).response
  end

  def movies(id, options = {})
    get("genre/#{id}/movies").params(options.merge(api_key: api_key)).response
  end
end
