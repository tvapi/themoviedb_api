class ThemoviedbApi::Account < ThemoviedbApi::Base
  def find(session_id)
    get('account').params(api_key: api_key, session_id: session_id).response
  end

  def lists(id, session_id, options = {})
    get("account/#{id}/lists").params(options.merge(api_key: api_key, session_id: session_id)).response
  end

  def favourite_movies(id, session_id, options = {})
    get("/account/#{id}/favorite/movies").params(options.merge(api_key: api_key, session_id: session_id)).response
  end

  def favourite_tv(id, session_id, options = {})
    get("/account/#{id}/favorite/tv").params(options.merge(api_key: api_key, session_id: session_id)).response
  end

  def favourite(id, session_id, options = {})
    post("/account/#{id}/favorite").params(options.merge(api_key: api_key, session_id: session_id)).response
  end

  def rated_movies(id, session_id, options = {})
    get("/account/#{id}/rated/movies").params(options.merge(api_key: api_key, session_id: session_id)).response
  end

  def rated_tv(id, session_id, options = {})
    get("/account/#{id}/rated/tv").params(options.merge(api_key: api_key, session_id: session_id)).response
  end

  def watchlist_movies(id, session_id, options = {})
    get("/account/#{id}/watchlist/movies").params(options.merge(api_key: api_key, session_id: session_id)).response
  end

  def watchlist_tv(id, session_id, options = {})
    get("/account/#{id}/watchlist/tv").params(options.merge(api_key: api_key, session_id: session_id)).response
  end

  def watchlist(id, session_id, options = {})
    post("/account/#{id}/watchlist").params(options.merge(api_key: api_key, session_id: session_id)).response
  end
end
