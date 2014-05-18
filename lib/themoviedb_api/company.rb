class ThemoviedbApi::Company < ThemoviedbApi::Base
  def find(id, options = {})
    get("company/#{id}").params(options.merge(api_key: api_key)).response
  end

  def movies(id, options = {})
    get("company/#{id}/movies").params(options.merge(api_key: api_key)).response
  end
end
