require 'integration_spec_helper'

describe ThemoviedbApi::Configuration do
  let(:model) { ThemoviedbApi::Configuration.new(ThemoviedbApi::Client.new) }

  describe 'real request' do
    describe '.find' do
      it 'should return response class' do
        puts model.find.inspect
        #model.settings.class.should == HTTParty::Response
      end
    end
  end
end
