class ThemoviedbApi::Authentication < ThemoviedbApi::Base
  # Create Guest Session
  # read more: https://developers.themoviedb.org/3/authentication/create-guest-session
  def guest_session_new
    get("authentication/guest_session/new").params(api_key: api_key).response
  end

  # Create Request Token
  # read more: https://developers.themoviedb.org/3/authentication/create-request-token
  def token_new
    get("authentication/token/new").params(api_key: api_key).response
  end

  # Create Session
  # read more: https://developers.themoviedb.org/3/authentication/create-session
  def session_new(request_token)
    post("authentication/session/new").params(api_key: api_key, request_token: request_token).response
  end

  # Create Session With Login
  # read more: https://developers.themoviedb.org/3/authentication/validate-request-token
  def token_validate_with_login(username, password, request_token)
    post("authentication/token/validate_with_login")
      .params(api_key: api_key, username: username, password: password, request_token: request_token).response
  end

  # Delete Session
  # read more: https://developers.themoviedb.org/3/authentication/delete-session
  def delete_session(session_id)
    delete("authentication/session").params(api_key: api_key, session_id: session_id).response
  end
end
