class ThemoviedbApi::Configuration < ThemoviedbApi::Base
  # Get API Configuration
  def find
    get('configuration').params(api_key: api_key).response
  end

  # Get Configuration
  def countries
    get('configuration/countries').params(api_key: api_key).response
  end

  # Get Jobs
  def jobs
    get('configuration/jobs').params(api_key: api_key).response
  end

  # Get Languages
  def languages
    get('configuration/languages').params(api_key: api_key).response
  end

  # Get Primary Translations
  def primary_translations
    get('configuration/primary_translations').params(api_key: api_key).response
  end

  # Get Timezones
  def timezones
    get('configuration/timezones').params(api_key: api_key).response
  end
end
