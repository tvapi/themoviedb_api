class ThemoviedbApi::Authentication < ThemoviedbApi::Base
  # Create Guest Session
  def guest_session_new
    get('authentication/guest_session/new').params(api_key: api_key).response
  end

  # Create Request Token
  def token_new
    get('authentication/token/new').params(api_key: api_key).response
  end

  # Create Session
  def session_new(request_token)
    get('authentication/session/new').params(api_key: api_key, request_token: request_token).response
  end

  # Create Session With Login
  def session_with_login_new(username, password, request_token)
    get('/authentication/token/validate_with_login')
      .params(api_key: api_key, username: username, password: password, request_token: request_token).response
  end

  # Delete Session
  def delete_session(id)
    delete('/authentication/session')
      .params(api_key: api_key, session_id: id).response
  end
end
