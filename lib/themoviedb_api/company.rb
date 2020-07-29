class ThemoviedbApi::Company < ThemoviedbApi::Base
  # Get Details
  def find(id, options = {})
    get("company/#{id}").params(options.merge(api_key: api_key)).response
  end

  # Get Alternative Names
  def alternative_names(id, options = {})
    get("company/#{id}/alternative_names").params(options.merge(api_key: api_key)).response
  end

  # Get Images
  def images(id, options = {})
    get("company/#{id}/images").params(options.merge(api_key: api_key)).response
  end
end
