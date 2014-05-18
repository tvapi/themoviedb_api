class ThemoviedbApi::Job < ThemoviedbApi::Base
  def list
    get('job/list').params(api_key: api_key).response
  end
end
