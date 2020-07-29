class ThemoviedbApi::Credit < ThemoviedbApi::Base
  # Get Details
  def find(id, options = {})
    get("credit/#{id}").params(options.merge(api_key: api_key)).response
  end
end
