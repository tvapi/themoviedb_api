class ThemoviedbApi::Certification < ThemoviedbApi::Base
  # Get Movie Certifications
  def movie_list
    get('certification/movie/list').params(api_key: api_key).response
  end

  # Get TV Certifications
  def tv_list
    get('certification/tv/list').params(api_key: api_key).response
  end
end
