require 'rubygems'
require 'bundler/setup'
require 'coveralls'
Coveralls.wear!

require 'themoviedb_api'

ThemoviedbApi::Config.configure do |config|
end

class SampleModel
  def auth
    self
  end

  def get(uri)
    self
  end

  def params(options = {})
    self
  end

  def response
  end
end

RSpec.configure do |config|
end
