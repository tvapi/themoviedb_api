class ThemoviedbApi::Certifications < ThemoviedbApi::Base
  def movie_list
    get('certification/movie/list').params(api_key: api_key).response
  end
end
