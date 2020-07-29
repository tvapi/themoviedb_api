require 'integration_spec_helper'

describe ThemoviedbApi::Configuration do
  let(:model) { ThemoviedbApi::Configuration.new(ThemoviedbApi::Client.new) }

  describe 'real request' do
    describe '.find' do
      xit 'should return response class' do
        model.find.class.should == ThemoviedbApi::Response
      end
    end
  end
end
