class ThemoviedbApi::Configuration < ThemoviedbApi::Base
  def find
    get('configuration').params(api_key: api_key).response
  end
end
