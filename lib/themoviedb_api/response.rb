class ThemoviedbApi
  class Response
    attr_reader :status, :headers, :body, :data

    def initialize(status:, headers:, body:)
      @status = status
      @headers = headers
      @body = body

      parse_body
    end

    private

    def parse_body
      @data = JSON.parse(body)
    rescue
      nil
    end
  end
end
