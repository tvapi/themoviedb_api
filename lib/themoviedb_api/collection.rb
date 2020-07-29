class ThemoviedbApi::Collection < ThemoviedbApi::Base
  # Get Details
  def find(id, options = {})
    get("collection/#{id}").params(options.merge(api_key: api_key)).response
  end

  # Get Images
  def images(id, options = {})
    get("collection/#{id}/images").params(options.merge(api_key: api_key)).response
  end

  # Get Translations
  def translations(id, options = {})
    get("collection/#{id}/translations").params(options.merge(api_key: api_key)).response
  end
end
