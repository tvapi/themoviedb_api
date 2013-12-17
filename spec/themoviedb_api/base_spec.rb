require 'spec_helper'

class ExampleClass < TraktApi::Base
end

describe ThemoviedbApi::Base do
  let(:klass) { ExampleClass }
  let(:model) { klass.new(ThemoviedbApi::Client.new) }
end
