class ThemoviedbApi::Response
  def initialize(faraday_response)
    @faraday_response = faraday_response
  end

  def env
    @faraday_response.env
  end

  def status
    @faraday_response.status
  end

  def headers
    @faraday_response.headers
  end

  def body
    @body ||= @faraday_response.body
  end

  def inspect
    body.inspect
  end
end
