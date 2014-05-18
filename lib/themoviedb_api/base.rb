require 'faraday'
require 'uri_template'

class ThemoviedbApi::Base
  def initialize(client)
    @client = client
    @params = {}
  end

  def connection
    @connection ||= Faraday.new(url: base_url) do |builder|
      builder.adapter ThemoviedbApi::Config.adapter
    end
  end

  def store_uri(uri)
    @uri_template = URITemplate.new(uri)
  end

  def get(uri)
    store_uri(uri)
    @method = :get
    self
  end

  def post(uri)
    store_uri(uri)
    @method = :post
    self
  end

  def params(options)
    @params = options
    self
  end

  def response(klass = ThemoviedbApi::Response)
    assert_uri_template
    klass.new(connection.send(@method, uri, @params))
  end

  def prepare_uri
    assert_uri_template
    @uri_template.expand(@params.merge(api_key: api_key))
  end

  def url
    "#{base_url}#{uri}"
  end

  def uri
    uri = prepare_uri
    @params.reject!{ |param| restful_param_keys(uri).include?(param.to_s) }

    uri
  end

  def restful_param_keys(uri_expanded)
    @uri_template.extract(uri_expanded).keys
  end

  def api_key
    @client.api_key
  end

  private

  def assert_uri_template
    raise "Path doesn't exists, use get(path) to setup path for request" unless @uri_template
  end

  def base_url
    'https://api.themoviedb.org/3/'
  end
end
