require 'httparty'
require 'uri_template'

class ThemoviedbApi::Base
  include HTTParty
  base_uri 'https://api.themoviedb.org/3//'

  def initialize(client)
    @client = client
    @params = {}
  end

  def get(uri)
    @uri_template = URITemplate.new(uri)

    self
  end

  def params(options)
    @params = options

    self
  end

  def response
    @uri_template ? self.class.get(uri, body: @params) : nil
  end

  def prepare_uri
    @uri_template ? @uri_template.expand(@params.merge(api_key: @client.api_key)) : nil
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
end
