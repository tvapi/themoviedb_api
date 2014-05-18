class ThemoviedbApi::Authentication < ThemoviedbApi::Base
  def token_new
    get('authentication/token/new').params(api_key: api_key).response
  end

  def token_validate_with_login(request_token, username, password)
    get('authentication/token/new').
      params(api_key: api_key, request_token: request_token, username: username, password: password).response
  end

  def session_new(request_token)
    get('authentication/session/new').params(api_key: api_key, request_token: request_token).response
  end

  def guest_session_new
    get('authentication/guest_session/new').params(api_key: api_key).response
  end
end
