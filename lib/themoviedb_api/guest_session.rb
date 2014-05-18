class ThemoviedbApi::GuestSession < ThemoviedbApi::Base
  def rated_movies(guest_session_id, options = {})
    get("guest_session/#{guest_session_id}/rated_movies").params(options.merge(api_key: api_key)).response
  end
end
