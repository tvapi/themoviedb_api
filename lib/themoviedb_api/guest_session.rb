class ThemoviedbApi::GuestSession < ThemoviedbApi::Base
  # Get Rated Movies
  def rated_movies(guest_session_id, options = {})
    get("guest_session/#{guest_session_id}/rated/movies").params(options.merge(api_key: api_key)).response
  end

  # Get Rated TV Shows
  def rated_movies(guest_session_id, options = {})
    get("guest_session/#{guest_session_id}/rated/tv").params(options.merge(api_key: api_key)).response
  end

  # Get Rated TV Episodes
  def rated_movies(guest_session_id, options = {})
    get("guest_session/#{guest_session_id}/rated/tv/episodes").params(options.merge(api_key: api_key)).response
  end
end
