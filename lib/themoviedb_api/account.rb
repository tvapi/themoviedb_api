class ThemoviedbApi::Account < ThemoviedbApi::Base
  # Get Details
  def find(session_id)
    get('account').params(api_key: api_key, session_id: session_id).response
  end

  # Get Created Lists
  def lists(id, session_id, options = {})
    get("account/#{id}/lists").params(options.merge(api_key: api_key, session_id: session_id)).response
  end

  # Get Favorite Movies
  def favorite_movies(id, session_id, options = {})
    get("/account/#{id}/favorite/movies").params(options.merge(api_key: api_key, session_id: session_id)).response
  end

  # Get Favorite TV Shows
  def favorite_tv(id, session_id, options = {})
    get("/account/#{id}/favorite/tv").params(options.merge(api_key: api_key, session_id: session_id)).response
  end

  # Mark as Favorite
  def favorite(id, session_id, options = {})
    post("/account/#{id}/favorite").params(options.merge(api_key: api_key, session_id: session_id)).response
  end

  # Get Rated Movies
  def rated_movies(id, session_id, options = {})
    get("/account/#{id}/rated/movies").params(options.merge(api_key: api_key, session_id: session_id)).response
  end

  # Get Rated TV Shows
  def rated_tv(id, session_id, options = {})
    get("/account/#{id}/rated/tv").params(options.merge(api_key: api_key, session_id: session_id)).response
  end

  # Get Rated TV Episodes
  def rated_tv(id, session_id, options = {})
    get("/account/#{id}/rated/tv/episodes").params(options.merge(api_key: api_key, session_id: session_id)).response
  end

  # Get Movie Watchlist
  def watchlist_movies(id, session_id, options = {})
    get("/account/#{id}/watchlist/movies").params(options.merge(api_key: api_key, session_id: session_id)).response
  end

  # Get TV Show Watchlist
  def watchlist_tv(id, session_id, options = {})
    get("/account/#{id}/watchlist/tv").params(options.merge(api_key: api_key, session_id: session_id)).response
  end

  # Add to Watchlist
  def watchlist(id, session_id, options = {})
    post("/account/#{id}/watchlist").params(options.merge(api_key: api_key, session_id: session_id)).response
  end
end
