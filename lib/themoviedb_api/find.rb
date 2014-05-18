class ThemoviedbApi::Find < ThemoviedbApi::Base
  def find(id, external_source, options = {})
    get("find/#{id}").params(options.merge(api_key: api_key, external_source: external_source)).response
  end
end
