class ThemoviedbApi::Collection < ThemoviedbApi::Base
  def find(id, options = {})
    get("collection/#{id}").params(options.merge(api_key: api_key)).response
  end

  def images(id, options = {})
    get("collection/#{id}/images").params(options.merge(api_key: api_key)).response
  end
end
