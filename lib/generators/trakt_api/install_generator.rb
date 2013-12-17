module TraktApi
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../../templates', __FILE__)

      desc 'Creates a ThemoviedbApi::Configuration initializer and copy locale files to your application.'
      def copy_initializer
        template 'themoviedb_api.rb', 'config/initializers/themoviedb_api.rb'
      end
    end
  end
end
