require 'confiture'

class ThemoviedbApi::Config
  include Confiture::Configuration

  confiture_allowed_keys(:api_key, :adapter)
  confiture_defaults(adapter: :net_http)
end
